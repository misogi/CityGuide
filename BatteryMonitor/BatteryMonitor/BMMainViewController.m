//
//  BMMainViewController.m
//  BatteryMonitor
//
//  Created by Misogi on 2013/07/25.
//  Copyright (c) 2013年 Misogi. All rights reserved.
//

#import "BMMainViewController.h"
#import "BMAppDelegate.h"

@interface BMMainViewController ()

@end

@implementation BMMainViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    
    UIDevice *device = [UIDevice currentDevice];
    BMAppDelegate *appDelegate = (BMAppDelegate *)[[UIApplication sharedApplication] delegate];
    device.batteryMonitoringEnabled = appDelegate.monitorBattery;
    
    if(device.batteryMonitoringEnabled) {
        [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(batteryChanged:) name:@"UIDeviceBatteryLevelDidChangeNotification" object:nil];
        [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(batteryChanged:) name:@"UIDeviceBatteryStateDidChangeNotification" object:nil];
    } else {
        [[NSNotificationCenter defaultCenter] removeObserver:self name:@"UIDeviceBatteryStateDidChangeNotification" object:nil];
        [[NSNotificationCenter defaultCenter] removeObserver:self name:@"UIDeviceBatteryStateDidChangeNotification" object:nil];
    }
    
    _levelLabel.text = [self batteryLevel];
    _stateLabel.text = [self batteryState:device.batteryState];
    
    [super viewWillAppear:animated];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)dealloc
{
    [[NSNotificationCenter defaultCenter] removeObserver:self];
}

- (void)batteryChanged:(NSNotification *)note
{
    UIDevice *device = [UIDevice currentDevice];
    self.levelLabel.text = [self batteryLevel];
    self.stateLabel.text = [self batteryState:device.batteryState];
}

- (NSString *)batteryLevel
{
    UIDevice *device = [UIDevice currentDevice];
    
    NSString *levelString = nil;
    float level = device.batteryLevel;
    if (level == -1) {
        levelString = @"---%";
    } else {
        int percent = (int)(level * 100);
        levelString = [NSString stringWithFormat:@"%i%%", percent];
    }
    
    return levelString;
}

- (NSString *)batteryState:(UIDeviceBatteryState)batteryState
{
    NSString *state = nil;
    switch (batteryState) {
        case UIDeviceBatteryStateUnknown:
            state = @"Unknown";
            break;
        case UIDeviceBatteryStateUnplugged:
            state = @"Unplugged";
            break;
        case UIDeviceBatteryStateCharging:
            state = @"Charging";
            break;
        case UIDeviceBatteryStateFull:
            state = @"Full";
            break;
        default:
            state = @"Undefined";
            break;
    }
    return state;
}

#pragma mark - Flipside View

- (void)flipsideViewControllerDidFinish:(BMFlipsideViewController *)controller
{
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (IBAction)showInfo:(id)sender
{    
    BMFlipsideViewController *controller = [[BMFlipsideViewController alloc] initWithNibName:@"BMFlipsideViewController" bundle:nil];
    controller.delegate = self;
    controller.modalTransitionStyle = UIModalTransitionStyleFlipHorizontal;
    [self presentViewController:controller animated:YES completion:nil];
}

@end
