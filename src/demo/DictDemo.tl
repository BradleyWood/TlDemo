package demo

import java.util.Random

var rand = Random()

var done = "done"

fun main() {
    println()
    var dict = { 0 : "zero", 1 : "one", 2 : "two", 3 : "three", 4 : "four", 5 : "five", 6 : "six", 7 : "seven", 8 : "eight", 9 : "nine" }

    println(dict)
    println("Enter a number between zero and 10")

    var idx = int(readLine())
    println(idx + " is also known as " + dict[idx])
}

