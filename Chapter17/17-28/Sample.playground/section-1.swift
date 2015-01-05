// ch17.06.생성자
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
    var fullName: String = "John doe" {
        willSet (newFullName) {
            println("Current fullName is \(fullName). New fullName is \(newFullName).")
        }
        didSet {
            println("Current fullName is \(fullName). Old fullName is \(oldValue).")
        }
    }
    
    var birthDate: NSDate? {
        if countElements(SSN) == 14 {
            var dateString = SSN.componentsSeparatedByString("-")[0]
            
            var formatter = NSDateFormatter()
            formatter.dateFormat = "yyMMdd"
            
            return formatter.dateFromString(dateString)
        }
        
        return nil
    }
    
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
    
    // Objective-C에서는 initWith패턴 사용해서 다양한 이름을 가진 생성자를 구현하였지만
    // 생성자 오버로딩을 지원하기 때문에 init이라는 이름만 사용가능
    // 파라미터 추가가능
    // swift는 에서는 클래스,구조체,열거형도 생성자를 가질수 있다.
    init() {
        // 값을 리턴하지 않는다.
    }
}

/*

- Objective-C의 기본 생성자 패턴 --------------------
- (instancetype)init
{
self = [super init];    //상위 클래스의 생성자를 호출하고
if (self) {

}

return self;    // 결과를 self에 할당
}
// self에 인스턴스 참조가 할당되어 있다면 상위 클래스의 생성자가 정상적으로 실행된것
// nil이 할당 되어 있다면 생성자에서 오류가 발생한 것임.
------------------------------------------------

- Person 클래스 인스턴스 생성 문법
var james = Person()
var isabel = Person()

- swift는 Objective-C와는 달리 생성자가 자동으로 생성되지 않기 때문에 하위 클래스는 생성자를 상속하거나 직접 생성자를 구현해야 한다.
*/
