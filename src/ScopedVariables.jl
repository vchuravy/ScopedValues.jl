module ScopedVariables

export ScopedVariable, scoped
const CACHE_BREAKEVEN = 5

if isdefined(Base, :ScopedVariables)
    import Base.ScopedVariables: ScopedVariable, scoped
else

"""
    ScopedVariable(x)

Create a container that propagates values across scopes.
Use [`scoped`](@ref) to create and enter a new scope.

Values can only be set when entering a new scope,
and the value referred to will be constant during the
execution of a scope.

Dynamic scopes are propagated across tasks.

# Examples
```jldoctest
julia> const svar = ScopedVariable(1);

julia> svar[]
1

julia> scoped(svar => 2) do
           svar[]
       end
2
```
"""
mutable struct ScopedVariable{T}
    const initial_value::T
    ScopedVariable{T}(initial_value) where {T} = new{T}(initial_value)
end
ScopedVariable(initial_value::T) where {T} = ScopedVariable{T}(initial_value)

Base.eltype(::Type{ScopedVariable{T}}) where {T} = T

mutable struct ScopeCache
    const key::ScopedVariable
    const value::Any
    @atomic next::Union{Nothing, ScopeCache}
end

mutable struct Scope
    const parent::Union{Nothing, Scope}
    # Split values and cache so that we don't need to hold the lock
    # while doing a scope-walk
    const values::IdDict{<:ScopedVariable, Any}
    @atomic cache::Union{Nothing, ScopeCache}
    Scope(parent) = new(parent, IdDict{ScopedVariable, Any}(), nothing)
end

function check_cache(scope::Scope, key::ScopedVariable{T}) where T
    cache = @atomic :acquire scope.cache
    if cache === nothing
        return nothing
    end
    if cache.key === key
        return Some(cache.value::T)
    end
    return nothing
end

function insert_cache!(scope::Scope, key::ScopedVariable{T}, value::T) where T
    old = @atomic :acquire scope.cache
    new = ScopeCache(key, value, old)
    success = false
    while !success
        @atomic new.next = old
        old, success = @atomicreplace :acquire_release :acquire scope.cache old => new
    end
    return nothing
end

function Base.show(io::IO, ::Scope)
    print(io, Scope)
end

function Base.getindex(var::ScopedVariable{T})::T where T
    cs = scope = current_scope()
    if scope === nothing
        return var.initial_value
    end
    val = check_cache(cs, var)
    if val !== nothing
        return something(val)
    end

    val = var.initial_value
    while scope !== nothing
        if haskey(scope.values, var)
            val = scope.values[var]::T
            break
        end
        scope = scope.parent
    end
    if scope !== cs
        # found the value in an upper scope, copy it down to the cache.
        insert_cache!(cs, var, val)
    end
    return val
end
    
function Base.show(io::IO, var::ScopedVariable)
    print(io, ScopedVariable)
    print(io, '{', eltype(var), '}')
    print(io, '(')
    show(io, var[])
    print(io, ')')
end

function __set_var!(scope::Scope, var::ScopedVariable{T}, val::T) where T
    # internal function!
    @assert !haskey(scope.values, var)
    scope.values[var] = val
end

"""
    scoped(f, var::ScopedVariable{T} => val::T)

Execute `f` in a new scope with `var` set to `val`.
"""
function scoped(f, pair::Pair{<:ScopedVariable{T}, T}) where T
    enter_scope() do
        scope = current_scope()
        __set_var!(scope, pair...)
        f()
    end
end

function scoped(f, pairs::Pair{<:ScopedVariable}...)
    # This is valid, but also cheating
    # if length(pairs) == 0
    #     return f()
    # end
    enter_scope() do
        scope = current_scope()
        for (var, val) in pairs
            __set_var!(scope, var, val)
        end
        f()
    end
end

include("payloadlogger.jl")

end # isdefined

end # module ScopedVariables
