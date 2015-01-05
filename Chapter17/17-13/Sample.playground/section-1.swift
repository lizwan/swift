import Foundation

class Person {
    var fullName: String = ""
    var birthDate: NSDate = NSDate()
}

/*

- Objective-C 모든속성은 기본적으로 nil, 0 으로 초기화
- Swift는 자동 초기화 안되기 때문에 선언과 동시에 초기화, 생성자 구현에서 초기값 할당 해야 한다.

*/