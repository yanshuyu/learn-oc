//
//  main.m
//  07_NSObject
//
//  Created by sy on 2019/3/27.
//  Copyright © 2019 sy. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Graph.h"
#import "Circle.h"

//NSObject
//The root class of most Objective-C class hierarchies, 
//from which subclasses inherit a basic interface to the runtime system and the ability to behave as Objective-C objects.
//

int main(int argc, const char * argv[]) {
    Graph* myGraph = [Graph new];
    [myGraph draw];
    
    //identify class
    if ([myGraph isMemberOfClass:Graph.class]) {
        NSLog(@"myGraph:%p is instance of class Graph", myGraph);
    }
    
    if ([myGraph isKindOfClass:[Graph class]]) {
        NSLog(@"myGraph:%p is instance of subClass class of Graph", myGraph);
    }
    
    if ([Graph isSubclassOfClass:Graph.class]) {
        NSLog(@"myGraph:%p is instance of subClass class of Graph", myGraph);
    }
    
    //Sending Messages
    Circle* myCircle = [[Circle alloc] initWithOriginX:0 OriginY:0 Radius:10];
    NSLog(@"-------------------call method from sending message----------------");
    NSLog(@"%@", [myCircle description]);
    [myCircle draw];
    
    NSLog(@"----------------call method from selector(@selector)----------------");
    SEL mySelector = @selector(description);
    if ([myCircle respondsToSelector:mySelector]) {
        NSLog(@"%@", [myCircle performSelector:mySelector]);
    }
    mySelector = @selector(draw);
    if ([myCircle respondsToSelector:mySelector]) {
        [myCircle performSelector:mySelector];
    }
    
    NSLog(@"----------------call method from selector(NSSelectorFromString)----------------");
    NSMutableString* funcName = [NSMutableString stringWithString:@"description"];
    NSLog(@"%@", [myCircle performSelector:NSSelectorFromString(funcName)]);
    [funcName setString:@"draw"];
    [myCircle performSelector:NSSelectorFromString(funcName)];
    
    NSLog(@"----------------call method from selector(sel_getUid)----------------");
    NSLog(@"%@", [myCircle performSelector:sel_getUid("description")]);
    [myCircle performSelector:sel_getUid("draw")];
    
    
    NSLog(@"----------------call method from runtime function pointer----------------");
    void (*draw_ptr) (id, SEL) = NULL;
    draw_ptr = (void (*) (id, SEL))[myCircle methodForSelector:@selector(draw)];
    if(draw_ptr != NULL) {
        for (int i=1; i<=10; ++i) {
            draw_ptr(myCircle, @selector(draw));
        }
    }
    
    
    return 0;
}
