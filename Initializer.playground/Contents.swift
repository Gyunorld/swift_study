import UIKit

// 생성자

// 기존의 코드
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
    
    override init(firstName: String, lastName: String) {
        super.init(firstName: firstName, lastName: lastName)
    }
    
    convenience init(student: Student) {
        self.init(firstName: student.firstName, lastName: student.lastName)
    }
}

// 학생인데 운동선수
class StudentAthelete: Student {
    var minimumTrainigTime: Int = 2
    var trainedTime: Int = 0
    var sports: [String]
    
    init(firstName: String, lastName: String, sports: [String]) {
        //Phase 1
        self.sports = sports
//        self.train() --> 에러 발생
        super.init(firstName: firstName, lastName: lastName)
        //Phase 2
        self.train()
    }
    
    // 간단한 initialize
    convenience init(name: String){
        self.init(firstName: name, lastName: "", sports:[])
    }
    
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

let student1 = Student(firstName: "Jason", lastName: "Lee")
let student1_1 = Student(student: student1)
let student2 = StudentAthelete(firstName: "Jay", lastName: "Lee1", sports: ["Football"])
let student3 = StudentAthelete(name: "Mike")

// 생성시 2단계
// Phase 1
// StudentAthlete -> Student -> Person
// Phase 2
// Person -> Student -> StudentAthlete
// 안정적인 코드를 위한 규칙

// 필요에 따라서 생성자를 수정 가능함
// 간단한 생성자도 생성 가능함
// 지정 생성자
// - 자신의 부모의 지정생성자 호출
// 간편 생성자
// - 간편 생성자는 같은 클래스의 생성자를 꼭 하나 호출해야함
// - 궁극적으로는 지정 생성자
