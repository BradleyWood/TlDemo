package test;

import org.toylang.core.Timer;
import java.util.Random;

fun main() {
    test();
}

fun test() {
    bm1();
    bm2();
    bm3();
    bm4();
    bm5();
}

fun bm1() {
    var timer = Timer();
    var testStr = "asdasdasdbgdasdagedtrf[plwed[l21q3r[p123412`13asdasd";
    for i range 0 to 5000000 str(testStr);
    println("Elapsed "+(timer.elapsed()) + " ms");
}
fun bm2() {
    var timer = Timer();
    var testStr = "9999999";
    for i range 0 to 5000000 int(testStr);
    println("Elapsed "+(timer.elapsed()) + " ms");
}
fun bm3() {
    var timer = Timer();
    var lst = [];
    var rand = Random();
    for i range 0 to 200000 lst = lst + rand.nextInt();
    sort(lst);
    println("Elapsed "+(timer.elapsed()) + " ms");
}
fun bm4() {
    var timer = Timer();
    var lst = [];
    var rand = Random();
    for i range 0 to 20000 lst = lst + rand.nextInt();
    bubbleSort(lst);
    println("Elapsed "+(timer.elapsed()) + " ms");
}
fun bm5() {
    var timer = Timer();
    var lst = [];
    var rand = Random();
    for i range 0 to 20000 lst = lst + rand.nextInt();
    selectionSort(lst);
    println("Elapsed "+(timer.elapsed()) + " ms");
}
fun bubbleSort(list) {
    var tmp = 0;
    for i range 0 to len(list) {
        for j range 1 to (len(list) - i) {
            if(list[j - 1] > list[j]) {
                tmp = list[j - 1];
                list[j-1] = list[j];
                list[j] = tmp;
            }
        }
    }
}
fun selectionSort(list) {
    var tmp = 0;
    for i range 0 to (len(list)-1) {
        var idx = i;
        for(j range i + 1 to len(list)) {
            if(list[j] < list[idx])
                idx = j;
            tmp = list[idx];
            list[idx] = list[i];
            list[i] = tmp;
        }
    }
}
