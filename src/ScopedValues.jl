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

Base.eltype(::Type{ScopedValue{T}}) where {T} = T

# If we wanted to be really fancy we could implement Scope,
# as Ctrie
mutable struct Scope
    const parent::Union{Nothing, Scope}
    const key::ScopedValue
    const value::Any
    Scope(parent, key::ScopedValue{T}, value::T) where T = new(parent, key, value)
end
Scope(parent, key::ScopedValue{T}, value) where T =
    Scope(parent, key, convert(T, value))

function Base.show(io::IO, ::Scope)
    print(io, Scope)
end

function Base.getindex(var::ScopedValue{T})::T where T
    scope = current_scope()
    while scope !== nothing
        if scope.key === var
            return scope.value::T
        end
        scope = scope.parent
    end
    return var.initial_value
end

function Base.show(io::IO, var::ScopedValue)
    print(io, ScopedValue)
    print(io, '{', eltype(var), '}')
    print(io, '(')
    show(io, var[])
    print(io, ')')
end

"""
    scoped(f, var::ScopedValue{T} => val::T)

Execute `f` in a new scope with `var` set to `val`.
"""
function scoped(f, pair::Pair{<:ScopedValue}, rest::Pair{<:ScopedValue}...)
    scope = current_scope()
    scope = Scope(scope, pair...)
    for pair in rest
        scope = Scope(scope, pair...)
    end
    enter_scope(scope) do
        f()
    end
end

scoped(f) = f()

include("snapshot.jl")

include("payloadlogger.jl")

end # isdefined


end # module ScopedValues
