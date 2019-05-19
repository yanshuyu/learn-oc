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
        
        NSLog(@"\n\nc Bool vs oc BOOL");
        bool cBool = true;
        BOOL ocBool = YES;
        NSLog(@"cBool: %d (%lu bytes)", cBool, sizeof(cBool));
        NSLog(@"ocBool: %d (%lu bytes)", ocBool, sizeof(ocBool));
        
        cBool = false;
        ocBool = NO;
        NSLog(@"cBool: %d (%lu bytes)", cBool, sizeof(cBool));
        NSLog(@"ocBool: %d (%lu bytes)", ocBool, sizeof(ocBool));
        
        cBool = 10;
        ocBool = 10;
        NSLog(@"cBool: %d (%lu bytes)", cBool, sizeof(cBool));
        NSLog(@"ocBool: %d (%lu bytes)", ocBool, sizeof(ocBool));
        
        
        
        NSLog(@"\n\nfloating point values");
        float cFloat =  M_PI;
        double cDouble = M_PI;
        CGFloat cgFloat = M_PI;
        NSLog(@"cFloat: %0.12f (%lu bytes)", cFloat, sizeof(cFloat));
        NSLog(@"cDouble: %0.12f (%lu bytes)", cDouble, sizeof(cDouble));
        NSLog(@"cgFloat: %0.12f (%lu bytes)", cgFloat, sizeof(cgFloat));
        NSLog(@"epsilon: %0.12f", FLT_EPSILON);
        float init = 0.0001;
        int cnt = 1000;
        float f = init / cnt;
        
        for ( int i = 0; i <= cnt-1 ; ++i) {
            f += init / cnt;
        }
        
        if ( f == init ) {
            NSLog(@"init and f are match!");
        }else {
            NSLog(@"init(%0.12f) and f(%0.12f) are not match! diffrence: (%0.12ff)", init, f, ABS(init - f));
        }
        
        if ( ABS(f-init) < FLT_EPSILON) {
            NSLog(@"init and f are epsilon match!");
        }else{
           NSLog(@"init(%0.12f) and f(%0.12f) are not epsilon match! diffrence: (%0.12ff)", init, f, ABS(init - f));
        }
        
        
        
        NSLog(@"\n\nIntegers");
        char c = 10;
        unsigned char uc = 10;
        short si = 10;
        int i = 10;
        long l = 10;
        long long ll = 10;
        
        NSInteger ni = 10;
        NSUInteger nui = 10;
        
        NSLog(@"c: %c (%lu bytes)", c, sizeof(c));
        NSLog(@"uc: %c (%lu bytes)", uc, sizeof(uc));
        NSLog(@"si: %hd (%lu bytes)", si, sizeof(si));
        NSLog(@"i: %d (%lu bytes)", i, sizeof(i));
        NSLog(@"l: %ld (%lu bytes)", l, sizeof(l));
        NSLog(@"ll: %lld (%lu bytes)", ll, sizeof(ll));
        NSLog(@"ni: %ld (%lu bytes)", (long)ni, sizeof(ni));
        NSLog(@"uni: %lu (%lu bytes)", (unsigned long)nui, sizeof(nui));
    }
    
    return 0;
}
