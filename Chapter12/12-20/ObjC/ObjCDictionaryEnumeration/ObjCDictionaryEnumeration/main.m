//
//  main.m
//  ObjCDictionaryEnumeration
//
//  Created by Keun young Kim on 2014. 10. 23..
//  Copyright (c) 2014년 Keun young Kim. All rights reserved.
//

#import <UIKit/UIKit.h>

int main(int argc, char * argv[]) {
    NSMutableDictionary* countryCodes = [NSMutableDictionary dictionaryWithObjectsAndKeys:@"Korea, Republic of", @"KR", @"United States", @"US", @"France", @"FR", nil];
    
    for (NSString* key in countryCodes) {
        id value = countryCodes[key];
        NSLog(@"%@ - %@", key, value);
    }
}
