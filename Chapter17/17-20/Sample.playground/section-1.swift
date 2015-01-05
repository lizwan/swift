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
    
    var SSN = ""
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
        set {
            var str = newValue  //newValue 라는 숨겨진 기본 파라미터가 있기 때문에 set 블럭에 파라미터 없이 사용가능
            
            var components = Array(SSN)
           
            if newValue == "M" {
                components[7] = "1"
            }
            else if newValue == "F" {
                components[7] = "2"
            }
            else {
                // do nothing
            }
            
            SSN = String(components)
        }
    }
}

var p = Person()
p.SSN = "830317-1000000"

if let gender = p.gender {
    switch gender {
    case "M":
        println("\(p.fullName) is male.")
    case "F":
        println("\(p.fullName) is female.")
    default:
        println("\(p.fullName) is alien.")
    }
}

p.gender = "F"
println(p.SSN)


/*

- get 블럭은 반드시 구현
- set 블럭은 선택사항
- get 만 구현된 계산 속성을 "읽기전용 계산속성" Read-only Computed Property라고 함.

*/