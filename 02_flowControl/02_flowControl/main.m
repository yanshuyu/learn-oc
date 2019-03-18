//
//  main.m
//  02_flowControl
//
//  Created by sy on 2019/3/18.
//  Copyright © 2019 sy. All rights reserved.
//

#import <Foundation/Foundation.h>

enum ScoreLevel {
    A = 1,
    B = 2,
    C = 3,
    D = 4,
    E = 5,
};

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        int score1 = 75;
        int level1 = A;
        
        if (score1 >= 90) {
            level1 = A;
        }
        else if(score1 >= 80){
            level1 = B;
        }
        else if(score1 >= 70){
            level1 = C;
        }
        else if(score1 >= 60){
            level1 = D;
        }
        else{
            level1 = E;
        }
        
        printf("score1: %d, level1: %d\n", score1, level1);
        
        
        int score2 = 55;
        int level2 = A;
        switch (level2) {
            case A:
                score2 = 90;
                break;
            case B:
                score2 = 80;
                break;
            case C:
                score2 = 70;
                break;
            case D:
                score2 = 60;
                break;
            case E:
                score2 = 50;
                
            default:
                score2 = 0;
                break;
        }
        
        NSLog(@"score level: %d, min score: %d\n", level2, score2);
        
        
        //loop
        for (int counter=0; counter<10; counter++) {
            if (counter % 2 == 0) {
                continue;
            }
            NSLog(@"counter: %d", counter);
        }
        
        int power = 10;
        while (power >= 1) {
            NSLog(@"I am running, power leave: %d", power);
            power--;
        }
        
        do {
            NSLog(@"I am relaxing, power leave: %d", power);
            power++;
        } while (power <= 10);
    }
    return 0;
}
