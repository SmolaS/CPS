using CairoMakie

## Problem 3.1

function mean(n1, n2, x)
    sum = zero(eltype(x))
    for i in n1:n2
        sum += x[i]
    end
    return (1 / (n2 - n1 + 1)) .* sum
end

## Problem 3.2 

function peak2peak(x::AbstractVector)::Real
    return max(x) - min(x)
end

## Problem 3.3

## Problem 3.4

## Problem 3.5

## Problem 3.6

## Problem 3.7

## Problem 3.8