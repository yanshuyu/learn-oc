//
//  TestClass.h
//  09_block
//
//  Created by sy on 2019/6/2.
//  Copyright © 2019 sy. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

typedef void(^Block)(void);


@interface TestClass : NSObject

@property Block block;

- (void)executeBlock;


@end

NS_ASSUME_NONNULL_END
