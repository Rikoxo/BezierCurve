using Test
using BezierCurve

@testset "Bezier Functions" begin
    @test Bernstein(2, 1, 0.5) ≈ 0.5
    tx, ty = BezierPlot([0, 1], [0, 1])
    @test length(tx) == 200
    @test length(ty) == 200
end
