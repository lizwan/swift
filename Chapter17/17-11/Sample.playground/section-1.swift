import Foundation

class Person {
    var fullName: String = ""   //var 로 선언된것을 Variable Stored Property라고 하고 언제든지 변경 가능.
    var birthDate: NSDate = NSDate()
}

let person = Person()   //var 와 반대로 let은 초기화된후 값을 변경할 수 없는 속성을 Constant Stored Property라 함.

/*

05. 속성
- Property는 클래스,구조체가 encapsulation하는 값으로 Member라 부른다.
- 속성값을 읽거나 새로운 값을 할당할 때는 Dot Syntac를 사용
- Objective-C와 달리 인스턴스변수나 속성을 따로 구분하지 않는다.

*/