import UIKit

//Array
var evenNumbers: [Int] = [2,4,6,8]
//let evenNumbers2: Array<Int> = [2,4,6,8]

evenNumbers.append(10)  // 배열에 한 개의 요소 추가
evenNumbers += [12, 14, 16] // 배열에 여러 개의 요소 추가
evenNumbers.append(contentsOf: [18,20]) // 배열에 여러 개의 요소 추가

//let isEmpty = evenNumbers.isEmpty

evenNumbers.count // 갯수

print(evenNumbers.first) // 첫번째 요소가 있을수도 없을수도 있어서 optional

//let firstItem = evenNumbers.first
let lastItem = evenNumbers.last

if let firstElement = evenNumbers.first {
    print("--> first item is :\(firstElement)")
}

evenNumbers.min()
evenNumbers.max()

var firstItem = evenNumbers[0] // 첫번째와 마지막만 따로 first와 last로 호출. 나머지는 index 순서
var secondItem = evenNumbers[1]
var tenthItem = evenNumbers[9]

//var twentyItem = evenNumbers[19] // 오류발생

let firstThree = evenNumbers[0...2] // 처음 3개

evenNumbers.contains(3)
evenNumbers.contains(4)

evenNumbers.insert(0, at: 0)    // 특정값을 특정 인덱스에 삽입
evenNumbers

//evenNumbers.removeAll()
evenNumbers.remove(at: 0)
evenNumbers

//UPDATE
evenNumbers[0] = -2
evenNumbers

evenNumbers[0...2] = [-2, 0, 2] // 여러 개를 동시에 변경할 수 있음
evenNumbers

//evenNumbers.swapAt(0, 9)

//for num in evenNumbers {
//    print(num)
//}

// 순서와 값을 모두 출력
for(index, num) in evenNumbers.enumerated() {
    print("idx:\(index), value:\(num)")
}

let firstThreeRemoved = evenNumbers.dropFirst(3) // 앞에 3개만 빼고 return해줌 --> last로 바꾸면 뒤에서 3개도 가능
firstThreeRemoved

let firstThrees = evenNumbers.prefix(3) // 앞에서 3개 ==> 원래의 배열에 영향을 주지 않음
firstThrees

let lastThrees = evenNumbers.suffix(3) // 앞에서 3개
lastThrees
