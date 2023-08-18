using Test
using ScopedValues

@testset "errors" begin
    var = ScopedValue(1)
    @test_throws MethodError var[] = 2
    scoped() do
        @test_throws MethodError var[] = 2
    end
end

const gvar = ScopedValue(1)
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

const gvar_float = ScopedValue(1.0)

@testset "multiple scoped values" begin
    scoped(gvar => 2, gvar_float => 2.0) do
        @test gvar[] == 2
        @test gvar_float[] == 2.0
    end
end

emptyf() = nothing

@testset "conversion" begin
    scoped(emptyf, gvar_float=>2)
    @test_throws MethodError scoped(emptyf, gvar_float=>"hello")
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
        nth_scoped(15) do
            @test gvar_float[] == 2.0
            scoped(gvar_float => 3.0) do
                @test gvar_float[] == 3.0
            end
        end
    end
end
