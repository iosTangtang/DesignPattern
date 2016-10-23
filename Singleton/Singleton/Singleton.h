//
//  Singleton.h
//  Singleton
//
//  Created by Tangtang on 2016/10/23.
//  Copyright © 2016年 Tangtang. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Singleton : NSObject <NSCopying>

+ (instancetype)shareInstance;

@end
