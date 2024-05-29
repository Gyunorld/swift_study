import UIKit

// Dictionary
// - 순서가 없음
// - key와 value값이 있음

var scoreDic : [String: Int] = ["Jason": 80, "Jay": 95, "Jake": 90]
//var scoreDic : Dictionary<String, Int> = ["Jason": 80, "Jay": 95, "Jake": 90]

// 값이 없을 때  nil을 반환하므로 안정적으로 값을 가져오기 위해서 optional 사용
if let score = scoreDic["Jason"] {
    score
}else{
    //..score없음
}
scoreDic["Jay"]
scoreDic["Jerry"] // 값이 없으면 nil

//scoreDic = [:] // 빈 값으로 만드는 방법
scoreDic.isEmpty
scoreDic.count

//UPDATE
// key를 입력하고 바꿀 값 입력하기
scoreDic["Jason"] = 99
scoreDic

//INSERT
scoreDic["Jack"] = 100
scoreDic

//DELETE
scoreDic["Jack"] = nil
scoreDic

//For Loop
for (name,score) in scoreDic {
    print("\(name), \(score)")
}

for key in scoreDic.keys{
    print(key)
}

// 1. 이름, 직업, 도시에 대해서 본인의 딕셔너리 만들기
var myinfoDic : [String:String] = ["이름":"김민규","직업":"무직","도시":"서울"]
// 2. 여기서 도시를 부산으로 업데이트 하기
myinfoDic["도시"] = "부산"
// 3. 딕셔너리를 받아서 이름과 도시 프린트하는 함수 만들기
func printNameAndCity(dic: [String:String]){
    if let name = dic["이름"],let city = dic["도시"] {
        print(name, city)
    } else {
        print("찾을 수 없습니다.")
    }
}

printNameAndCity(dic: myinfoDic)
