module ScopedVariables

export ScopedVariable, scoped

mutable struct Scope
    const parent::Union{Nothing, Scope}
    Scope() = new(nothing)
    Scope(parent) = new(parent)
end

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
