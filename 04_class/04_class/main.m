//
//  main.m
//  04_class
//
//  Created by sy on 2019/3/19.
//  Copyright © 2019 sy. All rights reserved.
//

#import "BankAccount.h"
#import "VipBankAccount.h"

int main(int argc, const char * argv[]) {
    
    //create instance of class
    BankAccount* myAccount = [[BankAccount alloc] init];
    BankAccount* myAccountCopy = [[BankAccount alloc] init];
    BankAccount* otherAccount = [[BankAccount alloc] setAccountWithName: [[NSMutableString alloc] initWithFormat:@"wuting"]  andId:[[NSMutableString alloc] initWithFormat:@"70214"] andDesc:[[NSMutableString alloc] initWithFormat:@"normal account named wuting"] andBalance:99999];

    NSLog(@"%@", [myAccount toString:@"myAccount"]);
    NSLog(@"%@", [myAccountCopy toString:@"myAccountCopy"]);
    NSLog(@"%@", [otherAccount toString:@"otherAccount"]);
    
    //getter and setter
    NSMutableString* accoutName = [[NSMutableString alloc] initWithString:@"zhangyaoyag"];
    NSMutableString* accountId = [[NSMutableString alloc] initWithString:@"67675"];
    NSMutableString* accountDesc = [[NSMutableString alloc] initWithString:@"normal account named zhangyaoyag"];
    
    myAccount.name = accoutName;
    [myAccount setId:accountId];
    myAccount.balance = 10000;;
    [myAccount setTransferRate:0.1];
    myAccount.desc = accountDesc;
    
    [myAccountCopy setAccount:myAccount];
    
    NSLog(@"1-------------------------------------------------------------------------------------1");
    NSLog(@"accoutName: %@", accoutName);
    NSLog(@"accountId: %@", accountId);
    NSLog(@"accountDesc: %@", accountDesc);
    NSLog(@"%@",[myAccount toString:@"myAccount"]);
    NSLog(@"%@", [myAccountCopy toString:@"myAccountCopy"]);
    
    [accoutName setString:@"yanshuyu"];
    [accountDesc setString:@"nornal account named yanshuyu"];
    [myAccount.id setString:@"70127"];
    
    NSLog(@"2--------------------------------------------------------------------------------------2");
    NSLog(@"accoutName: %@", accoutName);
    NSLog(@"accountId: %@", accountId);
    NSLog(@"accountDesc: %@", accountDesc);
    NSLog(@"%@",[myAccount toString:@"myAccount"]);
    NSLog(@"%@", [myAccountCopy toString:@"myAccountCopy"]);
    
    
    
    [myAccount transferWithBalance:5000 andTo:otherAccount];
    NSLog(@"3--------------------------------------------------------------------------------------3");
    NSLog(@"%@",[myAccount toString:@"myAccount"]);
    NSLog(@"%@", [otherAccount toString:@"otherAccount"]);
    [myAccount withdraw:5000];
    NSLog(@"%@",[myAccount toString:@"myAccount"]);
    
    
    VipBankAccount* myVipAccount = [[VipBankAccount alloc] init];
    [myVipAccount setAccountWithName:[[NSMutableString alloc] initWithFormat:@"vip-yanshuyu"]  andId:[[NSMutableString alloc] initWithFormat:@"070214"] andDesc:[[NSMutableString alloc] initWithFormat:@"vip account named yanshuyu"] andBalance:100];
    
    NSLog(@"4--------------------------------------------------------------------------------------4");
    NSLog(@"%@", [myVipAccount toString:@"myVipAccount"]);
    [myVipAccount withdraw:1000];
    NSLog(@"%@", [myVipAccount toString:@"myVipAccount"]);
    
    return 0;
}
