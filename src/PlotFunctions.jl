module PlotFunctions

using Plots
import ..BezierFunctions: BezierPlot
import ..IntersectionFunctions: FindIntersection

export plot_curves_with_intersections

function plot_curves_with_intersections(
    xp1::AbstractVector{<:Real},
    yp1::AbstractVector{<:Real},
    xp2::AbstractVector{<:Real},
    yp2::AbstractVector{<:Real};
    tolerance::Real = 0.05,
    max_iter::Int = 50
)
    fig = plot([], [], label="Bezier Curves", size=(600, 600), xlims=(-5, 5), ylims=(-5, 5))

    tx1, ty1 = BezierPlot(xp1, yp1)
    tx2, ty2 = BezierPlot(xp2, yp2)

    plot!(fig, tx1, ty1, label="Bezier Curve 1", color="blue")
    plot!(fig, tx2, ty2, label="Bezier Curve 2", color="red")

    scatter!(fig, xp1, yp1, label="Control Points Curve 1", color="blue", marker=:circle)
    scatter!(fig, xp2, yp2, label="Control Points Curve 2", color="red", marker=:circle)

    intersections = FindIntersection(xp1, yp1, xp2, yp2; tolerance, max_iter)

    for (x, y) in intersections
        scatter!(fig, [x], [y], label="Intersection", color="black", marker=:star)
    end

    display(fig)
end

end # module
