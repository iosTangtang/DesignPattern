//
//  Prototype.m
//  Prototype
//
//  原型模式
//  Created by Tangtang on 2016/10/23.
//  Copyright © 2016年 Tangtang. All rights reserved.
//

#import "Prototype.h"

@implementation Prototype

- (instancetype)initWithName:(NSString *)name age:(int)age {
    self = [super init];
    if (self) {
        self.name = name;
        self.age = age;
    }
    return self;
}

- (id)copyWithZone:(NSZone *)zone {
    Prototype *obj = [[self.class allocWithZone:zone] init];
    obj.name = [self.name mutableCopy];
    obj.age = self.age;
    
    return obj;
}

- (id)mutableCopyWithZone:(NSZone *)zone {
    Prototype *obj = [[self.class allocWithZone:zone] init];
    obj.name = [self.name mutableCopy];
    obj.age = self.age;
    
    return obj;
}

@end
