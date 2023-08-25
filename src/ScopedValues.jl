module ScopedValues

export ScopedValue, scoped

if isdefined(Base, :ScopedValues)
    import Base.ScopedValues: ScopedValue, scoped, Scope, current_scope
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
end
Base.hash(sv::ScopedValue) = objectid(sv)

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

"""
    current_scope()::Union{Nothing, Scope}

Return the current dynamic scope.
"""
function current_scope end

function Base.show(io::IO, scope::Scope)
    print(io, Scope, "(")
    seen = Set{ScopedValue}()
    while scope !== nothing
        if scope.key ∉ seen
            if !isempty(seen)
                print(io, ", ")
            end
            print(io, typeof(scope.key), "@")
            show(io, Base.objectid(scope.key))
            print(io, " => ")
            show(IOContext(io, :typeinfo => eltype(scope.key)), scope.value)
            push!(seen, scope.key)
        end
        scope = scope.parent
    end
    print(io, ")")
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
    show(IOContext(io, :typeinfo => eltype(var)), var[])
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

include("payloadlogger.jl")

end # isdefined

end # module ScopedValues
