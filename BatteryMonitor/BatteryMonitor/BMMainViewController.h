//
//  BMMainViewController.h
//  BatteryMonitor
//
//  Created by Misogi on 2013/07/25.
//  Copyright (c) 2013年 Misogi. All rights reserved.
//

#import "BMFlipsideViewController.h"

@interface BMMainViewController : UIViewController <BMFlipsideViewControllerDelegate>

@property (weak, nonatomic) IBOutlet UILabel *levelLabel;
@property (weak, nonatomic) IBOutlet UILabel *stateLabel;

- (IBAction)showInfo:(id)sender;

- (void)batteryChanged:(NSNotification *)note;
- (NSString *)batteryLevel;
- (NSString *)batteryState:(UIDeviceBatteryState)batteryState;

@end
