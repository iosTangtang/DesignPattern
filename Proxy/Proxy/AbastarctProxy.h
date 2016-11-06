//
//  AbastarctProxy.h
//  Proxy
//
//  Created by Tangtang on 2016/11/6.
//  Copyright © 2016年 Tangtang. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface AbastarctProxy : NSProxy

@property (nonatomic, weak) id delegate;

@end
