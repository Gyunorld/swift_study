import UIKit

//Protocol
//Struct를 protocol을 이용하여 수정하기

struct Lecture: CustomStringConvertible {
    var description: String{
        return "Title: \(title), Professor: \(professor)"
    }
    let title: String
    let professor: String
    let studentno: Int
}

func printLectureTitle(from professor: String, lectures: [Lecture]) {
    var lectureName = ""
    for lecture in lectures {
        if professor == lecture.professor{
            lectureName = lecture.title
        }
    }
    print("해당 강사님의 강의명은 \(lectureName)입니다.")
}

let lec1 = Lecture(title: "iOS Basic", professor: "Jason", studentno: 5)
let lec2 = Lecture(title: "iOS Advanced", professor: "Jack", studentno: 5)
let lec3 = Lecture(title: "iOS Pro", professor: "Jim", studentno: 5)
let lectures = [lec1,lec2,lec3]

 printLectureTitle(from: "Jim", lectures: lectures)

print(lec1)
