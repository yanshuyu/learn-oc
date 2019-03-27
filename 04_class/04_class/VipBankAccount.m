//
//  VipBankAccount.m
//  04_class
//
//  Created by sy on 2019/3/21.
//  Copyright © 2019 sy. All rights reserved.
//

#import "VipBankAccount.h"

@implementation VipBankAccount

//static variables
static float s_defaultTransferRate;
static float s_overdraw;

+ (void)initialize
{
    if (self == [VipBankAccount class]) {
        [super initialize];
        s_defaultTransferRate = [BankAccount getDefaultTransferRate] * 0.5;
        s_overdraw = [BankAccount getOverDrawAoumnt] + 10000;
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
        self.transferRate = s_defaultTransferRate;
    }
    return self;
}

- (instancetype) setAccountWithName: (NSMutableString*)name andId: (NSMutableString*)id andDesc: (NSMutableString*)desc andBalance: (float)balance {
    [super setAccountWithName:name andId:id andDesc:desc andBalance:balance];
    self.transferRate = s_defaultTransferRate;
    return self;
}

- (bool) withdraw:(float)balance {
    NSLog(@"VipBankAccount.withdraw() with s_overdraw: %f", s_overdraw);
    bool success = false;
    if (self.balance - balance >= -s_overdraw) {
        self.balance -= balance;
        success = true;
    }
    
    return success;
}

- (bool) transferWithBalance:(float)banlce andTo:(BankAccount *)otherAccount {
    NSLog(@"VipBankAccount.transferWithBalance() with s_overdraw: %f", s_overdraw);
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
    NSString* str = [[NSString alloc] initWithFormat:@"object of VipBankAccount at address: %p\n%@.name: %@\n%@.id: %@\n%@.balance: %f\n%@.transferRate: %f\n%@.desc: %@", self, tag, self.name, tag, self.id, tag, self.balance, tag, self.transferRate, tag, self.desc];
    return str;
}


@end
