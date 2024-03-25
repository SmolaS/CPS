using CairoMakie
using Random

## Problem 2.1 Oblicz wektor 𝑥 ∈ ℝ^256, zawierający kolejne próbki pobrane z szybkością 1000 próbek na sekundę 
## ciągłego rzeczywsitego syganłu harmonicznego o amplitudzie 2, częstotliwości oscylacji 25 Hz, oraz przesunięciu fazowym 𝜋/4. 
## Pierwsza próbka 𝑥1 powinna być pobrana w momencie 0.25 s

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

## Problem 2.2 Oblicz wektor 𝑥 ∈ ℂ 𝑁 , zawierający kolejne próbki pobrane z szybkością 2048 próbek na sekundę 
## ciągłego zespolonego syganłu harmonicznego o amplitudzie 0.25, częstotliwości oscylacji 𝜋/2 Hz, oraz przesunięciu fazowym 𝜋.\
## Pierwsza próbka 𝑥1  powinna być pobrana w momencie 5.0 s, natomiast ostatnia próbka 𝑥𝑁 powinna zostać pobrana w momencie 10.0 s.

function K(N)
    
A = 0.25 # Amplituda
f = pi/2 # Częstotliwość
n = 2048# Szybkość próbek na sekundę
fi = pi # Przesunięcie fazowe
t1 = 5 # Początek próbkowania
N = # Rozmiar wektora nieznany
t2 = 10

t = range(t1, t2; length=n*(t2-t1)) # Zakres x
y = A*exp.(im*(2*pi*f*t.+fi))# Sygnał y

# Wykres
lines(t, real(y))
lines!(t, imag(y))
current_figure()


## Problem 2.7 Zaimplementuj funkcję cw_literka_M: ℝ × ℝ → ℝ, zwracającą impuls przypominający literę M o szerokości 𝑇 ∈ ℝ w chwili 𝑡 ∈ ℝ.

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


## Problem 2.10 Zaimplementuj funkcję sawtooth_wave: ℝ → ℝ, zwracającą wartości okresowego sygnału fali piłokształtnej z opadającym zboczem w chwili 𝑡 ∈ ℝ. 
## Sygnał powinien posiadać następujące parametry: amplituda 1, okres 1 sekunda, składowa stała 0, sawtooth_wave(0) = 0,
## oraz 𝜕sawtooth_wave/ 𝜕𝑡| 𝑡=0 = −1.

## Problem 2.11 : Zaimplementuj funkcję triangular_wave: ℝ → ℝ, zwracającą wartości okresowego sygnału fali trójkątnej w chwili 𝑡 ∈ ℝ.
## Sygnał powinien posiadać następujące parametry: amplituda 1, okres 1 sekunda, składowa stała 0, triangular_wave(0) = 0, oraz
## 𝜕 triangular_wave/ 𝜕𝑡| 𝑡=0 = 2


## Problem 2.14 Zaimplementuj funkcję impulse_reapeter: 𝐹 × ℝ × ℝ → 𝐹, która zwróci funkcję 𝑓 ∈ 𝐹, gdzie 𝐹 oznacza zbiór funkcji ℝ → ℝ. Funkcja 𝑓 powinna zwracać wartość sygnału 𝑓(𝑡) ∈ ℝ w momencie 𝑡 ∈ ℝ. 
##  Sygnał 𝑓(𝑡) jest sygnałem okresowym o okresie 𝑇 = 𝑡2 − 𝑡1, gdzie 𝑡1,𝑡2 ∈ ℝ oraz 𝑡1 < 𝑡2. Funkcja 𝑓 jest związany z funkcją wymuszającą 𝑔 ∈ 𝐹 poprzez warunek t2∫t1(𝑓(𝑡) − 𝑔(𝑡))^2 dt = 0.

## Problem 2.15 Zaimplementuj funkcję ramp_wave_bl: ℝ × ℝ^+ × ℝ^+ × ℝ^+ → ℝ. Funkcja powinna zwracać wartość sygnału fali piłokształtnej z narastającmym zboczem w chwili 𝑡 ∈ ℝ(podobnie jak w Problem 2.9).
## Dodatkowo zwracany sygnał powinien mieć amplitudę 𝐴 ∈ ℝ$+, okres trwający 𝑇 ∈ ℝ+ sekund oraz pasmo tego sygnału powinno być ograniczone od dołu i góry przez częstotliwości |𝐵| ∈ ℝ^+.


## Problem 2.22 Zaimplementuj funkcję kronecker : ℤ → ℝ, zwracającą wartość dyskretnego impulsu jednostkowego (delta Kroneckera) dla 𝑛 ∈ ℤ.
 
## Problem 2.23 Zaimplementuj funkcję heaviside : ℤ → ℝ, zwracającą wartość dyskretnego skoku jednostkowego (funkcja skokowa Heaviside’a) dla 𝑛 ∈ ℤ
    
## Problem 2.26 Zaimplementuj funkcję hanning : ℕ+ → ℝ^𝑁 , zwracającą wektor 𝑥 ∈ ℝ^𝑁 z próbkami dyskretnego okna Hanninga o długości 𝑁 > 0.
