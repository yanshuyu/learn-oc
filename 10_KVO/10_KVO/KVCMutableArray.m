//
//  KVCMutableArray.m
//  10_KVO
//
//  Created by sy on 2019/6/17.
//  Copyright © 2019 sy. All rights reserved.
//

#import "KVCMutableArray.h"

@implementation KVCMutableArray

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.array = [NSMutableArray array];
    }
    return self;
}

- (NSUInteger)countOfArray {
    return self.array.count;
}

- (id)objectInArrayAtIndex:(NSUInteger)index {
    return [self.array objectAtIndex:index];
}

- (void)insertObject:(id)object inArrayAtIndex:(NSUInteger)index {
    [self.array insertObject:object atIndex:index];
}

- (void)removeObjectFromArrayAtIndex:(NSUInteger)index {
    [self.array removeObjectAtIndex:index];
}

- (void)replaceObjectInArrayAtIndex:(NSUInteger)index withObject:(id)object {
    [self.array replaceObjectAtIndex:index withObject:object];
}

@end
