import UIKit

// Optional
// - 값을 가지고 있을수도 없을수도 한 경우를 위해 사용
// - nil => null과 같은 의미

var carName: String? // 값이 있을수도 없을수도
carName = nil
carName = "Porsche"

// 최애하는 연예인의 이름을 담는 병수 작성하기
var favoriteStar: String? = nil

// let num = Int("10") -> 타입은 뭘까?
let num = Int("10") // --> Int옵셔널
let num1 = Int("10하이")

// 고급 기능 4가지

// Forced unwrapping
// ==> 옵셔널에서 강제로 값을 가져옴 / 값이 없으면 오류 발생
var car:String?
car = nil
print(carName!)
//print(car!) ==> 오류 발생
// Optional binding (if let)
// ==> 매끄럽게 값을 가져옴
if let unwrappedCarName = carName {
    print(unwrappedCarName)
} else {
    print("Carname이 없습니다")
}
// ===> 값이 있는 경우

if let unwrappedCarName = car {
    print(unwrappedCarName)
} else {
    print("Carname이 없습니다")
}
// ===> 값이 없는 경우

func printParsedInt(from: String) {
    if let parsedInt = Int(from) {
        print(parsedInt)
    } else {
        print("Int로 컨버팅 안됨")
    }
}
//printParsedInt(from: "100")
printParsedInt(from: "안뇽안녕")

// Optional binding (guard)
// ==> 매끄럽게 값을 가져옴
// 복잡도가 올라가는 경우 ==> 복잡도를 낮추기 위해서 guard사용

func printParsedIntGuard(from: String) {
    guard let parsedInt = Int(from) else {
        print("Int로 컨버팅 안됨")
        return
    }
    print(parsedInt)
}

// Nil coalescing
// ==> 값이 없다면 default값을 줌
//carName = "페라리"
let myCarName:String = carName ?? "포르쉐" // 값이 없으면 뒤에 있는 값을 default로 가짐
