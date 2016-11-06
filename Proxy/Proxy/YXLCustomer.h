//
//  YXLCustomer.h
//  Proxy
//
//  Created by Tangtang on 2016/11/6.
//  Copyright © 2016年 Tangtang. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "YXLProxy.h"

@interface YXLCustomer : NSObject

@property (nonatomic, weak) id<YXLProxy> delegate;

- (void)saySomeThing:(NSString *)string;

@end
