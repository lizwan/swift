// ch.14.함수.04.튜플 리턴.14-9.옵셔널 튜플을 리턴하는 함수
func fetchName(id: Int) -> (statusCode: Int, name: String)? {   // nil이 될수 있으므로 Optional Tuple처리, Optional 안하면 에러표시
    // some code...
    if id <= 0 {
        return nil
    }
    
    var code = 200
    var fetchedName = "James"
    
    return (code, fetchedName)
}

if let result = fetchName(1) {
    println(result)
    println(result.statusCode)
    println(result.name)
}
