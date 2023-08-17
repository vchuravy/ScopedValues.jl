using Test
using ScopedVariables

@testset "errors" begin
    var = ScopedVariable(1)
    @test_throws MethodError var[] = 2
    scoped() do
        @test_throws MethodError var[] = 2
    end
end

const gvar = ScopedVariable(1)
@testset "inheritance" begin
    @test gvar[] == 1
    scoped() do
        @test gvar[] == 1
        scoped() do
            @test gvar[] == 1
        end
        scoped(gvar => 2) do
            @test gvar[] == 2
        end
        @test gvar[] == 1
    end
    @test gvar[] == 1
end

const gvar_float = ScopedVariable(1.0)

@testset "multiple scoped variables" begin
    scoped(gvar => 2, gvar_float => 2.0) do
        @test gvar[] == 2
        @test gvar_float[] == 2.0
    end
end

import Base.Threads: @spawn
@testset "tasks" begin
    @test fetch(@spawn begin
        gvar[]
    end) == 1
    scoped(gvar => 2) do
        @test fetch(@spawn begin
            gvar[]
        end) == 2
    end
end

function nth_scoped(f, n)
    if n <= 0
        f()
    else
        scoped() do
            nth_scoped(f, n-1)
        end
    end
end

@testset "nested scoped" begin
    @testset for depth in 1:16
        nth_scoped(depth) do
            @test gvar_float[] == 1.0
        end
        scoped(gvar_float=>2.0) do
            nth_scoped(depth) do
                @test gvar_float[] == 2.0
            end
        end
        nth_scoped(depth) do
            scoped(gvar_float=>2.0) do
                @test gvar_float[] == 2.0
            end
        end
    end
    scoped(gvar_float=>2.0) do
        nth_scoped(ScopedVariables.CACHE_BREAKEVEN) do
            @test gvar_float[] == 2.0
            scoped(gvar_float => 3.0) do
                @test gvar_float[] == 3.0
            end
        end
    end
end