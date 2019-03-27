//
//  main.m
//  01_variable
//
//  Created by sy on 2019/3/27.
//  Copyright © 2019 sy. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        int myInt = 10;
        float myFloat = 3.14;
        double myDouble = 9.99999999999999;
        bool myBool = false;
        NSLog(@"myInt is: %d\nmyFloat is: %f\nmyDouble is: %f\nmyBool is: %i", myInt, myFloat, myDouble, myBool);
        NSLog(@"myBool: %s", myBool? "true":"false");
    }
    
    return 0;
}
