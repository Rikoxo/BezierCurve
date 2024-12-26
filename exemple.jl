using Plots
using BezierCurve


function main()
      # Votre module

    fig = plot([], [], label="Bezier Curves", size=(600, 600), xlims=(-5, 5), ylims=(-5, 5))

    xp1 = (-4, -2, 0, 2, 4)
    yp1 = (0, 3, -2, 1, 0)
    
    xp2 = (-4, -1, 1, 3, 4)
    yp2 = (1, 2, 3, -1, 0)

    tx1, ty1 = BezierPlot(xp1, yp1)
    tx2, ty2 = BezierPlot(xp2, yp2)

    plot!(fig, tx1, ty1, label="Bezier Curve 1", color="blue")
    plot!(fig, tx2, ty2, label="Bezier Curve 2", color="red")

    scatter!(fig, xp1, yp1, label="Control Points Curve 1", color="blue", marker=:circle)
    scatter!(fig, xp2, yp2, label="Control Points Curve 2", color="red", marker=:circle)

    # Convertir les tuples en vecteurs pour FindIntersection
    intersections = FindIntersection(collect(xp1), collect(yp1), collect(xp2), collect(yp2))

    for (x, y) in intersections
        scatter!(fig, [x], [y], label="Intersection", color="black", marker=:star)
    end

    # Show the plot
    display(fig)
end

main()
