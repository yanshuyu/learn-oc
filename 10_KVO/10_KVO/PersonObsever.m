//
//  PersonObsever.m
//  10_KVO
//
//  Created by sy on 2019/6/17.
//  Copyright © 2019 sy. All rights reserved.
//

#import "PersonObsever.h"

extern void* PERSON_NAME_CONTEXT;
extern void* PERSON_AGE_CONTEXT;

@implementation PersonObsever

- (void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary *)change context:(void *)context
{
    if (context == PERSON_NAME_CONTEXT) {
        NSLog(@"Person object:%@ name change: %@", object, change);
    }else if (context == PERSON_AGE_CONTEXT) {
        NSLog(@"Person object:%@ age change: %@", object, change);
    }else {
        NSLog(@"Person object:%@ siblings change: %@", object, change);
    }
}

@end
