package demo;

import java.util.Random;

var rand = Random();

var done = "done";

fun main() {
    println();
    println("Welcome to the sort demo!");
    println("For each line, enter a number. Type " + done + " when you are done");


    var numbers = [];

    var running = true;
    while(running == true) {
        var line = readLine();
        if(line == done) {
            running = false;
        } else {
            numbers += int(line);
        }
    }
    println("Before... " + numbers);
    sort(numbers);
    println("After... " + numbers);
}
