//
//  BankAccount.m
//  04_class
//
//  Created by sy on 2019/3/19.
//  Copyright © 2019 sy. All rights reserved.
//

#import "BankAccount.h"

@implementation BankAccount

//static variables
static float s_defaultTransferRate;
static float s_overdraw;

+ (void)initialize
{
    if (self == [BankAccount class]) {
        s_defaultTransferRate = 0.2;
        s_overdraw = 0;
    }
}

+ (float) getDefaultTransferRate {
    return s_defaultTransferRate;
}

+ (float) getOverDrawAoumnt {
    return  s_overdraw;
}



- (instancetype)init
{
    self = [super init];
    if (self) {
        self.name = [[NSMutableString alloc] initWithString:@"init name"];
        self.id = [[NSMutableString alloc] initWithString:@"init id"];
        self.balance = 0;
        self.transferRate = s_defaultTransferRate;
        self.desc = [[NSMutableString alloc] initWithString:@"init desc"];
    }
    return self;
}

- (void) setAccount: (BankAccount*)other{
    [self.name setString:other.name];
    [self.id setString:other.id];
    self.balance = other.balance;
    self.transferRate = other.transferRate;
    self.desc = other.desc;
}

- (instancetype) setAccountWithName: (NSMutableString*)name andId: (NSMutableString*)id andDesc: (NSMutableString*)desc andBalance: (float)balance {
    self.name = name;
    self.id = id;
    self.desc = desc;
    self.balance = balance;
    self.transferRate = s_defaultTransferRate;
    return self;
}

- (void) deposite:(float)balance {
    self.balance += balance;
}

- (bool) withdraw:(float)balance {
    NSLog(@"BankAccount.withdraw() with s_overdraw: %f", s_overdraw);
    bool success = false;
    if (self.balance - balance >= -s_overdraw) {
        self.balance -= balance;
        success = true;
    }
    
    return success;
}

- (bool) transferWithBalance:(float)banlce andTo:(BankAccount *)otherAccount {
    NSLog(@"BankAccount.transferWithBalance() with s_overdraw: %f", s_overdraw);
    bool success = false;
    if (self != otherAccount) {
        float actualBalance = banlce * (1 + self.transferRate);
        if (self.balance - actualBalance >= s_overdraw) {
            self.balance -= actualBalance;
            [otherAccount deposite:banlce];
            success = true;
        }
    }
    
    return success;
}

- (NSString*) toString: (NSString*)tag {
    NSString* str = [[NSString alloc] initWithFormat:@"object of BankAccount at address: %p\n%@.name: %@\n%@.id: %@\n%@.balance: %f\n%@.transferRate: %f\n%@.desc: %@", self, tag, self.name, tag, self.id, tag, self.balance, tag, self.transferRate, tag, self.desc];
    return str;
}

@end
