// ch.14.함수.05.Parameter Names.14-13.파라미터 이름과 #
func replace(#source: String, #target: String, #replace: String) -> String {
    var ret = ""
    // some code...
    return ret
}

let str = "Lorem ipsum dolor sit amet"
var result = replace(source: str, target:" ", replace:"#")

/*

- 외부파라미터이름과 내부파라미터이름과 동일해도 에러는 안나지만 좋지 않다.
- 이런 문제를 해결하기 위해 -> #

*/