package demo;

import java.util.Random;

var rand = Random();

var done = "done";

fun main() {
    println();
    println("Welcome to the list demo demo!");
    println("For each line, enter a number. Type '" + done + "' when you are done");

    var numbers = [];

    var running = true;
    while (running) {
        var line = readLine();
        if (line == done) {
            running = false;
        } else {
            numbers += line;
        }
    }
    println("Before... " + numbers);
    println("After... " + reverse(numbers));
}
