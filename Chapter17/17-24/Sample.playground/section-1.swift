//Days는 열거형에 형식 속성을 추가한 코드
enum Days: Int {
    //static 키워드를 사용함.
    static var targetLocale = "en"  //열거형의 모든 인스턴스가 공유하는 로케일 문자열 속성
    static var localizedDays: [String] {    //localizeDays속성은 targetLocal 속성의 값에 해당되는 요일 이름을 문자열 배열로 리턴하는 읽기 전용 계산 속성
        switch Days.targetLocale {
        case "kr":
            return ["일요일", "월요일", "화요일", "수요일", "목요일", "금요일", "토요일"]
        default:
            return ["Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday"]
        }
    }
    
    case Sunday, Monday, Tuesday, Wednesday, Thursday, Friday, Saturday
}

var today = Days.Friday //인스턴스 이름이 아닌 형식 이름으로 접근 Days형식
var tomorrow = Days.Saturday

//today.targetLocale = "us"         // Error

Days.targetLocale = "us"    //Days형식에 targetLocale 값 변경
println(today.rawValue)
println(Days.localizedDays[today.rawValue])
println(Days.localizedDays[tomorrow.rawValue])

Days.targetLocale = "kr"
println(Days.localizedDays[today.rawValue])
println(Days.localizedDays[tomorrow.rawValue])


/*

# 형식속성
- 저장 속성, 계산 속성은 인스턴스와 연관되어 있는 속성이기 때문에 인스턴스마다 다른 값을 가질 수 있다.
- 형식 속성은 반대로 클래스, 구조체, 열거형과 같은 자료형 자체에 연관되어 있는 속성이고 동일한 자료형으로 생성된
모든 인스턴스는 형식속성에 저장되어 있는 값을 공유한다.

- 형식 속성은 
ㄴ 저장 형식 속성 : 구조체, 열거형
ㄴ 계산 형식 속성 : 구조체, 열거형, 클래스

- 형식 속성은 인스턴스가 아닌 자료형에 연관된 속성이기 때문에 생성자를 통해 초기화 불가
- swift는 C#의 static 생성자가 없으므로 반드시 선언과 동시에 값을 초기화 해야 한다.

- 클래스 형식 속성을 선언하는 문법 -----------------------
class <클래스 이름> {
    class var <게산 속성 이름>: <자료형> {
        get {
        }
        set {
        }
    }

}
--------------------------------------------------

*/
