package demo

import java.lang.Thread
import java.lang.Runnable

class SomeRunnableClass implements Runnable {

    @Override
    fun run() {
        ThreadDemo.aFunction()
    }
}

fun aFunction() {
    println("This not the main thread!")
}

fun main() {
    // go routine
    go aFunction()

    // or create a thread with a runnable type
    var thread = Thread(SomeRunnableClass())
    thread.start()
    thread.join()
}
