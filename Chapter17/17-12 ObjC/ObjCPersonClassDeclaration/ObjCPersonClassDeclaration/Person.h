//
//  Person.h
//  ObjCPersonClassDeclaration
//
//  Created by Keun young Kim on 2014. 10. 24..
//  Copyright (c) 2014년 Keun young Kim. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject

@property (strong, nonatomic) NSString* fullName;
@property (strong, nonatomic) NSDate* birthDate;

@end

/*
- Objective-C 에서는 @property로 속성을 선언하면서 속성의특성(Attribute)도 함께 지정한다.(strong, nonatomic)
- 특성을 기반으로 내부저장소를 생성하고 getter, setter 메소드를 자동으로 생성한다. (접근자 메소드 합성:Accessor Method Synthesize)
- 이렇듯 속성과 속성의 내부 저장소에 모두 접근할 수 있기 때문에 두가지 방식을 혼동하지 않도록 접근방식을 구별해서 사용한다.

 self.fullName = @"Jane doe";   //접근자 메소드를 통해 내부저장소에 접근하는 방식
 _fullName = @"John doe";       //속성과 연관된 내부 저장소에 직접 접근하는 방식
 
 -> 이처럼 두가지 방식을 사용할 수 있기에 속성이 2개인것 같은 모호함을 가지고 있음. 혼란 야기
 -> swift는 별도 내부 저장소가 존재하지 않고 속성 선언 자체가 값이 저장되는 변수나 상수를 선언하는 것이기 때문에 모호함이 없다.(접근자 메소드 합성도 필요 없음)
 
 
 
 
- Swift -----------------------
 import Foundation
 
 class Person {
   var fullName: String = ""
   var birthDate: NSDate
 }
-------------------------------

 
 
*/