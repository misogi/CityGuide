//
//  BMFlipsideViewController.h
//  BatteryMonitor
//
//  Created by Misogi on 2013/07/25.
//  Copyright (c) 2013年 Misogi. All rights reserved.
//

#import <UIKit/UIKit.h>

@class BMFlipsideViewController;

@protocol BMFlipsideViewControllerDelegate
- (void)flipsideViewControllerDidFinish:(BMFlipsideViewController *)controller;
@end

@interface BMFlipsideViewController : UIViewController

@property (weak, nonatomic) id <BMFlipsideViewControllerDelegate> delegate;

- (IBAction)done:(id)sender;

@end
