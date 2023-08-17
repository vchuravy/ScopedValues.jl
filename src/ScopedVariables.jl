module ScopedVariables

export ScopedVariable, scoped

mutable struct Scope
    const parent::Union{Nothing, Scope}
    Scope() = new(nothing)
    Scope(parent) = new(parent)
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
    ScopedVariable(initial_value::T) where T = new{T}(WeakKeyDict{Scope, T}(), initial_value)
end

Base.eltype(::Type{ScopedVariable{T}}) where {T} = T

function Base.show(io::IO, var::ScopedVariable)
    print(io, ScopedVariable)
    print(io, '{', eltype(var), '}')
    print(io, '(')
    show(io, var[])
    print(io, ')')
end

include("payloadlogger.jl")

"""
    scoped(f, var::ScopedVariable{T}, val::T)

Execute `f` in a new scope with `var` set to `val`.
"""
function scoped(f, var::ScopedVariable{T}, val::T) where T
    scoped() do
        var[] = val
        f()
    end
end

function Base.getindex(var::ScopedVariable)
    scope = current_scope()
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

function Base.setindex!(var::ScopedVariable{T}, val::T) where T
    scope = current_scope()
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

end # module ScopedVariables
