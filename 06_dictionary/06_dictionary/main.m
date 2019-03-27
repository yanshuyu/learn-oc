//
//  main.m
//  06_dictionary
//
//  Created by sy on 2019/3/22.
//  Copyright © 2019 sy. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    
    NSDictionary* countryDic = @{@"US":@"United Stated Of America", @"CN":@"People Of Republic Of China", @"UK":@"United Kingdom", @"JP":@"Japan"};
    NSLog(@"countryDic[US]: %@", countryDic[@"US"]);
    NSLog(@"countryDic[CN]: %@", [countryDic objectForKey:@"CN"]);
    
    
    NSEnumerator* countryCodeEnumerator = [countryDic keyEnumerator];
    NSString* countryCode = nil;
    NSLog(@"keys: ");
    while (countryCode = [countryCodeEnumerator nextObject]) {
        NSLog(@"%@", countryCode);
    }
    
    NSEnumerator* countryNameEnumerator = [countryDic objectEnumerator];
    NSString* countryName = nil;
    NSLog(@"values: ");
    while (countryName = [countryNameEnumerator nextObject]) {
        NSLog(@"%@", countryName);
    }
    
    for (NSString* v in countryDic) {
        NSLog(@"%@", v);
    }
    
    
    NSArray* dataArr = @[@3.14, @"Hello World"];
    NSArray* keyArr = @[@"pi", @"message"];
    NSDictionary* dataDic = [NSDictionary dictionaryWithObjects:dataArr  forKeys:keyArr];
    NSEnumerator* keyView = [dataDic keyEnumerator];
    //NSEnumerator* valView = [dataDic objectEnumerator];
    NSString* k = nil;
   // NSString* v = nil;
    NSLog(@"dataDic = {");
    while (k = [keyView nextObject]) {
        NSLog(@"    %@ : %@", k, [dataDic objectForKey:k]);
    }
    NSLog(@"}");
    
    
    return 0;
}
