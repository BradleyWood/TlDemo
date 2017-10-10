package test;


fun main() {
    test();
}

fun test() {
    whileTest1();
    whileTest2();
}

fun whileTest1() {
    var i = 0;
    while (i < 10) {
        i += 1;
    }
    if(i != 10) {
        println(error("whileTest1 Failed."));
    }
}
fun whileTest2() {
    var s = "";
    while(s != "aaaa") {
        s += "a";
    }
    if(s != "aaaa") {
        println(error("whileTest2 Failed."));
    }
}