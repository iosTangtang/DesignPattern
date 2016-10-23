//
//  Prototype.h
//  Prototype
//
//  原型模式
//  实现NSCopying协议
//  Created by Tangtang on 2016/10/23.
//  Copyright © 2016年 Tangtang. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Prototype : NSObject <NSCopying, NSMutableCopying>

@property (nonatomic, copy)     NSString    *name;
@property (nonatomic, assign)   int         age;

- (instancetype)initWithName:(NSString *)name age:(int)age;

@end
