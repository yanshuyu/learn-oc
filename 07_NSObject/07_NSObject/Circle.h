//
//  Circle.h
//  07_NSObject
//
//  Created by sy on 2019/3/28.
//  Copyright © 2019 sy. All rights reserved.
//

#import "Graph.h"

NS_ASSUME_NONNULL_BEGIN

@interface Circle : Graph
//instance variables
{
    @protected
        float x;
        float y;
        float radius;
}

//instance methods
- (instancetype) init;
- (instancetype) initWithOriginX: (float)x OriginY: (float)y Radius: (float)radius;
- (float) getOriginX;
- (float) getOriginY;
- (float) getRadius;
- (void) draw;

@end

NS_ASSUME_NONNULL_END
