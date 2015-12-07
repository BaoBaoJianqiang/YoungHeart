//
//  APageViewController.m
//  MyApp
//
//  Created by jax on 13-9-2.
//  Copyright (c) 2013年 Bao. All rights reserved.
//

#import "Module2ViewController.h"

@interface Module2ViewController () {
    UILabel* labelUserName;

    NSString* userName;
}

@end

@implementation Module2ViewController

- (void)loadView {
    [self createFields];
    [self createViews];
    [self createEvents];
}

- (void)createFields {
    userName = [self.param objectForKey: @"UserName"];
}

- (void)createViews {
    //1.从xib中获取View
    NSArray* list = [[NSBundle mainBundle] loadNibNamed: @"Module2PageView" owner: self options: nil];
    self.view = list.lastObject;
    
    labelUserName = (UILabel*)[self.view viewWithTag: 100];
    labelUserName.text = userName;
}

- (void)createEvents {
    [[NSNotificationCenter defaultCenter] addObserver:self
                                             selector:@selector(execute:)
                                             name:@"Module"
                                             object:nil];
}

- (void)execute:(NSNotification *)notification {

}



- (void)loadData {
}

@end
