using Test
using BezierCurve

@testset "Intersection Functions" begin
    xp1 = [0, 1, 2]
    yp1 = [0, 2, 0]
    xp2 = [0, 1, 2]
    yp2 = [2, 0, 2]
    intersections = FindIntersection(xp1, yp1, xp2, yp2)
    @test length(intersections) > 0
end
