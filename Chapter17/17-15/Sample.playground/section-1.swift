import Foundation

class Contact {
    var email: String?  //optional로 선언되었기 때문에 초기값 지정안해줘도 nil로 초기화
    var mobile: String?
    var fax: String?
    
    init() {
        println("new Contact instance")
    }
}

class Person {
    var fullName = ""
    var birthDate = NSDate()
    
    lazy var contact = Contact()// ①    lazy로 선언된 지연저장속성이기 때문에 초기화 해도 인스턴스가 바로 생성되지 않늗다.
}

var p = Person()// ②    Contact 속성은 생성되지 않은 상태
p.contact.email = "johndoe@whoami.com"// ③ Contact속성에 접근할 때 비로서 인스턴스 생성되고 생성자에 포함된 로그가 출력

/*

- 지연저장속성은 인스턴스 초기화 시점과 관계없이 속성접근시점에 값이 할당되기 때문에 반드시 var로 선언해야 한다.
- var와 반대로 let은 인스턴스초기화가 완료되기 전에 초기화되어야 하기 때문에 사용되면 안된다.

*/