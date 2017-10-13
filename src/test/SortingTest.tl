package test;

import org.toylang.core.Timer;
import java.util.Random;

// compare builtin sort vs quick sort
fun main(args) {
    testQuicksort();
    testBuiltinSort();
}

fun testBuiltinSort() {
    var list = [];
    var rand = Random();
    for i range 0 to 10000000
        list = list + rand.nextInt();

    var timer = Timer();
    sort(list);
    var elapsed = timer.elapsed();
    println("Builtin sort: Elapsed " + elapsed + " ms.");
}

fun testQuicksort() {
    var list = [];
    var rand = Random();
    for i range 0 to 10000000
        list = list + rand.nextInt();

    var timer = Timer();
    quickSort(list, 0, len(list) - 1);
    var elapsed = timer.elapsed();
    println("Quicksort: Elapsed " + elapsed + " ms.");
}

fun quickSort(list, low, high) {
    if(low < high) {
        var p = partition(list, low, high);
        quickSort(list, low, p - 1);
        quickSort(list, p + 1, high);
    }
}

fun partition(list, low, high) {
    var pivot = list[high];
    var i = low - 1;
    var tmp;
    for j range low to high {
        if(list[j] < pivot) {
            i += 1;
            tmp = list[i];
            list[i] = list[j];
            list[j] = tmp;
        }
    }
    if(list[high] < list[i + 1]) {
        tmp = list[i + 1];
        list[i + 1] = list[high];
        list[high] = tmp;
    }
    return i + 1;
}