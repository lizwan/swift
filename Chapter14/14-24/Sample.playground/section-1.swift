// ch.14.함수.10.내포된함수(Nested Function).14-24.Nested Function
func select(op: String) -> ((Int, Int) -> Int)? {
    func add(a: Int, b: Int) -> Int {
        return a + b
    }
    
    func subtract(a: Int, b: Int) -> Int {
        return a - b
    }
    
    func multiply(a: Int, b: Int) -> Int {
        return a * b
    }
    
    func divide(a: Int, b: Int) -> Int {
        return a / b
    }
    
    switch op {
    case "+":
        return add
    case "-":
        return subtract
    case "*":
        return multiply
    case "/":
        return divide
    default:
        return nil
    }
}

var op = "+"
var f: ((Int, Int) -> Int)? = select(op);

if f != nil {
    println("Result: \(f!(2, 3))")
}

/*
각 함수를 select 함수 외부에서 직접 호출할 수는 없지만 리턴된 함수를 통해서 내포된 함수를 간접적으로 호출할 수 있는 것입니다.
*/
