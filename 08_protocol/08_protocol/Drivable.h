//
//  Drivable.h
//  08_categoryAndExtension
//
//  Created by sy on 2019/5/4.
//  Copyright © 2019 sy. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@protocol Drivable <NSObject>

- (void) fireStar;
- (void) speedUp: (float)toSpeed;
- (void) slowDown: (float)toSpeed;
- (void) stop;

@end

NS_ASSUME_NONNULL_END
