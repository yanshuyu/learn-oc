//
//  Car.m
//  08_categoryAndExtension
//
//  Created by sy on 2019/5/4.
//  Copyright © 2019 sy. All rights reserved.
//

#import "Car.h"

@implementation Car

- (instancetype)init {
    self = [super init];
    if(self) {
        NSMutableString* unkonwedStr = [[NSMutableString alloc] initWithString:@"unknowed"];
        self.color = unkonwedStr;
        self.classes = unkonwedStr;
        self.model = unkonwedStr;
    }
    return self;
}

- (instancetype)init:(NSMutableString *)name {
    self = [self init];
    if(self) {
        self.name = name;
    }
    return self;
}

- (void)setLookWithColor: (NSMutableString*)color Classes: (NSMutableString*)classes Model: (NSMutableString*)model {
    self.color = color;
    self.classes = classes;
    self.model = model;
}


- (NSDictionary*) getLook {
    NSArray* keyArr = @[@"color", @"classes", @"model"];
    NSArray* valArr = @[self.color, self.classes, self.model];
    
    NSDictionary* lookDic = [[NSDictionary alloc]initWithObjects:valArr forKeys:keyArr];
    return lookDic;
}


- (void)fireStar {
    NSLog(@"%@(%@) is fireStar...", self.name, self.model);
}

- (void)slowDown:(float)toSpeed {
    NSLog(@"%@(%@) is slow down to %f km/h", self.name, self.model, toSpeed);
}

- (void)speedUp:(float)toSpeed {
    NSLog(@"%@(%@) is speed up to %f km/h", self.name, self.model, toSpeed);
}

- (void)stop {
    NSLog(@"%@(%@) is stop...", self.name, self.model);
}

@end





