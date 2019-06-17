//
//  main.m
//  09_block
//
//  Created by sy on 2019/6/1.
//  Copyright © 2019 sy. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "TestClass.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        //
        // capturing automatic variable
        //
        
        int x = 1;
        __block int y = 1;
        __block NSMutableString* s = [NSMutableString stringWithFormat:@"%@", @"abc"];
        __block char* cstr = "xyz";
        
        int(^blk)(void) = ^int(void){
            return x;
        };
        
//        int(^blk)(void) = ^{
//            return x;
//        }
        
        void(^modifyCaptured)(void) = ^{
            y = 2;
            //[s = [NSMutableString stringWithFormat:@"%@", @"ABC"];
            [s setString:@"ABC"];
            NSLog(@"Calling modifyCaptured(), cstr = %s", cstr);
            cstr = "XYZ";
        };
        
        
        x = 10;
        NSLog(@"x = %d, blk() = %d", x, blk());
        
        cstr = "YUV";
        NSLog(@"Before modifyCaptured(): y = %d, s = %@, cstr = %s", y, s, cstr);
        modifyCaptured();
        NSLog(@"After modifyCaptured(): y = %d, s = %@, cstr = %s", y, s, cstr);
        
        //
        // circular refrence with block
        //
        TestClass* myTestObj = [[TestClass alloc] init];
        [myTestObj executeBlock];
        
        
        //
        // blocks and gcd
        //
        dispatch_queue_t mySerialDispathQueue = dispatch_queue_create("com.personal.sy.learn-oc.block.mySerialDispathQueue", nil);
        dispatch_async(mySerialDispathQueue, ^{
            NSLog(@"begin job_1 in mySerialDispathQueue.");
            NSLog(@"doing job_1 in mySerialDispathQueue...");
            sleep(3);
            NSLog(@"finish job_1 in mySerialDispathQueue.");
        });
        dispatch_async(mySerialDispathQueue, ^{
            NSLog(@"begin job_2 in mySerialDispathQueue.");
            NSLog(@"doing job_2 in mySerialDispathQueue...");
            sleep(3);
            NSLog(@"finish job_2 in mySerialDispathQueue.");
        });
        
        //dispatch_release(mySerialDispathQueue);
        
        dispatch_queue_t myConcurrentDispatchQueue = dispatch_queue_create("com.personal.sy.learn-oc.block.myConcurrentDispatchQueue", DISPATCH_QUEUE_CONCURRENT);
        dispatch_async(myConcurrentDispatchQueue, ^{
            NSLog(@"begin job_1 in myConcurrentDispatchQueue.");
            NSLog(@"doing job_1 in myConcurrentDispatchQueue...");
            sleep(3);
            NSLog(@"finish job_1 in myConcurrentDispatchQueue.");
        });
        dispatch_async(myConcurrentDispatchQueue, ^{
            NSLog(@"begin job_2 in myConcurrentDispatchQueue.");
            NSLog(@"doing job_2 in myConcurrentDispatchQueue...");
            sleep(3);
            NSLog(@"finish job_2 in myConcurrentDispatchQueue.");
        });
        
        sleep(10);
        
    }
    return 0;
}
