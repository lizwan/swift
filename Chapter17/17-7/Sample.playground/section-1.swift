
// 멤버별 생성자(memnerwise Initializer) 사용한 속성 초기화 : 자동으로 제공
struct MyStruct {
    var property: Int
}

var myStruct: MyStruct = MyStruct(property: 0); //속성의 기본값 지정
myStruct.property = 10

/*

- Swift의 구조체
ㄴ struct 태그 쓸 필요 없음.
ㄴ 생성자를 지정하거나 속성의 기본값을 지정하여 구조체의 모든 속성이 선언과 동시에 초기화 되도록 구현해야 함.

*/
