// ch.14.함수.04.튜플 리턴.14-8.튜플을 리턴하는 함수
func fetchName(id: Int) -> (statusCode: Int, name: String) {    //가독성을 위해 튜플의 이름을 지정한다.
    // some code...
    var code = 200
    var fetchedName = "James"
    
    return (code, fetchedName)  //여러개 값을 동시에 리턴
}

var result = fetchName(123)
println(result.statusCode)
println(result.name)

/*

- 만약 위 코드에서 code, fetchName 이 nil이 될수 있다면 -> 튜플을 옵셔널로 선언해야함. (?)

*/