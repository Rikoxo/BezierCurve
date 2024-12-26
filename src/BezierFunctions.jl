module BezierFunctions

using LinearAlgebra

export Bernstein, BezierPlot, BezierPoint

function Bernstein(n, k, x)
    coeff = binomial(n, k)
    return coeff * x^k * (1 - x)^(n - k)
end

function Bernstein(n::Int, k::Int, x::AbstractVector)
    coeff = binomial(n, k)
    return coeff .* x.^k .* (1 .- x).^(n - k)
end

function BezierPlot(xptcontrole::AbstractVector{<:Real}, yptcontrole::AbstractVector{<:Real})
    degree = length(xptcontrole) - 1
    nbti = 200
    ttrace = LinRange(0, 1, nbti)
    tx = zeros(nbti)
    ty = zeros(nbti)
    for k in 1:(degree + 1)
        poly = Bernstein(degree, k - 1, ttrace)
        tx .+= xptcontrole[k] .* poly
        ty .+= yptcontrole[k] .* poly
    end
    return tx, ty
end

function BezierPoint(xptcontrole::AbstractVector{<:Real}, yptcontrole::AbstractVector{<:Real}, t::Real)
    degree = length(xptcontrole) - 1
    x0, y0 = 0.0, 0.0
    for k in 1:(degree + 1)
        poly = Bernstein(degree, k - 1, t)
        x0 += xptcontrole[k] * poly
        y0 += yptcontrole[k] * poly
    end
    return x0, y0
end

end # module
