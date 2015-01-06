// ch.14.함수.08.입출력 파라미터.14-19.입출력 파라미터로 구현한 swapNumbers 함수
func swapNumbers(inout a: Int, inout b: Int) {
    let tmp = a;
    a = b;
    b = tmp;
}

var foo = 10
var bar = 20

swapNumbers(&foo, &bar) //inout으로 선언된 파라미터를 함수에 전달할 때는 반드시 파라미터 앞에 &를 붙인다.

println(foo)
println(bar)


/*

- swapNumbers 함수가 foo,bar의 값을 변경하고 그 결과가 함수 호출후에도 유지되도록 하려면 입출력 파라미타(in-Out Parameter)를 사용한다.
- 제약사항
ㄴ in-Out Parameter는 기본값을 가질수 없음.
ㄴ 가변인자 파라미터를 입출력 파라미터로 선언할 수 없다. (var a:Int, var b:Int)
ㄴ inout, var, let은 파라미터 선언시 서로 베타적이기 때문에 동시에 사용 불가 ( inout a:Int, var b:Int )

*/