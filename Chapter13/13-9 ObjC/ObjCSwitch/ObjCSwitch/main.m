//
//  main.m
//  ObjCSwitch
//
//  Created by Keun young Kim on 2014. 10. 23..
//  Copyright (c) 2014년 Keun young Kim. All rights reserved.
//

#import <UIKit/UIKit.h>

int main(int argc, char * argv[]) {
    NSTextAlignment textAlignment = NSTextAlignmentCenter;
    
    switch (textAlignment) {
        case NSTextAlignmentLeft:
            NSLog(@"Left");
            break;// !!!
        case NSTextAlignmentCenter:
            NSLog(@"Center");
            break;// !!!
        case NSTextAlignmentRight:
            NSLog(@"Right");
            break;// !!!
        default:
            NSLog(@"Oops!");
    }
}
