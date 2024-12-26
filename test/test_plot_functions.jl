using Test
using BezierCurve

@testset "Plot Functions" begin
    xp1 = [0, 1, 2]
    yp1 = [0, 2, 0]
    xp2 = [0, 1, 2]
    yp2 = [2, 0, 2]
    @testset "Plot Bezier curves with intersections" begin
        @test :plot_curves_with_intersections in names(BezierCurve.PlotFunctions, all=true)

    end
end
