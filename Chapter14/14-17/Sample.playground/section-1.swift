// ch.14.함수.07.가변 인자 파라미터.14-17.Swift의 가변 인자 파라미터 함수
func average(str : String,num: Double...) -> Double {    // ... 이므로 단순하고 직관적, 가변인자 파라미터 목록의 마지막에 위치해야함. 기본값을 가진 파라미터가 존재해도 동일함.
    var total = 0.0
    for n in num {
        total += n
    }
    
    return total / Double(num.count)
}

average("te",1, 2, 3, 4)
