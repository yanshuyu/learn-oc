//
//  Car.h
//  08_categoryAndExtension
//
//  Created by sy on 2019/5/4.
//  Copyright © 2019 sy. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Drivable.h"

NS_ASSUME_NONNULL_BEGIN

@interface Car : NSObject <Drivable>

@property NSMutableString* name;
@property NSMutableString* color;
@property NSMutableString* classes;
@property NSMutableString* model;

- (instancetype)init: (NSMutableString*)name;
- (void)setLookWithColor: (NSMutableString*)color Classes: (NSMutableString*)classes Model: (NSMutableString*)model;
- (NSDictionary*) getLook;

@end




NS_ASSUME_NONNULL_END
