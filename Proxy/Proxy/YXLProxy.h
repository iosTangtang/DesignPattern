//
//  YXLProxy.h
//  Proxy
//
//  Created by Tangtang on 2016/11/6.
//  Copyright © 2016年 Tangtang. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol YXLProxy <NSObject>

@required
- (void)proxyTest:(NSString *)string;

@optional
- (void)sayWhat:(NSString *)what;

@end
