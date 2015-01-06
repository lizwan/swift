// ch.14.함수.06.파라미터 기본값.14-14.파라미터의 기본값 지정
func saySomething(what: String = "Hello") { //기본값이 지정되어 있으면 외부+내부 파라미터 이름이 된다.
    println(what)
}
// test
// = "Hello"
//saySomething( "Bonjour")

saySomething()
// Hello

saySomething(what: "Bonjour")
// Bonjour


