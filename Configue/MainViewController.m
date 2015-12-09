//
//  ZYRootViewController.m
//  UINavigationControllerTest
//
//  Created by zhangyuc on 13-4-23.
//  Copyright (c) 2013年 zhangyuc. All rights reserved.
//

#import "MainViewController.h"
#import "Navigator.h"

@interface MainViewController () {
    UIButton* module1Button;
    UIButton* module2Button;
}

@end

@implementation MainViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    module1Button = [[UIButton alloc]initWithFrame:CGRectMake(100, 100, 100,100)];
    [module1Button setBackgroundColor: [UIColor redColor]];
    [module1Button setTitle: @"Module1" forState:UIControlStateNormal];
    [module1Button addTarget:self action:@selector(gotoModule1) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview: module1Button];

    module2Button = [[UIButton alloc]initWithFrame:CGRectMake(200, 200, 100,100)];
    [module2Button setBackgroundColor: [UIColor redColor]];
    [module2Button setTitle: @"Module2" forState:UIControlStateNormal];
    [module2Button addTarget:self action:@selector(gotoModule2) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview: module2Button];

}

- (void) gotoModule1 {
    NSString* url = @"Module1ViewController";
    NSMutableDictionary* data;
    
    [Navigator navigateTo:url withData: data];
    
//    [[NSNotificationCenter defaultCenter] postNotificationName:@"Module1" object:nil];
}

- (void) gotoModule2 {
    NSString* url = @"Module2ViewController";
    NSMutableDictionary* data = [[NSMutableDictionary alloc] init];
    [data setValue: @"Jianqiang" forKey: @"UserName"];
    [data setValue: @"28" forKey: @"Age"];
    
    [Navigator navigateTo:url withData: data];
}

@end
