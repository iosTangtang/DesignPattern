//
//  ViewController.m
//  Proxy
//
//  Created by Tangtang on 2016/11/6.
//  Copyright © 2016年 Tangtang. All rights reserved.
//

#import "ViewController.h"
#import "YXLDeliver.h"
#import "YXLCustomer.h"
#import "YXLProxyTest.h"
#import "Normal.h"
#import "SubProxy.h"

@interface ViewController ()<YXLProxyDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // ------------------- first -------------------
    // 具体实现类
//    YXLDeliver *deliver = [[YXLDeliver alloc] init];
//    
//    // 代理转发类
//    YXLCustomer *customer = [[YXLCustomer alloc] init];
//    customer.delegate = deliver;
//    [customer saySomeThing:@"hello..."];
    
    // ------------------- second -------------------
//    YXLProxyTest *proxy = [[YXLProxyTest alloc] init];
//    proxy.delegate = self;
//    [proxy saySomeThing:@"hello!!!"];
    
    // ------------------- Third -------------------
    Normal *obj = [[Normal alloc] init];
    SubProxy *abProxy = [SubProxy alloc];
    
    abProxy.delegate = obj;

    [abProxy doSomeThing];
    [abProxy doAnyThing];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)sayHello:(NSString *)string {
    NSLog(@"%s -- %@", __FUNCTION__, string);
}

- (void)sayWhat:(NSString *)what {
    NSLog(@"%s -- %@", __FUNCTION__, what);
}


@end
