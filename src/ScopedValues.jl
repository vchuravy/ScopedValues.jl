module ScopedValues

export ScopedValue, scoped, @scoped

if isdefined(Base, :ScopedValues)
    import Base.ScopedValues: ScopedValue, scoped, @scoped, Scope, current_scope
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

function Scope(scope, pairs::Pair{<:ScopedValue}...)
    for pair in pairs
        scope = Scope(scope, pair...)
    end
    return scope
end

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
    @nospecialize
    scope = Scope(current_scope(), pair, rest...)
    enter_scope(scope) do
        f()
    end
end

scoped(f) = f()

include("payloadlogger.jl")


import Base.CoreLogging: LogState
"""
    @scoped vars... expr

Macro version of `scoped(f, vars...)` but with `expr` instead of `f` function.
This is similar to using [`scoped`](@ref) with a `do` block, but avoids creating
a closure.
"""
macro scoped(exprs...)
    ex = last(exprs)
    if length(exprs) > 1
        exprs = exprs[1:end-1]
    else
        exprs = ()
    end
    for expr in exprs
        if expr.head !== :call || first(expr.args) !== :(=>)
            error("@scoped expects arguments of the form `A => 2` got $expr")
        end
    end
    exprs = map(esc, exprs)
    ct = gensym(:ct)
    current_logstate = gensym(:current_logstate)
    body = Expr(:tryfinally, esc(ex), :($(ct).logstate = $(current_logstate)))
    quote
        $(ct) = $(Base.current_task)()
        $(current_logstate) = $(ct).logstate::Union{Nothing, LogState}
        scope = $(Scope)($(current_scope)(), $(exprs...))
        if scope !== nothing
            logger = $(ScopePayloadLogger)($(current_logger)(), scope)
            $(ct).logstate = $(LogState)(logger)
        end
        $body
    end
end

end # isdefined

end # module ScopedValues
