//
//  SubProxy.h
//  Proxy
//
//  Created by Tangtang on 2016/11/7.
//  Copyright © 2016年 Tangtang. All rights reserved.
//

#import "AbastarctProxy.h"
#import "YXLDynamicProtocol.h"

@interface SubProxy : AbastarctProxy <YXLDynamicProtocol>

- (instancetype)initWithDelegate:(id<YXLDynamicProtocol>)delegate;

@end
