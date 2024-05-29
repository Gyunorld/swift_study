import UIKit

// Set
// 순서없음
// 중복이 없는 고유 요소들

var someSet: Set<Int> = [1, 2, 3, 1, 2] // 중복되는 값이 있어도 하나만 표시함

someSet.isEmpty
someSet.count

someSet.contains(4)
someSet.contains(1)

//Insert
someSet.insert(5)
someSet

//Remove
someSet.remove(1)
someSet
