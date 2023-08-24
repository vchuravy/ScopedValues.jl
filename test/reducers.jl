import Base.Threads: @spawn
import ScopedValues: Reducer, split, join!

function splitting_reduce(op::Op, arr::Array{T}, initf=()->zero(T); grainsize=16) where {T, Op}
    if length(arr) <= grainsize
        return reduce(op, arr; init=initf()::T)
    end
    reducer = ScopedValue(Reducer(op, initf))

    function reduce_impl(arr, range, grainsize)
        if length(range) <= grainsize
            reducer[][] = reduce(op, view(arr, range); init=initf()::T)
            return
        end
        midpoint = length(range) ÷ 2
        range_a = first(range):(first(range)+midpoint)
        range_b = (first(range)+midpoint+1):last(range)

        @sync begin
            @spawn split(reducer) do 
                reduce_impl(arr, range_a, grainsize)
            end
            reduce_impl(arr, range_b, grainsize)
        end
    end
    reduce_impl(arr, 1:length(arr), grainsize)
    return reducer[][]
end

@test splitting_reduce(+, ones(1024)) == 1024