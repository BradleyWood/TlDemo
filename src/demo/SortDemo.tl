package demo

import java.util.Random

var rand = Random()

fun main() {
    println()
    println("Welcome to the sort demo!")
    println("For each line, enter a number. Type done when you are done")

    var numbers = []

    while(true) {
        var line = readLine()
        if line == "done"
            break
        else
            numbers += int(line)

    }
    println("Before... " + numbers)
    sort(numbers)
    println("After... " + numbers)
}
