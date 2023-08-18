module ScopedValues

export ScopedValue, scoped

if isdefined(Base, :ScopedValues)
    import Base.ScopedValues: ScopedValue, scoped
else

"""
    ScopedValue(x)

Create a container that propagates values across scopes.
Use [`scoped`](@ref) to create and enter a new scope.

Values can only be set when entering a new scope,
and the value referred to will be constant during the
execution of a scope.

Dynamic scopes are propagated across tasks.

# Examples
```jldoctest
julia> const svar = ScopedValue(1);

julia> svar[]
1

julia> scoped(svar => 2) do
           svar[]
       end
2
```
"""
mutable struct ScopedValue{T}
    const initial_value::T
    ScopedValue{T}(initial_value) where {T} = new{T}(initial_value)
end
ScopedValue(initial_value::T) where {T} = ScopedValue{T}(initial_value)
# Base.hash(var::ScopedValue) = Base.objectid(var)
# Base.isequal(a::ScopedValue, b::ScopedValue) = Base.objectid(a) == Base.objectid(b) 

Base.eltype(::Type{ScopedValue{T}}) where {T} = T

# Split Scope and ScopeCache into two separate entities
# Scope is read-only after construction, and ScopeCache is task-local
# thus we are lock-free.

import Base: ImmutableDict

mutable struct Scope
    const parent::Union{Nothing, Scope}
    @atomic values::ImmutableDict{ScopedValue, Any}
    Scope(parent) = new(parent, ImmutableDict{ScopedValue, Any}())
end

function Base.show(io::IO, ::Scope)
    print(io, Scope)
end

@inline function _get(dict::ImmutableDict, key, ::Type{T}) where T
    while isdefined(dict, :parent)
        isequal(dict.key, key) && return Some(dict.value::T)
        dict = dict.parent
    end
    return nothing
end

function Base.getindex(var::ScopedValue{T})::T where T
    scope = current_scope()
    if scope === nothing
        return var.initial_value
    end
    cs = scope

    val = var.initial_value
    while scope !== nothing
        values = @atomic :acquire scope.values
        _val = _get(values, var, T)
        if _val !== nothing
            val = something(_val)
            break
        end
        scope = scope.parent
    end

    if cs != scope
        # found the value in an upper scope, copy it down to the cache.
        success = false
        old = @atomic :acquire cs.values
        while !success
            new = ImmutableDict(old, var => val)
            old, success = @atomicreplace :acquire_release :acquire cs.values old => new
        end
    end

    return val
end
    
function Base.show(io::IO, var::ScopedValue)
    print(io, ScopedValue)
    print(io, '{', eltype(var), '}')
    print(io, '(')
    show(io, var[])
    print(io, ')')
end

function __set_var!(scope::Scope, var::ScopedValue{T}, val::T) where T
    # internal function!
    @assert !haskey(scope.values, var)
    scope.values[var] = val
end

"""
    scoped(f, var::ScopedValue{T} => val::T)

Execute `f` in a new scope with `var` set to `val`.
"""
function scoped(f, pair::Pair{<:ScopedValue}, rest::Pair{<:ScopedValue}...)
    enter_scope() do
        scope = current_scope()
        dict = ImmutableDict{ScopedValue, Any}(pair...) 
        for pair in rest
            dict = ImmutableDict{ScopedValue, Any}(dict, pair...)
        end
        @atomic :release scope.values = dict
        f()
    end
end

scoped(f) = f()

include("payloadlogger.jl")

end # isdefined

end # module ScopedValues
