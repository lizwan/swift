import Foundation

struct Contact {
    var email: String?
    var mobile: String?
    var fax: String?
    
    init() {
        println("new Contact instance")
    }
}

class Person {
    var fullName = ""
    var birthDate = NSDate()
    
    lazy var contact = Contact()
}

var p = Person()
p.contact.email = "johndoe@whoami.com"


/*

class 를 sturc 로 바꾸어도 동일하다.

*/