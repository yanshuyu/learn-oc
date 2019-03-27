//
//  main.m
//  03_struct
//
//  Created by sy on 2019/3/22.
//  Copyright © 2019 sy. All rights reserved.
//

#import <Foundation/Foundation.h>

struct Vector {
    float x;
    float y;
    float z;
};



int main(int argc, const char * argv[]) {

    struct Vector vec;
    vec.x=1;
    vec.y=1;
    vec.z=1;
    printf("Vector object at address: %p\nvec.x = %f\nvec.y = %f\nvec.z = %f\n", &vec, vec.x, vec.y, vec.z);
    
    
    return 0;
}
