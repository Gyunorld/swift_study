import UIKit

// 기존의 코드
//struct Grade {
//    var letter: Character
//    var points: Double
//    var credits: Double
//}
//
//class Person {
//    var firstName: String
//    var lastName: String
//    
//    init(firstName: String, lastName: String) {
//        self.firstName = firstName
//        self.lastName = lastName
//    }
//    
//    func printMyName() {
//        print("My name is \(firstName) \(lastName)")
//    }
//}
//
//class Student {
//    var grades: [Grade] = []
//    
//    var firstName: String
//    var lastName: String
//    
//    init(firstName: String, lastName: String) {
//        self.firstName = firstName
//        self.lastName = lastName
//    }
//    
//    func printMyName() {
//        print("My name is \(firstName) \(lastName)")
//    }
//    
//}

// 상속을 이용한 코드
struct Grade {
    var letter: Character
    var points: Double
    var credits: Double
}

class Person {
    var firstName: String
    var lastName: String
    
    init(firstName: String, lastName: String) {
        self.firstName = firstName
        self.lastName = lastName
    }
    
    func printMyName() {
        print("My name is \(firstName) \(lastName)")
    }
}

//     자식클래스: 부모클래스
class Student: Person {
    var grades: [Grade] = []
}

let jay = Person(firstName: "Jay", lastName: "Lee")
let jason = Student(firstName: "Jason", lastName: "Lee")

// Person이 가지고 있는 속성 모두 사용 가능
jay.firstName
jason.firstName

jay.printMyName()
jason.printMyName()

// Person은 Student의 프로퍼티에 접근 불가
let math = Grade(letter: "B", points: 8.5, credits: 3)
let history = Grade(letter: "A", points: 10.0, credits: 3)

jason.grades.append(math)
jason.grades.append(history)
//jay.grades
jason.grades.count

// 상속의 규칙
// 자식은 한 개의 superclass(부모클래스)만 상속 받음
// 부모는 여러 자식들을 가질 수 있음
// 상속의 깊이는 상관이 없음

// 학생인데 운동선수
class StudentAthelete: Student {
    var minimumTrainigTime: Int = 2
    var trainedTime: Int = 0
    func train() {
        trainedTime += 1
    }
}
// 운동선수인데 축구선수
class FootballPlayer: StudentAthelete {
    var footballTeam = "Liverpool"
    
    override func train() {
        trainedTime += 2
    }
}

// 상속의 깊이
//Person > Student > Athelete > Football Player

var athelete1 = StudentAthelete(firstName: "Yuna", lastName: "Kim")
var athelete2 = FootballPlayer(firstName: "Heungmin", lastName: "Son")

athelete1.firstName
athelete2.firstName

athelete1.grades.append(math)
athelete2.grades.append(math)

athelete1.minimumTrainigTime
athelete2.minimumTrainigTime

//athelete1.footballTeam --> 상속 관계 오류
athelete2.footballTeam

athelete1.train()
athelete1.trainedTime

athelete2.train()
athelete2.trainedTime

// Uppercasting
athelete1 = athelete2 as StudentAthelete
athelete1.train()
athelete1.trainedTime

// Downcasting
if let son = athelete1 as? FootballPlayer {
    print("--> team:\(son.footballTeam)")
}

// 상속 시 주의사항
// - 단일 책임
// - 타입이 분명해야 할 때
