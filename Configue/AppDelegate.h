//
//  AppDelegate.h
//  MyApp
//
//  Created by baojianqiang on 15/12/3.
//  Copyright © 2015年 baojianqiang. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MainViewController.h"

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (strong, nonatomic) UINavigationController *navController;

@property(nonatomic,strong) MainViewController *mainViewController;

@end

