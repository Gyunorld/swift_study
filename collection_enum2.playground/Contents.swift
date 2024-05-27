// Tuple
// 세부 데이터 접근시 데이터 이름이나 순서로 접근 가능함

var phone = (os: "iOS", model: "iPhone13")

phone.0 // iOS
phone.1 // iPhone13
phone.os // iOS

var rawPhone = ("iOS", "iPhone13") // ==> 이런식으로도 tuple생성가능
rawPhone.0
rawPhone.1  // 순서로만 접근 가능함
