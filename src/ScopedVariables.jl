module ScopedVariables

export ScopedVariable, UncachedScopedVariable, scoped

mutable struct Scope
    const parent::Union{Nothing, Scope}
    const depth::UInt
    Scope(parent::Nothing=nothing) = new(parent, 0)
    Scope(parent) = new(parent, max(parent.depth+1, parent.depth))
end

"""
    ScopedVariable(x)

Create a container that propagates values across scopes.
Use [`scope`](@ref) to create a new scope.

# Examples:
```
const var = ScopedVariable(1)
var[] # contains 1

scoped(var, 2) do
    var[] # contains 2
end

scoped() do
    var[] # contains 1, inherited from parent scope
end

scoped() do
    var[] # contains 1
    var[] = 2
    var[] # contains 2
    scoped() do
        var[] # contains 2
    end
end
```
"""
mutable struct ScopedVariable{T}
    const values::WeakKeyDict{Scope, T}
    const initial_value::T
    ScopedVariable(initial_value::T) where {T} = new{T}(WeakKeyDict{Scope, T}(), initial_value)
end

Base.eltype(::Type{ScopedVariable{T}}) where {T} = T

mutable struct ScopeCache
    scope::Scope
    values::WeakKeyDict{<:ScopedVariable,Any}
    ScopeCache(scope::Scope) = new(scope, WeakKeyDict{ScopedVariable,Any}())
end

const TLS_KEY = gensym(:ScopedVariablesTLS)
const CACHE_BREAKEVEN = 5

function Base.getindex(var::ScopedVariable{T})::T where T
    scope = current_scope()
    if scope === nothing
        return var.initial_value
    end
    if scope.depth < CACHE_BREAKEVEN
        @lock var.values begin
            while scope !== nothing
                if haskey(var.values.ht, scope)
                    return var.values.ht[scope]
                end
                scope = scope.parent
            end
        end
        return var.initial_value
    end

    # Is cache complexity worth it? The breakeven should depend on distance of the last set scope value.

    tls = Base.get_task_tls(current_task())
    fresh_cache = !haskey(tls, TLS_KEY)
    if !fresh_cache
        cache = tls[TLS_KEY]::ScopeCache
        if cache.scope != scope
            fresh_cache = true
        end
    end
    if fresh_cache
        cache = ScopeCache(scope)
        tls[TLS_KEY] = cache
    else
        @lock cache.values begin
            if haskey(cache.values.ht, var)
                return cache.values.ht[var]::T
            end
        end
    end

    val = var.initial_value
    @lock var.values begin
        while scope !== nothing
            if haskey(var.values.ht, scope)
                val = var.values.ht[scope]
                break
            end
            scope = scope.parent
        end
    end
    cache.values[var] = val
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
    if scope === nothing
        error("ScopedVariable: Currently not in scope.")
    end
    @lock var.values begin
        if haskey(var.values.ht, scope)
            error("ScopedVariable: Variable is already set for this scope.")
        end
        var.values[scope] = val
    end
end

"""
    scoped(f, var::ScopedVariable{T} => val::T)

Execute `f` in a new scope with `var` set to `val`.
"""
function scoped(f, pair::Pair{<:ScopedVariable{T}, T}) where T
    scoped() do
        scope = current_scope()
        __set_var!(scope, pair...)
        f()
    end
end

function scoped(f, pairs::Pair{<:ScopedVariable}...)
    scoped() do
        scope = current_scope()
        for (var, val) in pairs
            __set_var!(scope, var, val)
        end
        f()
    end
end

include("payloadlogger.jl")

end # module ScopedVariables
