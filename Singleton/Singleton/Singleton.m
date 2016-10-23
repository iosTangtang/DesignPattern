//
//  Singleton.m
//  Singleton
//
//  Created by Tangtang on 2016/10/23.
//  Copyright © 2016年 Tangtang. All rights reserved.
//

#import "Singleton.h"

static Singleton *single = nil;

@implementation Singleton

+ (instancetype)shareInstance {
    
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        single = [[super allocWithZone:NULL] init];
    });
    
    return single;
}

+ (instancetype)allocWithZone:(struct _NSZone *)zone {
    NSLog(@"%s", __FUNCTION__);
    return [self shareInstance];
}

- (id)copyWithZone:(nullable NSZone *)zone {
    return self;
}

@end
