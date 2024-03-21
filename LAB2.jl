using CairoMakie
using Random
## Problem 2.1
A = 2 # Amplituda 2
f = 25 # Częstotliwość 25 Hz
n = 1000 # Szybkość 1000 próbek na sekundę
fi = pi/4 # Przesunięcie fazowe pi/4
t1 = 0.25 # Początek próbkowania
N = 256 # Rozmiar wektora
t2 = t1+((N-1)/n)
t = range(t1, t2, N) # Zakres x
y = A*sin.(2*pi*f*t .+ fi) # Sygnał y
# Wykres
lines(t, y)

## Problem 2.2
function KOT(N)
A = 0.25 # Amplituda 0.25
f = pi/2 # Częstotliwość pi/2 Hz
n = 2048 # Szybkość 1000 próbek na sekundę
fi = pi # Przesunięcie fazowe pi
t1 = 5 # Początek próbkowania 5s
t2 = 10 # Koniec próbkowania

t2 = t1+((N-1)/n)
t = range(t1, t2, N) # Zakres x
y = A*sin.(2*pi*f*t .+ fi) # Sygnał y
end
# Wykres
lines(t, y)

## Problem 2.3

x = 0:1:1000
x = vec(x)
y = 0.5*randn(Float64,(length(x)))
y = vec(y)
f = Figure()
ax = Axis(f[1,1], aspect=1)
lines!(ax,x,y)
f
z = sum(y.^2)/length(x)

## Problem 2.4

## Problem 2.5

## Problem 2.6

## Problem 2.7

function cw_literka_M(T::Real, t::Real)
    if abs(t) < T/2
        if t< 0
            return (T/2 - (t*2))
        else
            return (T/2 + (t*2))
        end
    else
        return 0.0 
    end
end

T = 2.0
t = -2.5:0.01:2.5

x = [cw_literka_M(T,t) for t in t]
using CairoMakie
lines(t,x)
litera_M(1,1,0.1)

## Problem 2.8

## Problem 2.9

## Problem 2.10

## Problem 2.11

## Problem 2.12

## Problem 2.13

## Problem 2.14

## Problem 2.15

## Problem 2.16

## Problem 2.17

## Problem 2.18

## Problem 2.19

## Problem 2.20

## Problem 2.21

## Problem 2.22

## Problem 2.23

## Problem 2.24

## Problem 2.25

## Problem 2.26

## Problem 2.27

## Problem 2.28