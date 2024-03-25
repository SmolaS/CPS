using CairoMakie

## Problem 3.1 Zaimplementuj funkcję mean: ℂ^𝑁 → ℂ zwracającą wartość średnią dyskretnego sygnału 𝑥 ∈ ℂ^𝑁 .

function mean(n1, n2, x)
    sum = zero(eltype(x))
    for i in n1:n2
        sum += x[i]
    end
    return (1 / (n2 - n1 + 1)) .* sum
end

## Problem 3.2 Zaimplementuj funkcję peak2peak: ℝ^𝑁 → ℝ zwracającą wartość międzyszczytową dyskretnego sygnału 𝑥 ∈ ℝ^𝑁 .

function peak2peak(x::AbstractVector)::Real
    return max(x) - min(x)
end

## Problem 3.3 Zaimplementuj funkcję energy: ℂ ^𝑁 → ℝ zwracającą energię dyskretnego sygnału 𝑥 ∈ ℂ^𝑁 .

## Problem 3.4 Zaimplementuj funkcję power: ℂ^𝑁 → ℝ zwracającą moc dyskretnego sygnału 𝑥 ∈ ℂ^𝑁 .

## Problem 3.5 Zaimplementuj funkcję rms: ℂ^𝑁 → ℝ zwracającą wartość skuteczną dyskretnego sygnału 𝑥 ∈ ℂ^𝑁 .
