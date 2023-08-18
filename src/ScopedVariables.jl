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
# Base.hash(var::ScopedVariable) = Base.objectid(var)
# Base.isequal(a::ScopedVariable, b::ScopedVariable) = Base.objectid(a) == Base.objectid(b) 

Base.eltype(::Type{ScopedVariable{T}}) where {T} = T

# Split Scope and ScopeCache into two separate entities
# Scope is read-only after construction, and ScopeCache is task-local
# thus we are lock-free.

import Base: ImmutableDict

mutable struct Scope
    const parent::Union{Nothing, Scope}
    values::ImmutableDict{ScopedVariable, Any}
    cache::ScopeCache
    Scope(parent) = new(parent, ImmutableDict{ScopedVariable, Any}(), ScopeCache())
end

mutable struct ScopeCache
    const scope::Scope
    values::ImmutableDict{ScopedVariable, Any}
    ScopeCache(scope) = new(scope, ImmutableDict{ScopedVariable, Any}())
end

const SCOPE_CACHE_TLS = gensym(:SCOPE_CACHE)
function scope_cache(scope)
    tls = task_local_storage()
    new_cache = !haskey(tls, SCOPE_CACHE_TLS)
    if !new_cache
        cache = (@inbounds tls[SCOPE_CACHE_TLS])::ScopeCache
        new_cache = cache.scope != scope
    end
    if new_cache
        cache = ScopeCache(scope)
        tls[SCOPE_CACHE_TLS] = cache
    end
    return cache::ScopeCache
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

function Base.getindex(var::ScopedVariable{T})::T where T
    scope = current_scope()
    if scope === nothing
        return var.initial_value
    end

    cache = scope_cache(scope)
    _val = _get(cache.values, var, T)
    if _val !== nothing
        return something(_val)
    end

    val = var.initial_value
    while scope !== nothing
        _val = _get(scope.values, var, T)
        if _val !== nothing
            val = something(_val)
            break
        end
        scope = scope.parent
    end

    # found the value in an upper scope, copy it down to the cache.
    cache.values = ImmutableDict(cache.values, var => val)

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
        scope.values = ImmutableDict{Any, Any}(pair...)
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
        if length(pairs) > 1
            scope.values = ImmutableDict{Any, Any}(scope.values, pairs...)
            @show scope.values
        end
        f()
    end
end

include("payloadlogger.jl")

end # isdefined

end # module ScopedVariables
