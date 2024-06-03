import UIKit

// Structure
// 문제 : 가장 가까운 편의점 찾기

//거리구하는 함수
func distance(current: Location, target: Location) -> Double {
    let distanceX = Double(target.x - current.x)
    let distanceY = Double(target.y - current.y)
    let distance = sqrt(distanceX * distanceX + distanceY * distanceY)
    return distance
}

struct Location {
    let x: Int
    let y: Int
}

struct Store {
    let loc: Location
    let name: String
    let deliveryRange = 2.0
    
    func isDelivaerable(userLoc: Location) -> Bool {
        let distanceToStore = distance(current: userLoc, target: loc)
        return distanceToStore < deliveryRange
    }
}

// 현재 스토어 위치들
let store1 = Store(loc: Location(x: 3, y: 5), name: "gs")
let store2 = Store(loc: Location(x: 4, y: 6), name: "seven")
let store3 = Store(loc: Location(x: 1, y: 7), name: "cu")


// 가장 가까운 스토어를 프린트하는 함수
func printColsestStore(currentLocation: Location, stores:[Store]) {
    var closestStoreName = ""
    var closestStoreDistance = Double.infinity
    var isDeliverable = false
    for store in stores {
        let distanceToStore = distance(current: currentLocation, target: store.loc)
        closestStoreDistance = min(distanceToStore, closestStoreDistance)
        if  closestStoreDistance == distanceToStore {
            closestStoreName = store.name
            isDeliverable = store.isDelivaerable(userLoc: currentLocation)
        }
    }
    print("Closet store: \(closestStoreName), isDeliverable: \(isDeliverable)")
}

// Stores Array 세팅, 현재 내 위치 세팅
let myLocation = Location(x: 2, y: 5)
let stores = [store1,store2,store3]

// printClosestSotre 함수 이용해서 현재 가장 가까운 스토어 출력하기
printColsestStore(currentLocation: myLocation, stores: stores)

// 코드 개선하기
// - 위치 구조체 만들기
// = store 구조체 만들기

// 도전 과제
// 1. 강의 이름, 강사 이름, 학생수를 가지는 Struct 만들기 (Lecture)
struct Lecture {
    let title: String
    let professor: String
    let studentno: Int
}
// 2. 강의 Array와 강사이름을 받아서, 해당 강사의 강의 이름을 출력하는 함수 만들기
func printLectureTitle(from professor: String, lectures: [Lecture]) {
//    var lectureName = ""
//    for lecture in lectures {
//        if professor == lecture.professor{
//            lectureName = lecture.title
//        }
//    }
//    closure로 만드는 법
    let lectureName = lectures
        .first { (lec) -> Bool in
            return lec.professor == professor
        }?.title ?? ""
    
    print("해당 강사님의 강의명은 \(lectureName)입니다.")
}

// 3. 강의 3개 만들고 강사이름으로 강의 찾기

let lec1 = Lecture(title: "iOS Basic", professor: "Jason", studentno: 5)
let lec2 = Lecture(title: "iOS Advanced", professor: "Jack", studentno: 5)
let lec3 = Lecture(title: "iOS Pro", professor: "Jim", studentno: 5)
let lectures = [lec1,lec2,lec3]

 printLectureTitle(from: "Jim", lectures: lectures)
