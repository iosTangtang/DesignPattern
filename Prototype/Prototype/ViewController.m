//
//  ViewController.m
//  Prototype
//
//  Created by Tangtang on 2016/10/23.
//  Copyright © 2016年 Tangtang. All rights reserved.
//

#import "ViewController.h"
#import "Prototype.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    Prototype *pro = [[Prototype alloc] initWithName:@"jack" age:12];
    Prototype *pro1 = [pro copy];
    Prototype *pro2 = [pro mutableCopy];
    
    NSLog(@"%p %p %p", pro, pro1, pro2);
    NSLog(@"%@ %@ %@", pro.name, pro1.name, pro2.name);
    NSLog(@"%p %p %p", pro.name, pro1.name, pro2.name);
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
