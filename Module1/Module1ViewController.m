//
//  APageViewController.m
//  MyApp
//
//  Created by jax on 13-9-2.
//  Copyright (c) 2013年 Bao. All rights reserved.
//

#import "Module1ViewController.h"
#import "Navigator/Navigator.h"

@interface Module1ViewController () {
    UIButton* module2Button;
}

@end

@implementation Module1ViewController

- (void)loadView {
    [self createFields];
    [self createViews];
    [self createEvents];
}

- (void)createFields {

}

- (void)createViews {
    //1.从xib中获取View
    NSArray* list = [[NSBundle mainBundle] loadNibNamed: @"Module1PageView" owner: self options: nil];
    self.view = list.lastObject;
    
    module2Button = (UIButton*)[self.view viewWithTag: 400];
}

- (void)createEvents {
    [module2Button addTarget: self action: @selector(gotoModule2) forControlEvents:UIControlEventTouchUpInside];
}

- (void)loadData {

}

- (void) gotoModule2 {
    NSString* url = @"Module2ViewController";
    NSMutableDictionary* data = [[NSMutableDictionary alloc] init];
    [data setValue: @"Jianqiang" forKey: @"UserName"];
    [data setValue: @"28" forKey: @"Age"];
    
    [Navigator navigateTo:url withData: data];
}

@end
