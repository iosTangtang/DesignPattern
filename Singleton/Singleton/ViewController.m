//
//  ViewController.m
//  Singleton
//
//  Created by Tangtang on 2016/10/23.
//  Copyright © 2016年 Tangtang. All rights reserved.
//

#import "ViewController.h"
#import "Singleton.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    Singleton *single1 = [[Singleton alloc] init];
    Singleton *single2 = [Singleton shareInstance];
    
    if (single1 == single2) {
        NSLog(@"single1 == single2");
    }
    else {
        NSLog(@"single1 != single2");
    }
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
}


@end
