# module BezierCurve

# using LinearAlgebra
# using Plots

# include("BezierFunctions.jl")
# include("IntersectionFunctions.jl")
# include("PlotFunctions.jl")

# export plot_bezier_with_intersections

# # Fonction principale pour l'utilisateur
# #= function plot_bezier_with_intersections(
#     xp1::AbstractVector{<:Real},
#     yp1::AbstractVector{<:Real},
#     xp2::AbstractVector{<:Real},
#     yp2::AbstractVector{<:Real};
#     tolerance::Real = 0.05,
#     max_iter::Int = 50
# )
#     # Génère et affiche le tracé avec intersections
#     return PlotFunctions.plot_curves_with_intersections(xp1, yp1, xp2, yp2; tolerance, max_iter)
# end
#  =#
#  end



module BezierCurve

# Inclusion des sous-modules
include("BezierFunctions.jl")
include("IntersectionFunctions.jl")
include("PlotFunctions.jl")

# Utilisation des sous-modules
using .BezierFunctions
using .IntersectionFunctions
using .PlotFunctions

# Export des fonctions nécessaires
export Bernstein, BezierPlot, BezierPoint, FindIntersection, plot_curves_with_intersections

end # module

