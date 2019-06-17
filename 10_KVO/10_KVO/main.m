//
//  main.m
//  10_KVO
//
//  Created by sy on 2019/6/17.
//  Copyright © 2019 sy. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"
#import "PersonObsever.h"

void* PERSON_NAME_CONTEXT = "PERSON_NAME_CONTEXT";
void* PERSON_AGE_CONTEXT = "PERSON_AGE_CONTEXT";


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        //KVC
        
        Person* p1 = [[Person alloc] init];
        [p1 setValue:@"Zhang" forKey:@"name"];
        [p1 setValue:@22 forKey:@"age"];
        NSLog(@"p1 name: %@, age: %d", [p1 valueForKey:@"name"], [[p1 valueForKey:@"age"] intValue]);
        
        Person* p2 = [[Person alloc] init];
        p2.name = @"Lee";
        p2.age = 6;
        p2.child = NULL;
        p1.child = p2;
        NSLog(@"p2 name: %@, age: %d", [p1 valueForKeyPath:@"child.name"], [[p1 valueForKeyPath:@"child.age"] intValue]);
        
        Person* p3 = [[Person alloc] init];
        p2.name = @"Huang";
        p2.age = 26;
        p2.child = NULL;
        
        Person* p4 = [[Person alloc] init];
        p2.name = @"Zhao";
        p2.age = 28;
        p2.child = NULL;
        
        //KVO
        PersonObsever* obsever = [[PersonObsever alloc] init];
        [p1 addObserver:obsever
             forKeyPath:@"name"
                options:NSKeyValueObservingOptionNew | NSKeyValueObservingOptionOld
                context:PERSON_NAME_CONTEXT];
        [p1 addObserver:obsever
             forKeyPath:@"age"
                options:NSKeyValueObservingOptionOld | NSKeyValueObservingOptionNew
                context:PERSON_AGE_CONTEXT];
        [p1 addObserver:obsever
             forKeyPath:@"siblings.array"
                options:NSKeyValueObservingOptionOld | NSKeyValueObservingOptionNew
                context:NULL];
        
        [p2 addObserver:obsever
             forKeyPath:@"name"
                options:NSKeyValueObservingOptionNew | NSKeyValueObservingOptionOld
                context:PERSON_NAME_CONTEXT];
        [p2 addObserver:obsever
             forKeyPath:@"age"
                options:NSKeyValueObservingOptionOld | NSKeyValueObservingOptionNew
                context:PERSON_AGE_CONTEXT];
        
        
        
        [p1 setValue:@"Li" forKey:@"name"];
        p2.age = 7;
        [p2 setValue:@8 forKey:@"age"];
        
        [p1.siblings insertObject:p3 inArrayAtIndex:0];
        [p1.siblings insertObject:p4 inArrayAtIndex:1];
        [p1.siblings removeObjectFromArrayAtIndex:0];
        
    }
    return 0;
}
