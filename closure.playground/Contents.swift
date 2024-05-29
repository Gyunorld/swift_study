import UIKit

// Closure
// - 이름이 없는 메소드
// - 동적으로 사용가능

//Closure 구현부
var multiplyClosure: (Int, Int) -> Int = { a, b in
    return a * b
}

let result = multiplyClosure(4, 2)

func operateTwoNum(a: Int, b: Int, operation: (Int, Int)-> Int) -> Int {
    let result = operation(a,b)
    return result
}

operateTwoNum(a: 4, b: 2, operation: multiplyClosure)

var addClosure: (Int, Int) -> Int = { a, b in
    return a + b
}

operateTwoNum(a: 4, b: 2, operation: addClosure)


operateTwoNum(a: 4, b: 2) { a, b in
    return a / b
}


let voidClosure: () -> Void = {
    print("Closure GOOD!!!")
}

voidClosure()

// Capturing value
// - closure에 capture되면 영역밖에서도 사용할 수 있음

var count = 0

let incrementer = {
    count += 1
}
// count가 외부에 선언되어 있어도 내부에서 사용할 수 있음 -> closure에서만 사용 가능

incrementer()
incrementer()
incrementer()
incrementer()

count
