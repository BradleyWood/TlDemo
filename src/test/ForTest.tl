package test;

fun main() {
    test();
}

fun test() {
    forTest1();
    forTest2();
    forTest3();
    forTest4();
    forTest5();
    forTest6();
}

fun forTest1() {
    var i;
    for(i = 0; i < 10; i += 1);

    if(i != 10) {
        println(error("ForTest1 Failed"));
    }
}

fun forTest2() {
    var i;
    for(i = 0; i < 10; i += 1) {
        i += 0;
    }
    if(i != 10) {
        println(error("ForTest2 Failed"));
    }
}

fun forTest3() {
    for i range 0 to 10;

    if(i != 10) {
        println(error("ForTest3 Failed"));
    }
}

fun forTest4() {
    for i range 10 downto 0;
    if(i != 0) {
        println(error("ForTest4 Failed"));
    }
}

fun forTest5() {
    var j = 0;
    for i range 10 downto 0
        j += 2;

    if(i != 0 || j != 20) {
        println(error("ForTest5 Failed"));
    }
}

fun forTest6() {
    var j = 0;
    for i range 0 upto 10
        j += 2;
    j -= 20;
    if(i != 10 && j != 0) {
        println(error("ForTest3 Failed"));
    }
}
