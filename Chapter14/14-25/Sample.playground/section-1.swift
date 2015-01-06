// ch.14.함수.11.Curried Functions.14-25.currying
func add(a: Int, b: Int) -> Int {
    return a + b
}

func addCurried(a: Int) -> (Int -> Int) {
    println(a)
    func addInternal(b: Int) -> Int {
        println(a)
        println(b)
        return a + b
    }
    
    return addInternal
}

var result = addCurried(1)(2)   //chain

/*

- 여러개의 파라미터를 가진 함수를 하나의 파라미터를 가진 여러 함수로 분리하는 기법
- 실행에 따라 변경되는 일부 파라미터를 나중에 전달할 수 있어서 함수를 객체처럼 추상화 가능.

*/