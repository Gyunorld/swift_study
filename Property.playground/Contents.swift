import UIKit

//Property
// var로만 가능함
// java에서의 getter,setter와 같음
struct Person {
    var firstName: String
    var lastName: String
    
    var fullName: String {
        get{
            return "\(firstName) \(lastName)"
        }
        set{
            if let firstName = newValue.components(separatedBy: " ").first {
                self.firstName = firstName
            }
            
            if let lastName = newValue.components(separatedBy: " ").first {
                self.lastName = lastName
            }
        }
    }
    static let isAlien: Bool = false
}

var person = Person(firstName: "Jason", lastName: "Lee")

person.firstName
person.lastName

person.firstName = "Jim"
person.lastName = "kim"

person.firstName
person.lastName

person.fullName
person.fullName = "Jay Park"
person.firstName
person.lastName

Person.isAlien  // 타입 프로퍼티
