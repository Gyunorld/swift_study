import UIKit

// 1. 최애 음식이름을 담는 변수를 작성하기 (String)
    var favoriteFoodName: String?
   favoriteFoodName = "치킨"
// 2. 옵셔널 바인딩을 이용해서 값을 확인하기
if let checkFavorite = favoriteFoodName {
    print(checkFavorite)
} else {
    print("좋아하는 음식이 없어요...")
}
// 3. 닉네임을 받아서 출력하는 함수 만들기(조건 입력 parameter는 String?)
func printNickName(name: String?) {
    guard let nickName = name else {
        print("별명이 없어요...")
        return
    }
    print(nickName)
}

printNickName(name: "곰돌이")
printNickName(name: nil)
