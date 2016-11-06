//
//  YXLProxyTest.h
//  Proxy
//
//  Created by Tangtang on 2016/11/6.
//  Copyright © 2016年 Tangtang. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol YXLProxyDelegate <NSObject>

@required
- (void)sayHello:(NSString *)string;

@optional
- (void)sayWhat:(NSString *)what;

@end

@interface YXLProxyTest : NSObject

@property (nonatomic, weak) id<YXLProxyDelegate>    delegate;

- (void)saySomeThing:(NSString *)string;

@end
