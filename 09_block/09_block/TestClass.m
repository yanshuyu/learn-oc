//
//  TestClass.m
//  09_block
//
//  Created by sy on 2019/6/2.
//  Copyright © 2019 sy. All rights reserved.
//

#import "TestClass.h"

@implementation TestClass

- (instancetype)init
{
    self = [super init];
    if (self) {
        id __weak weakSelf = self;
        self.block = ^{
            NSLog(@"executing block: %@", weakSelf);
        };
    }
    NSLog(@"alloc: %@", self);
    return self;
}

- (void)dealloc
{
    NSLog(@"dealloc: %@", self);
}

- (void)executeBlock {
    self.block();
}

@end
