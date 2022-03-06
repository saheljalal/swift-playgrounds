////: Playground - noun: a place where people can play
//
//import Foundation
//
//func foo<T: Comparable>(inout a: [T]) {
//    print("Hello \(a)")
//}
//
//func bar<T: Comparable>(inout a: [T]) {
//    foo(&a)
//}
//
//var z = [3, 52, 5]
//bar(&z)
//
//// Utility
//
//func swapNumbers<T where T: Comparable, T: BitwiseOperationsType>(inout array: [T], _ i: Int, _ j: Int) {
//    if i != j {
//        array[i] ^= array[j]
//        array[j] ^= array[i]
//        array[i] ^= array[j]
//    }
//}
//
//// Bit Count
//
//func countBits(num: Int) -> Int {
//    var n = num
//    var counter = 0
//    while n > 0 {
//        if n & 1 == 1 {
//            counter += 1
//        }
//        n = n >> 1
//    }
//    return counter
//}
//
//// Insertion Sort
//
//func insertionSort<T: Comparable>(inout array: [T]) {
//    for j in 1..<array.count {
//        let key = array[j]
//        var i = j - 1
//        while i >= 0 && array[i] > key {
//            array[i+1] = array[i]
//            i -= 1
//        }
//        array[i+1] = key
//    }
//}
//
//// Bubble Sort
//
//func bubbleSort<T where T: Comparable, T: BitwiseOperationsType>(inout array: [T]) {
//    var sorted = false
//    while !sorted {
//        sorted = true
//        for i in 0..<array.count - 1 {
//            if array[i] > array[i+1] {
//                swapNumbers(&array, i, i+1)
//                sorted = false
//            }
//        }
//    }
//}
//
//// Merge Sort
//
//func merge<T: Comparable>(inout left: [T], inout _ right: [T]) -> [T] {
//    var result = [T]()
//    
//    let len = left.count + right.count
//    for _ in 0..<len {
//        if right.isEmpty || (!left.isEmpty && left[0] < right[0]) {
//            result.append(left[0])
//            left.removeAtIndex(0)
//        } else {
//            result.append(right[0])
//            right.removeAtIndex(0)
//        }
//    }
//    
//    return result
//}
//
//func mergeSort<T: Comparable>(inout array: [T]) {
//    if array.count > 1 {
//        let m = array.count / 2
//        
//        var a = [T]()
//        for i in 0..<m {
//            a.append(array[i])
//        }
//        
//        var b = [T]()
//        for j in m..<array.count {
//            b.append(array[j])
//        }
//        
//        mergeSort(&a)
//        mergeSort(&b)
//        array = merge(&a, &b)
//    }
//}
//
//// Quick Sort
//
//func partition<T where T: Comparable, T: BitwiseOperationsType>(inout array: [T], _ p: Int, _ q: Int) -> Int {
//    let pivot = array[q]
//    var i = p
//    let r = q - 1
//    for j in p..<r {
//        if array[j] <= pivot {
//            swapNumbers(&array, i, j)
//            i += 1
//        }
//    }
//    swapNumbers(&array, i, q)
//    
//    return i
//}
//
//func _quickSort<T where T: Comparable, T: BitwiseOperationsType>(inout array: [T], _ p: Int, _ q: Int) {
//    if p < q {
//        let pi = partition(&array, p, q)
//        _quickSort(&array, p, pi - 1)
//        _quickSort(&array, pi + 1, q)
//    }
//}
//
//func quickSort<T where T: Comparable, T: BitwiseOperationsType>(inout array: [T]) {
//    _quickSort(&array, 0, array.count - 1)
//}
//
//// Tests
//
//countBits(235225)
//
//let a = [3, 5, 6, 2, 1, 9, 7, 4, 10, 34, 21, 892, 58]
//
//var b = a
//insertionSort(&b)
//
//b = a
//bubbleSort(&b)
//
//b = a
//mergeSort(&b)
//
//b = a
//quickSort(&b)
