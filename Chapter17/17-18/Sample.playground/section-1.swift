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
    var fullName = "John doe"
    var birthDate = NSDate()
    
    lazy var contact = Contact()
    
    //코드 내용은 중요치 않음. 문법만 눈여겨 볼것
    //주민번호
    var SSN = ""
    //성별
    var gender: Character? {
        get {
            if countElements(SSN) == 14 {
                var components = Array(SSN)
                var ch = components[7]
                
                switch ch {
                case "1":
                    return "M"
                case "2":
                    return "F"
                default:
                    return nil
                }
            }
            
            return nil
        }
        set(newGender) {
            var components = Array(SSN)
            
            if newGender == "M" {
                components[7] = "1"
            }
            else if newGender == "F" {
                components[7] = "2"
            }
            else {
                // do nothing
            }
            
            SSN = String(components)
        }
    }
}


/*

계산 속성
- 속성 값에 접근할 때마다 계산을 수행
- 계산 될때마다 변경될 수 있기 때문에 var로 선언
- 문법

var <계산 속성 이름>: <자료형> {
    get {
    }
    set {
    }
}

*/
