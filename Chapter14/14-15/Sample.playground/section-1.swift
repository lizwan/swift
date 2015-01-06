// ch.14.함수.06.파라미터 기본값.14-15.외부 파라미터 이름 생략
func saySomething(_ what: String = "hello") {   //기본값이 지정되어 있지만 외부 파라미터이릉으로 사용 안하려면 _ 처리
    println(what)
}

saySomething("Bonjour")
//saySomething(what :"Bonjour")
