// 구조체 속성에 기본값을 지정가능
struct MyStruct {
    var property: Int = 0
}

//var myStruct: MyStruct  // Error, 선언만 하는 경우는 올바르게 초기화 되었다고 판단할 수 없음.
var myStruct: MyStruct = MyStruct() // MyStruct() 기본생성자를 통해 구조체 초기화해야 함.
myStruct.property = 10

/*

클래스와 구조체는 모두 사용자 정의 자료형(Custom Data Types)의 범주에 속하기 때문에
Objective-C 와 마찬가지로 CamelCase 형태로 작명

*/

