// ch.14.함수.05.Parameter Names.14-11.stringByReplacingOccurrencesOfString:withString: 메소드의 Swift 구현
func replace(source: String, target: String, replace: String) -> String {
    var ret = ""
    // some code...
    return ret
}

let str = "Lorem ipsum dolor sit amet"
var result = replace(str, " ", "#")

/*

[코드 14-10]
NSSearchPathForDirectoriesInDoamins(NSDocumentDirectory, NSUserDomainMask, YES);

- 함수 이름을 통해 함수역활을 파악할수 있지만 마지막 YES의 역활을 알 수 없다.
- 함수이름을 간결하게 유지하면서 Objective-C의 직관성을 제공하기 위해 -> External Parameter Name(외부파라미터이름)

- 문법 ----------------------------------------------------------
func <함수이름>(<외부 파라미터이름> <내부 파라미터이름>: <파라미터 자료형>) {
    //code
}
---------------------------------------------------------------
*/