//
//  YXLDynamicProtocol.h
//  Proxy
//
//  Created by Tangtang on 2016/11/7.
//  Copyright © 2016年 Tangtang. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol YXLDynamicProtocol <NSObject>

@required
- (void)doSomeThing;

@optional
- (void)doAnyThing;

@end
