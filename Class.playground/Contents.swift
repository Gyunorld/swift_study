import UIKit

// Class
// 관계가 있는 것들끼리 묶어서 표현한 것 --> Object = Data + Property
// Stack || Heap

struct PersonStruct {
    var firstName: String
    var lastName: String
    
    var fullName: String {
        return "\(firstName) \(lastName)"
    }
    
    mutating func uppercaseName() {
        firstName = firstName.uppercased()
        lastName = lastName.uppercased()
    }
}

class PersonClass {
    var firstName: String
    var lastName: String
    
    init(firstName: String, lastName: String) {
        self.firstName = firstName
        self.lastName = lastName
    }
    
    var fullName: String {
        return "\(firstName) \(lastName)"
    }
    
    func uppercaseName() {
        firstName = firstName.uppercased()
        lastName = lastName.uppercased()
    }
}

var personStruct1 = PersonStruct(firstName: "Jason", lastName: "Lee")
var personStruct2 = personStruct1

var personClass1 = PersonClass(firstName: "Jason", lastName: "Lee")
var personClass2 = personClass1

personStruct2.firstName = "Jay"
personStruct1.firstName
personStruct2.firstName
// Sturct는 다른 이름으로 출력

personClass2.firstName = "Jay"
personClass1.firstName
personClass2.firstName
// Class는 같은 이름으로 출력

personClass2 = PersonClass(firstName: "Alexander", lastName: "Arnold")
personClass1.firstName
personClass2.firstName
// Class는 새로운 인스턴스를 만들면 다른 값을 바라보고 있음

personClass1 = personClass2
personClass1.firstName
personClass2.firstName
// Class는 서로 같은 방향을 바라보게 수정할 수 있음

// Struct 사용
// 1. 두 object를 "같다,다르다"로 비교해야 하는 경우
// 2. 복사된 각 객체들이 독립적인 상태를 가져야 하는 경우
// 3. 코드에서 오브젝트의 데이터를 여러 스레드에 결쳐 사용할 경우

// Class 사용
// 1. 두 object의 인스턴스 자체가 같음을 확인해야 할 때
// 2. 하나의 객체가 필요하고, 여러 대상에 의해 접근되고 변경이 필요한 경우

// 스위프트는 Struct를 선호함
// stackoverflow보다는 공식문서 많이 보기
