import UIKit

// overload
func printTotalPrice(price: Int, count: Int) {
    print("Total Price: \(price * count)")
}

func printTotalPrice(price: Double, count: Double) {
    print("Total Price: \(price * count)")
}
// ==> 같은 행위지만 input값이 다른 경우에 사용

// In-out parameter

//func incrementAndPrint(_ value: Int) {
//    value += 1
//    print(value)
//} ==> swift는 parameter가 복사해서 들어오는데 한 번 value가 정해지면 변하지 않음

// value에 inout을 추가하면 값을 변화시킬 수 있음
var value = 3
func incrementAndPrint(_ value: inout Int) {
    value += 1
    print(value)
}

incrementAndPrint(&value)

// 함수의 parameter로 함수를 사용하는 방법

func add(_ a: Int, _ b: Int) -> Int {
    return a + b
}

func subtract(_ a: Int, _ b: Int) -> Int {
    return a - b
}

var function = add
function(4, 2)
function = subtract
function(4, 2)

func printResult(_ function: (Int,Int) -> Int, _ a: Int, _ b:Int) {
    let result = function(a, b)
    print(result)
}

printResult(add, 10, 5)
printResult(subtract, 10, 5)
