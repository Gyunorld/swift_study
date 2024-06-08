import UIKit

//Property
// var로만 가능함
// java에서의 getter,setter와 같음
struct Person {
    var firstName: String {
//        willSet {
//            print("willSet: \(firstName) ----> \(newValue)")
//        }
        didSet {
            print("didSet: \(oldValue) ----> \(firstName)")
        }
    }
    // store property : 바뀐 시점을 알고 있음 --> didset으로 바뀐 시점을 확인할 수 있음
    var lastName: String
    
    lazy var isPopular: Bool = {
        if fullName() == "Jay Park" {
            return true
        } else {
            return false
        }
    }()
    
//    var fullName: String {
//        get{
//            return "\(firstName) \(lastName)"
//        }
//        set{
//            if let firstName = newValue.components(separatedBy: " ").first {
//                self.firstName = firstName
//            }
//            
//            if let lastName = newValue.components(separatedBy: " ").last {
//                self.lastName = lastName
//            }
//        }
//    }
    
//    var fullName: String {
//        return "\(firstName) \(lastName)"
//    }
    
    func fullName() -> String {
        return "\(firstName) \(lastName)"
    }
    static let isAlien: Bool = false
}

var person = Person(firstName: "Jason", lastName: "Lee")

//person.firstName
//person.lastName
//
//person.firstName = "Jim"
//person.lastName = "kim"
//
//person.firstName
//person.lastName
//
//person.fullName
//person.fullName = "Jay Park"
//person.firstName
//person.lastName
//
//Person.isAlien  
//// 타입 프로퍼티
//// 생성된 인스턴스와 달리 객체와 상관없이 만들 수 있음
//person.isPopular

person.fullName()

// Property
// - 호출시 값을 하나만 호출함
// Method
// - 하나의 기능을 수행
// 상활별 사용요령
// Computed Property
// 1. setter가 필요한 경우
// 2. setter가 필요하지않고 계산이 많이 필요하지 않거나 DB access 혹은 File io가 필요하지 않은 경우
//  Method
// 1. setter가 필요하지 않지만 계산이 많이 필요하거나 DB access 혹은 File io가 필요한 경우
