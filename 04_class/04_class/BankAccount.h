//
//  BankAccount.h
//  04_class
//
//  Created by sy on 2019/3/19.
//  Copyright © 2019 sy. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface BankAccount : NSObject

//properties
@property (nonatomic, strong) NSMutableString* name;
@property (nonatomic) NSMutableString* id;
@property (nonatomic) float balance;
@property (nonatomic) float transferRate;
@property (nonatomic, copy) NSMutableString* desc;

//methods
+ (float) getDefaultTransferRate;
+ (float) getOverDrawAoumnt;


- (void) setAccount: (BankAccount*)other;
- (instancetype) setAccountWithName: (NSMutableString*)name andId: (NSMutableString*)id andDesc: (NSMutableString*)desc andBalance: (float)balance;
- (void) deposite: (float)balance;
- (bool) withdraw: (float)balance;
- (bool) transferWithBalance: (float)banlce andTo: (BankAccount*)otherAccount;
- (NSString*) toString: (NSString*)tag;

@end

NS_ASSUME_NONNULL_END
