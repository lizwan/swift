// ch.14.함수.05.Parameter Names.14-12.외부 파라미터 이름
func replace(sourceString source: String, targetString target: String, replaceString replace: String) -> String {
    var ret = ""
    // some code...
    return ret
}

let str = "Lorem ipsum dolor sit amet"
//var result = replace(str, " ", "#")// 오류
var result = replace(sourceString: str, targetString:" ", replaceString:"#")

/*

- 문법 ----------------------------------------------------------
func <함수이름>(<외부 파라미터이름> <내부 파라미터이름>: <파라미터 자료형>) {
//code
}
---------------------------------------------------------------

*/