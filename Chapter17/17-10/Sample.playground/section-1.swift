class MyClass {
    struct MyStruct {
        static var a = 0
    }
    
    enum MyEnum {
        case First, Second
    }
}

MyClass.MyStruct.a = 10// ①
var first = MyClass.MyEnum.First// ②

/*

04. 중첩형식
- 클래스, 구조체는 선언 내부에 클래스, 구조체, 열거형 선언 가능(Nested Type)
- (1),(2)와 같이 상위에 있는 자료형부터 단계적으로 접근해야 한다. 
*/