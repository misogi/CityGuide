//
//  BMAppDelegate.h
//  BatteryMonitor
//
//  Created by Misogi on 2013/07/25.
//  Copyright (c) 2013年 Misogi. All rights reserved.
//

#import <UIKit/UIKit.h>

@class BMMainViewController;

@interface BMAppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (strong, nonatomic) BMMainViewController *mainViewController;

@property (nonatomic) BOOL monitorBattery;

@end
