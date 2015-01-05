import Foundation

//자료형에서 fullName 속성 생략 가능, 형식추론
struct Contact {
    var email: String?
    var mobile: String?
    var fax: String?
    
    init() {
        println("new Contact instance")
    }
}

class Person {
    var fullName: String = "John doe" { //속성 감시자를 추ㅏ하려면 반드시 속성의 자료형을 지정해야 함.
        willSet {
            println("Current fullName is \(fullName). New fullName is \(newValue).")
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
}

var p = Person()    //새로운 person 인스턴스가 생성될때 마다 fullName은 "John doe" 초기화하고 초기화 시점에는 속성감시자가 실행되지 않기 때문에 로그가 출력되지 않는다.
p.fullName = "James"
p.fullName = "Isabel"

/*

# 속성 감시자
- 속성값의 변화를 감시하고 특정코드를 실행하는 수단을 제공
- 다른 언어에서 옵저버 패턴 Observer Patter, 통지패턴 Notification Pattern, 대리자 패턴 Delegate Pattern 와 유사한 기능
- Objective-C 의 KVO(Key-Value Observing), 로컬 통지(Local Notification)
- swift의 속성 감시자 장점
ㄴ 옵저버나 델리게이트를 등록하고 별도의 리스너 메소드 구현이 필요없고 속성선언과 같은 위치에서 감시자를 구현하기 때문에 클래스 속성 간의 상호작용 등을 더욱 쉽게 파악 할 수 있다.
- 속성 감시자는 저장 속성에 한해서만 사용가능하고 지연저장속성,계산속성에서는 속성감시자 사용 불가
- 속성감시자 블럭은 처음 초기화 되는 시점에서 실행되지 않기 때문에 초기화와 관련된 코드를 구현하기에는 적합하지 않다.


- 문법 ------------------------
var <저장 속성 이름>:<자료형> {
//속성값이 설정되기 전에 호출, newValue 로 파라미터 접근 가능
willSet {
}

//설정된후에 호출되면 oldValue 파라미터를 통해 이전값에 접근 가능
didSet {
}

//willSet, didSet 둘중 필요한것 하나만 설정해서 사용 가능
}
------------------------------

- 사용자 정의 파라미터 사용
willSet (newFullName) {
    println(\(fullName) and \(newFullName) )
}

*/
