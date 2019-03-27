//
//  main.m
//  05_array
//
//  Created by sy on 2019/3/22.
//  Copyright © 2019 sy. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    NSArray* myIntArr = @[@1,@2,@3,@4,@5];
    NSLog(@"myIntArr[0]: %d\n", [myIntArr[0] intValue]);
    NSLog(@"myIntArr[1]: %d\n", [myIntArr[1] intValue]);
    NSLog(@"myIntArr[2]: %d\n", [myIntArr[2] intValue]);
    NSLog(@"myIntArr[3]: %d\n", [myIntArr[3] intValue]);
    NSLog(@"myIntArr[4]: %d\n", [myIntArr[4] intValue]);
    
    
    NSMutableArray* myStrArr = [[NSMutableArray alloc] initWithObjects:@"yan", @"yu", nil];
    NSLog(@"myStrArr[0]: %@\n", myStrArr[0]);
    NSLog(@"myStrArr[1]: %@\n", myStrArr[1]);
    
    [myStrArr insertObject:@"shu" atIndex:1];
    NSLog(@"myStrArr[0]: %@\n", myStrArr[0]);
    NSLog(@"myStrArr[1]: %@\n", myStrArr[1]);
    NSLog(@"myStrArr[2]: %@\n", myStrArr[2]);
    
    [myStrArr removeLastObject];
    int i=0;
    for (NSString* str in myStrArr) {
        NSLog(@"myStrArr[%d]: %@", i, str);
        i++;
    }
    
    id someElements[] = { myStrArr, @"Hello World", @3.14};
    NSArray* someElementsArr = [NSArray arrayWithObjects:someElements count: sizeof(someElements) / sizeof(id)];
    NSLog(@"someElementsArr = [");
    for (int i = 0; i < someElementsArr.count; i++) {
        NSLog(@"%@ ,", someElementsArr[i]);
    }

    
    return 0;
}
