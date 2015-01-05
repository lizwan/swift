//
//  main.m
//  ObjCStruct
//
//  Created by Keun young Kim on 2014. 10. 24..
//  Copyright (c) 2014년 Keun young Kim. All rights reserved.
//

#import <UIKit/UIKit.h>

struct MyStruct {
    NSInteger property;
};

int main(int argc, char * argv[]) {    
    
    struct MyStruct myStruct;  //여러모로 비효율적? 이기 때문에 typedef을 사용해
    myStruct.property = 10;
    
    typedef struct MyStruct MyStruct;   //구조체 자료형에 동일한 이름의 별명을 붙여 사용한다.
    
    MyStruct anotherMyStruct;           //별도의 태그 없이 구조체 자료형을 사용할 수 있다.
    anotherMyStruct.property = 10;
}

/*

 typedef를 지정하면 type으로 정의 되기 때문에 다른 자료형 이름으로 사용가능하다.
 
 */