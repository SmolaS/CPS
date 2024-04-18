## 7.1. Problemy tablicowe
## Problem 7.1.1
## Niech wektor 𝐱 ∈ ℝ^5000 zawiera w sobie 5000 próbek pobranych z ciągłego sygnału 𝑥(𝑡) ∈ ℝ.
## Odstęp czasu między dwiema kolejnymi próbkami wynosi Δ𝑡 = 50 ⋅ 10^−6.
## Następnie, korzystając z wektora 𝐱 zostało obliczone widmo częstotliwościowe z wykorzystaniem 
## 8192-punktowej dyskretnej transformaty Fouriera. Jaki będzie odstęp częstotliwościowy
## Δ𝑓 między dwoma sąsiadującymi próbkami w wynikowej transformacie?


## Problem 7.1.2
## Ciągły sygnał 𝑥(𝑡) ∈ ℂ ma ograniczone pasmo od góry przez częstotliwość 5000,
## tzn. 𝑋(𝑗𝜔) = 0, ∀𝜔 : |𝜔| > 10000𝜋. Następnie z tego sygnału zostały pobrane próbki z
## okresem Δ𝑡, przez co powstał ciąg 𝑥[𝑛] = 𝑥(Δ𝑡 ⋅ 𝑛). W celu wykoniania analizy
## częstotliwościowej tego sygnału oblicznamy 𝑁-punktową dyskretną transformacji Foureira
## z 𝑁 kolejnych wartości ciągu 𝑥[𝑛]. Jako że potrzebujemy obliczyć w jak najkrótszym
## czasie wartości dyskretnej transformacji Fouriera, to wykorzystujemy do tego celu 
## algorytm szybkiej transformacji Fouriera radix-2. Wyznacz minimalną wartość 𝑁 oraz
## przedział do którego musi należeć częstotliwośc
## próbkowania, tak aby nie wystąpił aliasing oraz odstęp częstotliwościowy między próbkami
## (Δ𝑓) dyskretnego widma częstotliwościwego był mniejszy niż 5.


## Problem 7.1.3
## Sygnał 𝑥(𝑡) ∈ ℂ ma ograniczone pasmo przez częstotliwość 500 Hz, tzn. 𝑋(𝑗𝜔) = 0,
## ∀𝜔 : |𝜔| ≥ 1000𝜋. Następnie z sygnału 𝑥(𝑡) zostają pobrane próbki, które tworzą
## następującą ciąg 𝑥[𝑛] = 𝑥(Δ𝑡 ⋅ 𝑛), 𝑛 ∈ ℤ, gdzie Δ𝑡 = 0.001 sekundy. Niech ciąg 𝑋[𝑘] ∈ ℂ,
## 𝑘 = 0, …, 1999 będzie dyskretną transformatą Fouriera dowolnego podciągu 𝑥[𝑛] o długości 2000.
## a) Z jaką ciągłą częstotliwością widma 𝑋(𝑗𝜔) będzie korespondował prążek 𝑋[𝑘] dla 𝑘 = 0?
## b) Z jaką ciągłą częstotliwością widma 𝑋(𝑗𝜔) będzie korespondował prążek 𝑋[𝑘] dla 𝑘 = 200?
## c) Z jaką ciągłą częstotliwością widma 𝑋(𝑗𝜔) będzie korespondował prążek 𝑋[𝑘] dla 𝑘 = 1000?
## d) Z jaką ciągłą częstotliwością widma 𝑋(𝑗𝜔) będzie korespondował prążek 𝑋[𝑘] dla 𝑘 = 1600?


## 7.2. Problemy implementacyjne
## Problem 7.2.1
## Zaimplementuj funkcję fftfreq: ℕ^+ × ℝ^+ → ℝ^𝑁 , która obliczy wektor 𝑓 ∈ ℝ^𝑁 
## zawierający częstotliwości próbek dyskretnej transformaty Fouriera (dwustronne dyskretne
## widmo częstotliwościowe) obliczonej z dyskretnego sygnału o długości 𝑁 ∈ ℕ^+ przy założeniu
## że próbki sygnału w domenie czasu zostały pobrane z częstotliwością 𝑓𝑝 ∈ ℝ^+.


