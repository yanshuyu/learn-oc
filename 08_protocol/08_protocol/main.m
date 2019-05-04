//
//  main.m
//  08_categoryAndExtension
//
//  Created by sy on 2019/5/4.
//  Copyright © 2019 sy. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Car.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {

        Car* myCar = [[Car alloc]init: [[NSMutableString alloc]initWithString:@"myCar"]];
        [myCar setLookWithColor:[NSMutableString stringWithString:@"Red"]
                        Classes:[NSMutableString stringWithString:@"A1"]
                          Model:[NSMutableString stringWithString:@"civic"]];
        if ([myCar conformsToProtocol:@protocol(Drivable)]) {
            [myCar fireStar];
            [myCar speedUp:160.0];
            [myCar slowDown:0.0];
            [myCar stop];
        }
    }
    return 0;
}
