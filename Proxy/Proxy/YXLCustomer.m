//
//  YXLCustomer.m
//  Proxy
//
//  Created by Tangtang on 2016/11/6.
//  Copyright © 2016年 Tangtang. All rights reserved.
//

#import "YXLCustomer.h"

@implementation YXLCustomer

- (void)saySomeThing:(NSString *)string {
    if ([self.delegate respondsToSelector:@selector(proxyTest:)]) {
        [self.delegate proxyTest:string];
    }
    
    if ([self.delegate respondsToSelector:@selector(sayWhat:)]) {
        [self.delegate sayWhat:string];
    }
}

@end
