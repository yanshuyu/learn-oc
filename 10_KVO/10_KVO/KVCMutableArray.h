//
//  KVCMutableArray.h
//  10_KVO
//
//  Created by sy on 2019/6/17.
//  Copyright © 2019 sy. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface KVCMutableArray : NSObject

@property(nonatomic, strong) NSMutableArray* array;

- (NSUInteger)countOfArray;
- (id)objectInArrayAtIndex:(NSUInteger)index;
- (void)insertObject:(id)object inArrayAtIndex:(NSUInteger)index;
- (void)removeObjectFromArrayAtIndex:(NSUInteger)index;
- (void)replaceObjectInArrayAtIndex:(NSUInteger)index withObject:(id)object;

@end

NS_ASSUME_NONNULL_END
