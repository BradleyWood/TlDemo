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
    while(running == true) {
        var line = readLine();
        if(line == done) {
            running = false;
        } else {
            numbers += line;
        }
    }
    println("Before... " + numbers);
    println("After... " + reverse(numbers));
}

fun reverse(list) {
    var count = len(list) - 1;
    var tmp = -1;
    var numbers = [];
    while(count >= 0) {
        numbers += list[count];
        count -= 1;
    }
    return numbers;
}


