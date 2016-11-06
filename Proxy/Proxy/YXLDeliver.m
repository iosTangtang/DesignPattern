//
//  YXLDeliver.m
//  Proxy
//
//  Created by Tangtang on 2016/11/6.
//  Copyright © 2016年 Tangtang. All rights reserved.
//

#import "YXLDeliver.h"

@implementation YXLDeliver

- (void)proxyTest:(NSString *)string {
    NSLog(@"%s -- %@", __FUNCTION__, string);
}

- (void)sayWhat:(NSString *)what {
    NSLog(@"%s -- what is %@", __FUNCTION__, what);
}

@end
