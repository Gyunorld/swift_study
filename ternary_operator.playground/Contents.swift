// 삼항연산자
let num1 = 10
let num2 = -10

let result = (num2 > 0) ? "양수다" : "양수가 아니다"

// chap02_practice_01
let a = 9
let b = a % 2

var result1 = (b == 1) ? "홀수" : "짝수"

// chap02_practice_02
var age1 = 13
var age2 = 16
var age3 = 19

let result2 = (age1 <= 13) ? "어린이" : (age1 < 19) ? "청소년" : "성인"
let result3 = (age2 <= 13) ? "어린이" : (age2 < 19) ? "청소년" : "성인"
let result4 = (age3 <= 13) ? "어린이" : (age3 < 19) ? "청소년" : "성인"

// chap02_practice_03
var gender1 = "M"

let result5  = (gender1 == "M") ? "남자입니다" : (gender1 == "F") ? "여자입니다" : "잘못입력하셨습니다"

var gender2 = "F"

let result6 = (gender2 == "M") ? "남자입니다" : (gender2 == "F") ? "여자입니다" : "잘못입력하셨습니다"

// 삼항연산자 중첩 사용

var select = "Y"
var select1 = "N"
var select2 = "메롱"

let selected = (select == "Y") ? "YES!!!!!" : (select == "N") ? "NOPE!!!!!" : "YES와 NO 중에 골라주세요..."
let selected1 = (select1 == "Y") ? "YES!!!!!" : (select1 == "N") ? "NOPE!!!!!" : "YES와 NO 중에 골라주세요..."
let selected2 = (select2 == "Y") ? "YES!!!!!" : (select2 == "N") ? "NOPE!!!!!" : "YES와 NO 중에 골라주세요..."
