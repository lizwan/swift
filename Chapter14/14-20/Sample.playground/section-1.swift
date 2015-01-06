// ch.14.함수.09.Function Types.14-20.사칙연산 함수와 함수 형식
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

var calc: (Int, Int) -> Int = add
calc(1, 2)

// 파라미터로 함수의 사용 ------------------------------------------------------
func printMathResult(mathFunction : (Int, Int) -> Int, a: Int, b: Int) {
    println("\(a)와 \(b)의 연산 결과 : \(mathFunction(a,b))");
}

printMathResult(multiply, 100, 200)
//------------------------------------------------------------------------

// 리턴으로 함수의 사용 -------------------------------------------------------
/*
- (Bool) -> (Int) -> Int
 ㄴ Bool 파라미터를 가진 함수 return값이 "(Int) -> Int" 이다. (정수를 파라미터로 갖고 정수를 리턴한다.)

- (Int, Int) -> (Int, Int, Int) -> (Int, Int, Int, Int)
 ㄴ 두개의 파라미터를 갖고 함수를 리턴하는 이 리턴 함수가 다시 세 개의 정수형을 갖고 네 개의 정수형 리턴값을 갖는다.
*/

func increaseOne(input: Int) -> Int {
    return input + 1
}

func decreaseOne(input: Int) -> Int {
    return input - 1
}

func chooseFunction(operation: Bool) -> (Int) -> Int {
    return operation ? decreaseOne : increaseOne
}

var currentValue = 20
var myValue = chooseFunction(currentValue>0)
println("counting 시작")

while currentValue != 0 {
    println("\(currentValue)...")
    currentValue = myValue(currentValue)
}

println("counting 끝")
//------------------------------------------------------------------------

/*

09.Function Types

- 자료형과 리턴형으로 구성된 함수형식(funcgtion type)으로 표현함.
- C의 function pointer와 매우 유사
- First-class Citizen
1. 변수나 상수, 또는 데이터 모델의 멤버에 할당될 수 있다.
2. 파라미터로 전달될 수 있다.
3. 리턴값으로 사용할 수 있다.

14-20 ~ 14-23
*/
