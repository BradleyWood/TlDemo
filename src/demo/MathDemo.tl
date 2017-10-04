package demo;

// Define a few mathematical functions

f(x) = x**2 + x + 1;

g(x) = 4 * x + 50;

fog(x) = f(g(x));

fun main() {
    println("Enter a number: ");
    var x = int(readLine());
    println("x = "+x + ", f(x) = " + f(x) + ", g(x) = " + g(x) + ", fog(x) = " + fog(x));
}
