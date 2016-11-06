//
//  YXLProxyTest.m
//  Proxy
//
//  Created by Tangtang on 2016/11/6.
//  Copyright © 2016年 Tangtang. All rights reserved.
//

#import "YXLProxyTest.h"

@implementation YXLProxyTest

- (void)saySomeThing:(NSString *)string {
    if ([self.delegate respondsToSelector:@selector(sayHello:)]) {
        [self.delegate sayHello:string];
    }
    
    if ([self.delegate respondsToSelector:@selector(sayWhat:)]) {
        [self.delegate sayWhat:string];
    }
}

@end
