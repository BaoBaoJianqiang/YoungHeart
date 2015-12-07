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

- (void)createFields {

}

- (void)createViews {
    //1.从xib中获取View
    NSArray* list = [[NSBundle mainBundle] loadNibNamed: @"MainPageView" owner: self options: nil];
    self.view = list.lastObject;
    
    module1Button = (UIButton*)[self.view viewWithTag: 300];
    module2Button = (UIButton*)[self.view viewWithTag: 400];
}

- (void)createEvents {
    [module1Button addTarget: self action: @selector(gotoModule1) forControlEvents:UIControlEventTouchUpInside];
    [module2Button addTarget: self action: @selector(gotoModule2) forControlEvents:UIControlEventTouchUpInside];
}

- (void)loadData {
    
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
