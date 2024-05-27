//Function
// - 기능을 수행하는 코드 블록
// - Method와 달리 독립적으로 호출됨
import UIKit

func printName() {
    print("---> My name is Gyunorld")
}

printName()

// parameter 1개
// 숫자를 받아서 10을 곱해서 출력

func printMultipleOfTen(value: Int) {
    print("\(value) * 10 = \(value * 10)")
}

printMultipleOfTen(value: 5)

// param 2개
// 물건값과 갯수를 받아서 전체 금액을 출력하는 함수

func printTotalPrice(price: Int, count: Int) {
    print("Total Price: \(price * count)")
}

printTotalPrice(price: 1500, count: 5)
//==> parameter의 이름을 명시하고 값을 입력해야함

//func printTotalPrice(_ price: Int,_ count: Int) {
//    print("Total Price: \(price * count)")
//}
//
//printTotalPrice(1500, 5)
// ==> parameter의 이름을 명시하지 않고 값을 입력가능

//func printTotalPrice(가격 price: Int, 갯수 count: Int) {
//    print("Total Price: \(price * count)")
//}
//
//printTotalPrice(가격:1500, 갯수:5)
// swift는 unicode를 지원하기 때문에 한글로 작성가능함 (단, 외부에서 보여지는 것만 사용, 실제 function의 값은 price와 count를 사용)

printTotalPrice(price: 1500, count: 5)
printTotalPrice(price: 1500, count: 10)
printTotalPrice(price: 1500, count: 7)
printTotalPrice(price: 1500, count: 1)

// 가격이 1500으로 고정된 경우
func printTotalPriceDefault(price: Int = 1500, count: Int) {
    print("Total Price: \(price * count)")
}

printTotalPriceDefault(count: 5)
printTotalPriceDefault(count: 10)
printTotalPriceDefault(count: 7)
printTotalPriceDefault(count: 1)

printTotalPriceDefault(price: 2000, count: 1) // 고정값이 변한 경우 다른 value를 넣어주면 사용가능

// Int형으로 값을 반환함
func totalPrice(price: Int, count: Int) -> Int {
    let totalPrice = price * count
    return totalPrice
}

let price = totalPrice(price: 10000, count: 77)
