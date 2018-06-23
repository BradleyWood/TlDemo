package demo

// Define a few mathematical functions

f(x) = x**2 + x + 1

g(x) = 4 * x + 50

fog(x) = f(g(x))

fun factorial(num) {
    if num <= 1
        return num
    return num * factorial(num - 1)
}

fun fib(n) {
    if n == 0
        return 0
    if n == 1
        return 1
    return fib(n - 1) + fib(n-2)
}

fun main() {
    println("Enter a number: ")
    var x = int(readLine())
    println("x = "+x + ", f(x) = " + f(x) + ", g(x) = " + g(x) + ", fog(x) = " + fog(x))
    println("x! = " + factorial(x) + ", fib(x) = " + fib(x))
}
