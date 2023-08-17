module ScopedVariables

export ScopedVariable, scoped

if isdefined(Base, :ScopedVariables)
    import Base.ScopedVariables: ScopedVariable, scoped
else

mutable struct Scope
    const parent::Union{Nothing, Scope}
    const cache::WeakKeyDict{Any,Any}
    Scope(parent) = new(parent, WeakKeyDict{Any,Any}())
end

"""
    ScopedVariable(x)

Create a container that propagates values across scopes.
Use [`scope`](@ref) to create a new scope.
"""
mutable struct ScopedVariable{T}
    const values::WeakKeyDict{Scope, T}
    const initial_value::T
    ScopedVariable(initial_value::T) where {T} = new{T}(WeakKeyDict{Scope, T}(), initial_value)
end

Base.eltype(::Type{ScopedVariable{T}}) where {T} = T

function Base.getindex(var::ScopedVariable{T})::T where T
    scope = current_scope()
    if scope === nothing
        return var.initial_value
    end
    cache = scope.cache
    @lock cache begin
        if haskey(cache.ht, var)
            return cache.ht[var]::T
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
    # Auto-locks, if we race we will still be consistent.
    cache[var] = val
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

end # isdefined

end # module ScopedVariables
