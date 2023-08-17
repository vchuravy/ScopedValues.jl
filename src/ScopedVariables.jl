module ScopedVariables

export ScopedVariable, scoped

mutable struct Scope
    const parent::Union{Nothing, Scope}
    Scope() = new(nothing)
    Scope(parent) = new(parent)
end


mutable struct ScopedVariable{T}
    const lock::Base.Threads.SpinLock
    const values::WeakKeyDict{Scope, T}
    const initial_value::T
    ScopedVariable(initial_value::T) where T = new{T}(Base.Threads.SpinLock(), WeakKeyDict{Scope, T}(), initial_value)
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
    @lock var.lock begin
        while scope !== nothing
            if haskey(var.values, scope)
                return var.values[scope]
            end
            scope = scope.parent
        end
    end
    return var.initial_value
end

function Base.setindex!(var::ScopedVariable{T}, val::T) where T
    scope = current_scope()
    @lock var.lock begin
        # DECISION: Should we error if already set?
        var.values[scope] = val
    end
end

end # module ScopedVariables