## Problem 7.2.2
## Zaimplementuj funkcję rfftfreq: ℕ^+ × ℝ^+ → ℝ^[N/2]+1 , która obliczy wektor 𝑓 ∈ ℝ^[N/2]+1
## zawierający częstotliwości próbek dyskretnej transformaty Fouriera (dwustronne dyskretne
## widmo częstotliwościowe) obliczonej z dyskretnego sygnału o długości 𝑁 ∈ ℕ^+ przy założeniu
## że próbki sygnału w domenie czasu zostały pobrane z częstotliwością 𝑓𝑝 ∈ ℝ^+.


## Problem 7.2.3
## Zaimplementuj funkcję amplitude_spectrum: ℂ^𝑁 × ℝ^𝑁 → ℝ^𝑁 , która oblicz 
## widmo amplitudowe 𝐴 ∈ ℝ^𝑁 , dyskretnego sygnału 𝑥 ∈ ℂ^^𝑁 , który powstał poprzez nałożenie
## dyskretnego okna 𝑤 ∈ ℝ^𝑁 na ciąg 𝑥[𝑛] ∈ ℂ.



## Problem 7.2.4
## Zaimplementuj funkcję power_spectrum: ℂ^𝑁 × ℝ^𝑁 → ℝ^𝑁 , która oblicz widmo mocy 𝑃 ∈ ℝ^𝑁 
## dyskretnego sygnału 𝑥 ∈ ℂ^𝑁 , który powstał poprzez nałożenie dyskretnego okna 𝑤 ∈ ℝ^𝑁 
## na ciąg 𝑥[𝑛] ∈ ℂ.


## Problem 7.2.5
## Zaimplementuj funkcję psd: ℂ^𝑁 × ℝ^𝑁 × ℝ^+ → ℝ^𝑁 , która oblicz widmową gęstość mocy 
## 𝐺 ∈ ℝ^𝑁 dyskretnego sygnału 𝑥 ∈ ℂ^𝑁 , który powstał poprzez nałożenie dyskretnego okna
## 𝑤 ∈ ℝ^𝑁 na ciąg 𝑥[𝑛] ∈ ℂ. Ciąg 𝑥[𝑛] powstał poprzez spróbkowanie ciagłego sygnału
## z szybkością 𝑓𝑝 ∈ ℝ^+ próbke na sekundę.


## Problem 7.2.6
## Zaimplementuj funkcję periodogram: ℂ^𝑁 × ℝ^𝐾 × ℕ × ℝ^+ → ℝ^𝐾, która oszacuje widmową 
## gęstość mocy dyskretnego sygnału 𝑥 ∈ ℂ^𝑁 , próbkowaniego z szybkościa 𝑓𝑝 ∈ ℝ^+
## próbek na sekundę, z wykorzystaniem metody Welcha. Do szacowania widmowej gęstości
## mocy, wykorzystaj wycinki sygnału uzyskane przez nakładanie dyskretnego okna czasowego
## 𝑤 ∈ ℝ^𝐾 na sygnał, gdzie 𝐾 ≪ 𝑁. Kolejne wycinki sygnału powinna nachodzić na siebie, na
##𝐿 ∈ ℕ próbkach.


## Problem 7.2.7
## Dany jest dyskretny sygnał 𝑥 ∈ ℂ^𝑁 (FM.wav), który został pobrany przy pomocy radia 
## programowalnego z szybkością 3 MHz w paśmie radiowym. Oszacuj widmową gęstość mocy 
## tego sygnału i zidentyfikuj liczbę stacji radiowych oraz ich pasma. Stacje radiowe
## nadają sygnał, który jest zmodulowany częstotliwościowo (modulacja FM).
## Korzystając z dyskretnej transformaty Fouriera, wydziel pasmowy sygnał danej stacji radiowej,
## przesuń do pasma podstawowego (pasmo stacji radiowej powinno zostać przesuniętę na
## częstotliwość zero), a następnie użyj demodulacji kwadraturowej do odzyskania 
## sygnału modulowanego.

