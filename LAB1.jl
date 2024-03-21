## Problem 1.1
function silnia_rek(n)
    if n == 0
        return 1
    end

    return n * silnia_rek(n-1)
end

println(silnia_rek(5))

## Problem 1.2
function silnia_it(n)
    wynik = 1
    for i in 2:n
        wynik *= i
    end

    return wynik
end

println(silnia_it(5))

## Problem 1.3
function isEven(n)
    return !Bool(n%2)
end

println(isEven(5))
println(isEven(4))

## Problem 1.4
function isPrime(n)
    for i in 2:sqrt(n)
        if n % i == 0
            return false
        end
    end
    return true
end

println(isPrime(13))
println(isPrime(21))

## Problem 1.5
function reverse_array(s::Vector)
    return reverse(s)
end

println(reverse_array([1,2,3,4]))

## Problem 1.6
function isPalindrome(s::Vector)
    if s == reverse(s)
        return true
    end

    return false
end

println(isPalindrome([1,3,1]))
println(isPalindrome([1,3,2]))

## Problem 1.7
function sierpinski_area(n)
    return (3/4)^n
end

for i in 0:10
    println("Rząd: ", i, " Pole = ", sierpinski_area(i))
end

## Problem 1.8
function newton_raphson(liczba)
    dokl = 0.00001
    x = liczba/2
    while abs(x - liczba/x) > dokl
        x = (x+liczba/x)/2
    end
    return x
end

for i in 1:10
    println("sqrt(",i,") = ",newton_raphson(i))
end

## Problem 1.9
#TODO
MAX_ITER = 255

function mandelbrot(c)
    z = 0
    n = 0
    while (abs(z) < 2) && (n < MAX_ITER)
        z = z^2 + c
        n += 1
    end

    return n
end

for r = -1:0.1:2, i = -1:0.1:1
    c = r + i * im
    println(c," ",mandelbrot(c))
end




## Problem 1.10
function isPrime(n)
    for i in 2:sqrt(n)
        if n % i == 0
            return false
        end
    end
    return true
end

function isCircularPrime(n)
    count = 0
    temp = n
    while temp > 0
        count +=1
        temp = temp ÷ 10
    end

    num = n
    while isPrime(num)
        rem = num % 10
        div = num ÷ 10
        num = Int((10^(count-1)) * rem + div)

        if num == n
            return true
        end        
    end

    return false
end

count = 0
for i in 2:1_000_000
    if isCircularPrime(i)
        count += 1
    end
end

println(count)

##