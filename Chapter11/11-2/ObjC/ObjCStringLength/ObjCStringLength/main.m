//
//  main.m
//  ObjCStringLength
//
//  Created by Keun young Kim on 2014. 10. 23..
//  Copyright (c) 2014년 Keun young Kim. All rights reserved.
//

#import <UIKit/UIKit.h>

int main(int argc, char * argv[]) {
    NSString* emptyString = @"";
    if ([emptyString length] == 0) {
        NSLog(@"Empty");
    }
    
    if ([emptyString isEqualToString:@""]) {
        NSLog(@"Empty");
    }
}
