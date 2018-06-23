package demo

import java.util.Random

var rand = Random()

fun main() {
    println()
    println("Welcome to the list demo demo!")
    println("For each line, enter a number. Type 'done' when you are done")

    var numbers = []


    while (true) {
        var line = readLine()
        if (line == "done") {
            break
        } else {
            numbers += line
        }
    }
    println("Before... " + numbers)
    println("After... " + reverse(numbers))
}
