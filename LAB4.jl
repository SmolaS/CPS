
## Problem 4.1 Dany jest sygnał 𝑥(𝑡) = sin(200𝜋𝑡) z którego zostały pobrane próbki z częstotliwością 𝑓𝑝 = 250 Hz. 
## Znajdź wynikowy ciąg 𝑥[𝑛].


## Problem 4.2 Dany jest sygnał 𝑠(𝑡) = cos(𝜔𝑡),𝑡 ∈ ℝ. W wyniku operacji próbkowania został otrzymany ciąg 𝑠[𝑛] = cos(𝛾𝜋𝑛),
## gdzie 𝛾 ∈ ℝ i 𝑛 ∈ ℤ. Znajdź 𝜔 przy założeniu że częstotliwość próbkownia wynosi 𝑓𝑝 ∈ ℝ


## Problem 4.3 Określ czy dane poniżej ciągi są okresowe. Jeżeli tak, wyznacz okres.
## a) 𝑥[𝑛] = cos(3𝜋n/7−𝜋/8)
## b) 𝑔[𝑛] = exp(𝑗(𝑛/8 − 𝜋))

## Problem 4.4 Dany jest ciągły sygnał 𝑠(𝑡) = 𝑔(𝑡) cos(1000𝜋𝑡) z którego zostały pobrane próbki 𝑠[𝑛] = 𝑠(𝑛/𝑓𝑠). 
## Jeżeli 𝑓𝑠 > 1300, to ciąg 𝑠[𝑛] jest jednoznaczy z ciągłym sygnałem 𝑠(𝑡), tzn. możliwa jest perfekcyjna rekonsturkcja 
## sygnału ciągłego 𝑠(𝑡)  na podstawie dyskretnych próbek 𝑠[𝑛]. Jaki warunek należy postawić dla częstotliwości próbkowania 𝑓𝑔,
## aby ciąg 𝑔[𝑛] = 𝑔(𝑛/𝑓𝑔) był jednoznaczy z ciągłym sygnałem 𝑔(𝑡)?


## Problem 4.5 Zaimplementuj funkcję interpolate: ℝ^𝑁 × ℝ^𝑁 × 𝐹𝑠 → 𝐹, która zwróci funckje 𝑓 ∈ 𝐹, gdzie 𝐹 to 
## zbiór funkcji ℝ → ℝ, zwracającą wartość 𝑓(𝑥) = 𝑥̂(𝑡), gdzie 𝑥̂(𝑡) ∈ ℝ
## to interpolacją ciągłego sygnału 𝑥(𝑡) ∈ ℝ w chwili 𝑡 ∈ ℝ. Do interpolacji wykorzystaj metodę
## funkcji sklejnych z funkcją 𝑘 ∈ 𝐹𝑠, gdzie 𝐹𝑠 jest zbiorem wszystkich funkcji sklejnych ℝ → ℝ.
## Węzły interpolacyjne są dane przez dwa wektory 𝒎 ∈ ℝ^𝑁 i 𝒔 ∈ ℝ^𝑁 , gdzie 𝒎 = [𝑡1,𝑡2, …,𝑡𝑁 ], 
## a 𝒔 = [𝑥(𝑡1), 𝑥(𝑡2), …, 𝑥(𝑡𝑁 )]. Dodatkowo załóż że 𝑡𝑛+1 − 𝑡𝑛 = Δ𝑡.


## Problem 4.6 Zbadaj jak kształtuje się średnią kwadratową błedu rekonstrukcji sygnału o ogranioczonym paśmie
## w zależności od częstotliwości próbkowania. Do rekonstrukcji wykorzystajmetodę funkcji sklejnych oraz
## funckje sinc : ℝ → ℝ jako bazową funkcję sklejną. Wykreś uzyskane charakterystyki wyjaśnij krzywe.


## Problem 4.7 Zbadaj bład rekonstrukcji sygnału 𝑥(𝑡) = cos(𝜋𝑓𝑝 ∗ 𝑡 + 𝜑) próbkowanego z tak
## zwaną krytyczną częstotliwością próbkowania 𝑓𝑝 ∈ ℝ, w zależności od przesunięcia fazowego
## 𝜑 ∈ [0, 2𝜋]. Do rekonstrukcji wykorzystaj metodę funkcji sklejnych oraz funckje sinc : ℝ → ℝ
## jako bazową funkcję sklejną. Wykreś badaną charakterystykę oraz uzasadnij jej przeb
