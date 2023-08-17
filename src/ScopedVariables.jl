module ScopedVariables

export ScopedVariable, scoped
const CACHE_BREAKEVEN = 5

if isdefined(Base, :ScopedVariables)
    import Base.ScopedVariables: ScopedVariable, scoped
else

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
    const initial_value::T
    ScopedVariable{T}(initial_value) where {T} = new{T}(initial_value)
end
ScopedVariable(initial_value::T) where {T} = ScopedVariable{T}(initial_value)

Base.eltype(::Type{ScopedVariable{T}}) where {T} = T

mutable struct Scope
    const parent::Union{Nothing, Scope}
    # XXX: Probably want this to be an upgradeable RWLock
    const lock::Base.Threads.SpinLock
    # IdDict trades off some potential space savings for performance.
    # IdDict ~60ns; WeakKeyDict ~100ns
    # Space savings would come from ScopedVariables being GC'd.
    # Now we hold onto them until Scope get's GC'd
    const values::IdDict{<:ScopedVariable, Any}
    Scope(parent) = new(parent, Base.Threads.SpinLock(), IdDict{ScopedVariable, Any}())
end

function Base.show(io::IO, ::Scope)
    print(io, Scope)
end

Base.lock(scope::Scope) = lock(scope.lock)
Base.unlock(scope::Scope) = unlock(scope.lock)

function Base.getindex(var::ScopedVariable{T})::T where T
    cs = scope = current_scope()
    val = var.initial_value
    while scope !== nothing
        @lock scope begin
            if haskey(scope.values, var)
                val = scope.values[var]
                break
            end
        end
        scope = scope.parent
    end
    if scope !== cs
        # found the value in an upper scope, copy it down to cache.
        # this is beneficial since in contrast to storing the values in the ScopedVariable
        # we now need to acquire n-Locks for an n-depth scope.
        @lock cs begin
            cs.values[var] = val
        end
    end
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
    @lock scope begin
        if haskey(scope.values, var)
            error("ScopedVariable: Variable is already set for this scope.")
        end
        scope.values[var] = val
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
