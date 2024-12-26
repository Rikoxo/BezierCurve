using BezierCurve

function main()
    fig = plot([], [], label="Bezier Curves", size=(600, 600), xlims=(-5, 5), ylims=(-5, 5))

    xp1 = (-4, -2, 0, 2, 4)
    yp1 = (0, 3, -2, 1, 0)
    
    xp2 = (-4, -1, 1, 3, 4)
    yp2 = (1, 2, 3, -1, 0)

    # Convertir les tuples en vecteurs
    tx1, ty1 = BezierPlot(collect(xp1), collect(yp1))
    tx2, ty2 = BezierPlot(collect(xp2), collect(yp2))

    plot!(fig, tx1, ty1, label="Bezier Curve 1", color="blue")
    plot!(fig, tx2, ty2, label="Bezier Curve 2", color="red")

    scatter!(fig, collect(xp1), collect(yp1), label="Control Points Curve 1", color="blue", marker=:circle)
    scatter!(fig, collect(xp2), collect(yp2), label="Control Points Curve 2", color="red", marker=:circle)

    intersections = FindIntersection(collect(xp1), collect(yp1), collect(xp2), collect(yp2))

    for (x, y) in intersections
        scatter!(fig, [x], [y], label="Intersection", color="black", marker=:star)
    end

    # Show the plot
    display(fig)
end

main()
