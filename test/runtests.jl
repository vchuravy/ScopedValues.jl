using Test
using ScopedVariables

@testset "errors" begin
    var = ScopedVariable(1)
    @test_throws ErrorException var[] = 2
    scoped() do
        var[] = 2
        @test var[] == 2
        @test_throws ErrorException var[] = 3
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
        gvar[] = 2
        scoped() do
            @test gvar[] == 2
            gvar[] = 3
        end
        @test gvar[] == 2
    end
    @test gvar[] == 1
end

import Base.Threads: @spawn
@testset "tasks" begin
    @test fetch(@spawn begin
        gvar[]
    end) == 1
    scoped() do
        gvar[] = 2
        @test fetch(@spawn begin
            gvar[]
        end) == 2
    end
end
