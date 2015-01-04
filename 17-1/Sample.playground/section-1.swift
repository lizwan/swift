import UIKit

let startPoint = CGPoint(x: 0.0, y: 0.0)
var endPoint = startPoint

endPoint.x = 100
endPoint.y = 200



println("start point: {\(startPoint.x), \(startPoint.y)}")
println("end point: {\(endPoint.x), \(endPoint.y)}")


/*

- 메모리 영역에 대해서
 ㄴ Stack : 지역변수, 함수 파라미터, 리턴값이 저장
 ㄴ Heap : new, malloc의 함수를 사용해서 직접 생성한 메모리가 저장
 ㄴ Heap 영역은 직접 해지해야 하므로 java에서는 GC 가 Objective-C 에서는 ARC가 처리
 ㄴ static변수, 전역변수, 메소드 구현코드는 데이터 공간에 저장, 프로그램 종료시까지 유지

*/