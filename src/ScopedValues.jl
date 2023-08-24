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

Base.eltype(::Type{ScopedValue{T}}) where {T} = T

abstract type AbstractScope end

struct DefaultScope <: AbstractScope end
const default = DefaultScope()
parent(::DefaultScope) = default # To avoid Union{Nothing, AbstractScope}
depth(::DefaultScope) = 0 # To avoid Union{Nothing, AbstractScope}
haskey(::DefaultScope, val::ScopedValue) = true
Base.getindex(::DefaultScope, val::ScopedValue) = val.initial_value

"""
    current_scope()::AbstractScope

Return the current dynamic scope.
"""
function current_scope end

# If we wanted to be really fancy we could implement Scope,
# as Ctrie
mutable struct Scope <: AbstractScope
    const parent::AbstractScope
    const depth::Int
    const key::ScopedValue
    const value::Any
    Scope(parent, key::ScopedValue{T}, value::T) where T = new(parent, depth(parent)+1, key, value)
end
Scope(parent, key::ScopedValue{T}, value) where T =
    Scope(parent, key, convert(T, value))

parent(scope::Scope) = scope.parent
depth(scope::Scope) = scope.depth
haskey(scope::Scope, val::ScopedValue) = scope.key == val
function Base.getindex(scope::Scope, ::ScopedValue{T}) where T
    scope.value::T
end

mutable struct DictScope <: AbstractScope
    const parent::AbstractScope
    const depth::Int
    const values::IdDict{ScopedValue, Any}
    DictScope(parent, values) = new(parent, depth(parent)+1, values)
end

parent(scope::DictScope) = scope.parent
depth(scope::DictScope) = scope.depth
haskey(scope::DictScope, val::ScopedValue) = Base.haskey(scope.values, val)
function Base.getindex(scope::DictScope, val::ScopedValue{T}) where T
    scope.values[val]::T
end

function collapse(scope)
    values = IdDict{ScopedValue, Any}()
    while scope !== default
        if scope isa Scope
            if !Base.haskey(values, scope.key)
                values[scope.key] = scope.value
            end
        elseif scope isa DictScope
            for (key, value) in scope.values
                if !Base.haskey(values, key)
                    values[key] = value
                end
            end
        end
        scope = parent(scope)
    end
    return DictScope(DefaultScope(), values)
end


function Base.show(io::IO, scope::AbstractScope)
    print(io, typeof(scope), "()")
end

# Is this the correct way? I want to force union-split on haskey/getindex
# for large
Base.Experimental.@max_methods 255 function lookup end

@inline function lookup(val::ScopedValue{T})::T where T
    scope = current_scope()
    while true
        if haskey(scope, val)
            return scope[val]
        end
        scope = parent(scope)
    end
    @assert false
end

@inline Base.getindex(val::ScopedValue) = lookup(val)

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
    if depth(scope) >= 64 # measure cutof
        scope = collapse(scope)
    end
    enter_scope(scope) do
        f()
    end
end

scoped(f) = f()

include("payloadlogger.jl")

end # isdefined

end # module ScopedValues
