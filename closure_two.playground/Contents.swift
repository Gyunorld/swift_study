import UIKit

// <Closure>
// [함수와 공통점]
//  - 인자 있음
//  - 값을 리턴
//  - 변수로 할당
//  - First class type
// [함수와 차이점]
//  - 이름이 없음
//  - func을 쓰지 않음

//{(parameters)->return type in
//  statements
//  }

//Example 1: Simple Closure

//let choSimpleClosure = {
//    
//}
//choSimpleClosure()

//Example 2: 코드블록을 구현한 Closure

//let choSimpleClosure = {
//    print("Hello, 클로져, 코로나 하이!")
//}
//
//choSimpleClosure()

//Example 3: 인풋 파라미터를 받는 Closure

let Example3: (String) -> Void = { name in
    print("Hello, 클로져, 코로나 하이! 나의 이름은 \(name)입니다!")
}

Example3("Minji")

//Example 4: 값을 리턴하는 Closure

let Example4: (String) -> String = { name in
    let message = "ios 개발,\(name) 경제적 자유를 얻자!!"
    return message
}

let result = Example4("민규")
print(result)

//Example 5: Closure를 파라미터로 받는 함수 구현

func someSimpleFunction(choSimpleClosure: ()->Void) {
    print("함수에서 호출이 되었어요")
    choSimpleClosure()
}

someSimpleFunction(choSimpleClosure: {
    print("Hello")
})

//Example 6: Trailing Closure

func Example6(message: String, choSimpleClosure: ()->Void) {
    print("함수에서 호출이 되었어요, 메세지는 \(message)")
    choSimpleClosure()
}

//Example6(message: "closure 연습하세요.", choSimpleClosure: {
//    print("Hello")
//})

// 위의 것을 축약한 형태 | 여러 개의 인자가 있으면 마지막 것은 생략가능함
Example6(message: "closure 연습하세요.") {
    print("Hello")
}
