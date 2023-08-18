# To run
# using ScopedValues, PkgBenchmark
# result = benchmarkpkg(ScopedValues)
# export_markdown("perf.md", result)

using BenchmarkTools
using ScopedValues

const SUITE = BenchmarkGroup()

const svar = ScopedValue(1)

const depth = ScopedValue(0)
function nth_scoped(f, n)
    if n <= 0
        f()
    else
        scoped(depth => n) do
            nth_scoped(f, n-1)
        end
    end
end

emptyf() = nothing

SUITE["BASIC"] = BenchmarkGroup()
SUITE["BASIC"]["unscoped"] = @benchmarkable svar[]
SUITE["BASIC"]["scoped"] = @benchmarkable scoped(emptyf)
SUITE["BASIC"]["scoped with assignment"] = @benchmarkable scoped(emptyf, svar => 2)
SUITE["BASIC"]["scoped with assignment & ref"] = @benchmarkable scoped(()->svar[], svar => 2)

function setup_scope(N)
    scope = ScopedValues.Scope(nothing)
    for i in 1:N
        scope = ScopedValues.Scope(scope)
        @atomic scope.values = ScopedValues.ImmutableDict{ScopedValue, Any}(depth, i)
    end

    current_task().logstate = Base.CoreLogging.LogState(ScopedValues.ScopePayloadLogger(
        ScopedValues.current_logger(), scope))
    return nothing
end

SUITE["DEPTH"] = BenchmarkGroup()
for depth in 1:32
    SUITE["DEPTH"]["emtpyf, depth=$depth"] = @benchmarkable nth_scoped(emptyf, $depth)
    SUITE["DEPTH"]["scope + access, depth=$depth"] = @benchmarkable nth_scoped(()->svar[], $depth)
    SUITE["DEPTH"]["access, depth=$depth"] = @benchmarkable svar[] setup=setup_scope($depth)
end
