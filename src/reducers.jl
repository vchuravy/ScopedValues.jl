mutable struct Reducer{T, Op, Init}
    @atomic value::T
    const op::Op
    const init::Init
end
Reducer(op::Op, init::Init) where {Op, Init} = Reducer(init(), op, init)

Base.getindex(r::Reducer) = r.value
function Base.setindex!(r::Reducer{T, Op}, val::T) where {T, Op}
    _, new = @atomic r.value r.op val
    new
end

split(r::Reducer{T, Op, Init}) where {T, Op, Init} = Reducer(r.init()::T, r.op, r.init)
function join!(r::Reducer{T, Op, Init}, other_r::Reducer{T, Op, Init}) where {T, Op, Init}
    r[] = other_[]
end

function split(f, val::ScopedValue{<:Reducer})
    reducer = split(val[])
    @scoped val => reducer begin
        f()
    end
    join!(val[], reducer)
end