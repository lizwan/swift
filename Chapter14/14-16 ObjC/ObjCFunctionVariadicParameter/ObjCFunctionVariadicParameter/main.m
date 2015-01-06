// ch.14.함수.07.가변 인자 파라미터.14-16.Objective-C의 가변 인자 파라미터 함수
#import <UIKit/UIKit.h>

double average(int cnt, ...) {
    int total = 0;
    
    va_list list;
    va_start(list, cnt);    //가변인자 초기화
    
    for (int ii = 0; ii < cnt; ii++) {
        total += va_arg(list, int); //가변인자 읽고
    }
    
    va_end(list);   //포인터 정리
    
    return (double)total / cnt;
}

int main(int argc, char * argv[]) {
    double result = average(4, 1, 2, 3, 4);
    NSLog(@"%f", result);
}
