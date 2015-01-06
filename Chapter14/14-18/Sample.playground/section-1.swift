// ch.14.함수.08.입출력 파라미터.14-18.두 값을 교환하는 함수
func swapNumbers(var a: Int, var b: Int) {
    let tmp = a;
    a = b;
    b = tmp;
}

var foo = 10
var bar = 20

swapNumbers(foo, bar)

println(foo)
println(bar)

// foo,bar가 같은 값을 가진 복사본이므로 함수의 결과가 외부의 영향을 주지 않으므로 원하는 결과가 나오지 않는다.
