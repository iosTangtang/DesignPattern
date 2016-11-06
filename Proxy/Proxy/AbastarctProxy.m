//
//  AbastarctProxy.m
//  Proxy
//
//  Created by Tangtang on 2016/11/6.
//  Copyright © 2016年 Tangtang. All rights reserved.
//

#import "AbastarctProxy.h"
#import "YXLNullExcute.h"

@implementation AbastarctProxy

- (NSMethodSignature *)methodSignatureForSelector:(SEL)sel {
    
    if ([self.delegate respondsToSelector:sel]) {
        return [self.delegate methodSignatureForSelector:sel];
    }
    else {
        return [[YXLNullExcute nullExcute] methodSignatureForSelector:NSSelectorFromString(@"nullInfo:")];
    }
}

- (void)forwardInvocation:(NSInvocation *)invocation {
    SEL selector = invocation.selector;
    
    NSLog(@"%s -- startProxy", __FUNCTION__);
    
    if ([self.delegate respondsToSelector:selector]) {
        [invocation setTarget:self.delegate];
        [invocation invoke];
    } else {
        NSString *selectorStr = NSStringFromSelector(invocation.selector);
        [invocation setSelector:NSSelectorFromString(@"nullInfo:")];
        [invocation setTarget:[YXLNullExcute nullExcute]];
        
        NSArray *infos = nil;
        
        if (self.delegate) {
            infos = @[NSStringFromClass([self class]), selectorStr, @""];
        } else {
            infos = @[NSStringFromClass([self class]), selectorStr];
        }
        
        [invocation setArgument:&infos atIndex:2];
        [invocation invoke];
    }
    
    NSLog(@"%s -- endProxy", __FUNCTION__);
}

@end
