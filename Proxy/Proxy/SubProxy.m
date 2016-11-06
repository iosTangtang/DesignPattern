//
//  SubProxy.m
//  Proxy
//
//  Created by Tangtang on 2016/11/7.
//  Copyright © 2016年 Tangtang. All rights reserved.
//

#import "SubProxy.h"

@implementation SubProxy

- (instancetype)initWithDelegate:(id<YXLDynamicProtocol>)delegate {
    self.delegate = delegate;
    
    return self;
}

- (void)doSomeThing {
    NSLog(@"%s -- startProxy", __FUNCTION__);
    
    if ([self.delegate respondsToSelector:@selector(doSomeThing)]) {
        [self.delegate doSomeThing];
    }
    
    NSLog(@"%s -- endProxy", __FUNCTION__);
}

@end
