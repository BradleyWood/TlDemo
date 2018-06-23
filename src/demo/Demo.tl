package demo

import java.util.Random

var rand = Random()

fun main() {
    println()
    println("Welcome to the test language demo!")
    println("Lets demonstrate simple I/O!")

    println()
    println()

    println("What is your name?")
    var name = readLine()

    println("Hello, " + name)
    println("Pick a number between 0 and 10")

    var num = rand.nextInt(10)
    var input = int(readLine())

    if(input == num) {
        println("Congrats you guessed correctly!")
    } else {
        println("Sorry, you picked wrong!")
    }
}
