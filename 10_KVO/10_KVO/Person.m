//
//  Person.m
//  10_KVO
//
//  Created by sy on 2019/6/17.
//  Copyright © 2019 sy. All rights reserved.
//

#import "Person.h"

@implementation Person

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.name = @"";
        self.age = 0;
        self.child = NULL;
        self.siblings = [[KVCMutableArray alloc] init];
    }
    return self;
}

@end
