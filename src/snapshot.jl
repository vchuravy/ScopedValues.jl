abstract type Snapshot end

struct LocalSnapshot
    values::Vector{Pair{ScopedValue, Any}}
end
LocalSnapshot(values::ScopedValue...) = LocalSnapshot(map(v->v => v[], values))

function restore(snapshot::LocalSnapshot)
    scope = nothing
    for (var, val) in snapshot.values
        scope = Scope(scope, var, val)
    end
    return scope
end

struct GlobalRef
    m::Module
    name::Symbol
end

struct LazySnapshot
    values::Vector{Pair{GlobalRef, Any}}
end
LazySnapshot(variables::NTuple{N,GlobalRef}) where N = 
    LazySnapshot([var => getfield(var.m, var.name)[] for var in variables])

macro snapshot(exprs...)
    values = map(expr -> GlobalRef(__module__, expr), exprs)
    :($(LazySnapshot)($(values)))
end

function restore(snapshot::LazySnapshot)
    scope = nothing
    for (var, val) in snapshot.values
        scope = Scope(scope,  getfield(var.m, var.name), val)
    end
    return scope
end

function scoped(f, snapshot::Snapshot)
    @nospecialize
    scope = restore(snapshot)
    enter_scope(f, scope)
end