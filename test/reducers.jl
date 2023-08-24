import Base.Threads: @spawn
import ScopedValues: Reducer, split, join!

# This is not a good example for ScopedValue

function splitting_reduce(op::Op, arr::Array{T}, initf=()->zero(T); grainsize=16) where {T, Op}
    if length(arr) <= grainsize
        return reduce(op, arr; init=initf()::T)
    end
    reducer = Reducer(op, initf)
    splitting_reduce(ScopedValue(reducer), arr, 1:length(arr), grainsize)
    return reducer[]
end

function splitting_reduce(scoped_reducer::ScopedValue{Reducer{T, Op, Init}}, arr, range, grainsize) where {T, Op, Init}
    reducer = scoped_reducer[]
    if length(range) <= grainsize
        reducer[] = reduce(reducer.op, view(arr, range); init=reducer.init()::T)
        return
    end
    midpoint = length(range) ÷ 2
    range_a = first(range):(first(range)+midpoint)
    range_b = (first(range)+midpoint+1):last(range)

    task = @scoped scoped_reducer => split(reducer) begin
        @spawn begin 
            splitting_reduce(scoped_reducer, arr, range_a, grainsize)
            join!(reducer, scoped_reducer[])
        end
    end
    @scoped scoped_reducer => split(reducer) begin
        splitting_reduce(scoped_reducer, arr, range_b, grainsize)
        join!(reducer, scoped_reducer[])
    end
    wait(task)
    return reducer[]
end

@test splitting_reduce(+, ones(1024)) == 1024