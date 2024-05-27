import UIKit

// 1. 성, 이름을 받아서 fullname을 출력하는 함수 만들기
func myNameis(family_name: String, middle_name: String) {
    print("제 이름은 \(family_name)\(middle_name)입니다.")
}

myNameis(family_name: "김", middle_name: "덕배")
// 2. 1번에서 만든 함수인데, 파리미터 이름을 제거하고 fullname을 출력하는 함수 만들기
func myNameisTwo(_ family_name: String,_ middle_name: String) {
    print("제 이름은 \(family_name)\(middle_name)입니다.")
}

myNameisTwo("김","민규")
// 3. 성, 이름을 받아서 fullname return 하는 함수 만들기
func myNameisThree(family_name: String, middle_name: String) -> String {
    String("제 이름은 \(family_name)\(middle_name)입니다.")
}

print(myNameisThree(family_name: "김", middle_name: "민지"))
