//
//  Circle.m
//  07_NSObject
//
//  Created by sy on 2019/3/28.
//  Copyright © 2019 sy. All rights reserved.
//

#import "Circle.h"

@implementation Circle

- (instancetype)init{
    self = [super init];
    if (self) {
        self->x = 0;
        self->y = 0;
        self->radius = 0;
    }
    return self;
}

- (instancetype) initWithOriginX:(float)x OriginY:(float)y Radius:(float)radius{
    self = [super init];
    if (self) {
        self->x = x;
        self->y = y;
        self->radius = radius;
    }
    return self;
}

- (float)getOriginX{
    return self->x;
}

- (float)getOriginY{
    return self->y;
}

- (float)getRadius{
    return self->radius;
}

- (void)draw{
    NSLog(@"drawing Circle object of address: %p at origin: (%f, %f) with radius: %f", self, self->x, self->y, self->radius);
}

- (NSString *)description
{
    return [NSString stringWithFormat:@"Circle object at address: %p,  data: [x=%f, y=%f, radius=%f]", self, self->x, self->y, self->radius];
}

@end
