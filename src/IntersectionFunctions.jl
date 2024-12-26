module IntersectionFunctions

using LinearAlgebra
import ..BezierFunctions: BezierPoint

export FindIntersection

function FindIntersection(
    xpt1::AbstractVector{<:Real}, ypt1::AbstractVector{<:Real},
    xpt2::AbstractVector{<:Real}, ypt2::AbstractVector{<:Real};
    tolerance::Real = 0.05, max_iter::Int = 50
)
    intersections = []
    for t1 in LinRange(0, 1, max_iter)
        x1, y1 = BezierPoint(xpt1, ypt1, t1)
        for t2 in LinRange(0, 1, max_iter)
            x2, y2 = BezierPoint(xpt2, ypt2, t2)
            if norm([x1 - x2, y1 - y2]) < tolerance
                push!(intersections, (x1, y1))
            end
        end
    end
    return unique(intersections)
end


end # module
