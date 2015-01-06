// ch.14.함수.14-2.Swift 함수의 또 다른 형태
func doSomething(()) {  // -> 리턴형 생략하면 void
    println("Something fun to do on Swift")
    return ()   //() 때문에 오류가 나지 않음.
}

doSomething()

/*

- 이러한 코드는 거의 사용되지 않음.

*/