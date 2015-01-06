func addCurried(a: Int)(b: Int) -> Int {
    return a + b
}

var result = addCurried(1)(b: 2)

let addFunc = addCurried(1)
result = addFunc(b: 5)

result = addFunc(b: 7)

result = addFunc(b: 9)

/*

- 개수 제한 없는 파라미터
- 두 개 이상의 리턴값
- 함수형 언어 특징
ㄴ 함수 타입
ㄴ 함수 타입을 이용한 파라미터로서의 함수와 리턴값으로서의 함수
ㄴ 중첩퇸 함수

*/