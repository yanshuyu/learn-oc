//
//  Person.h
//  10_KVO
//
//  Created by sy on 2019/6/17.
//  Copyright © 2019 sy. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "KVCMutableArray.h"

NS_ASSUME_NONNULL_BEGIN

@interface Person : NSObject

@property(nonatomic,strong) NSString* name;
@property(nonatomic) NSUInteger age;
@property(nonatomic, strong, nullable) Person* child;
@property(nonatomic, strong) KVCMutableArray* siblings;

@end

NS_ASSUME_NONNULL_END
