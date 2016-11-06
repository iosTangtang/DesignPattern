//
//  YXLNullExcute.m
//  Proxy
//
//  Created by Tangtang on 2016/11/7.
//  Copyright © 2016年 Tangtang. All rights reserved.
//

#import "YXLNullExcute.h"

static YXLNullExcute *nullExcute = nil;

@implementation YXLNullExcute

+ (instancetype)nullExcute {
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        nullExcute = [[super allocWithZone:NULL] init];
    });
    
    return nullExcute;
}

+ (instancetype)allocWithZone:(struct _NSZone *)zone {
    return [self nullExcute];
}

- (id)copyWithZone:(nullable NSZone *)zone {
    return self;
}

- (void)nullInfo:(NSArray *)info {
    if (info.count > 2) {
        NSLog(@"%@ miss implement method -- > %@", info[0], info[1]);
    } else {
        NSLog(@"%@ miss delegate and miss implement method -- > %@", info[0], info[1]);
    }
}

@end
