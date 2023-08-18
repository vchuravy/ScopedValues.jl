using BenchmarkTools
using ScopedValues

const svar = ScopedValue(1)

@benchmark $svar[] # 5.4ns

function nth_scoped(f, n)
    if n <= 0
        f()
    else
        scoped() do
            nth_scoped(f, n-1)
        end
    end
end

# base-level about 80ns
scoped(svar => 2) do
    nth_scoped(0) do
        @benchmark $svar[]
    end
end 

# cross-over point
scoped(svar => 2) do
    nth_scoped(5) do
        @benchmark $svar[]
    end
end # 116ns

