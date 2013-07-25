//
//  BMFlipsideViewController.m
//  BatteryMonitor
//
//  Created by Misogi on 2013/07/25.
//  Copyright (c) 2013年 Misogi. All rights reserved.
//

#import "BMFlipsideViewController.h"
#import "BMAppDelegate.h"

@interface BMFlipsideViewController ()

@end

@implementation BMFlipsideViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.title = @"Preferences";
    BMAppDelegate *appDelegate = (BMAppDelegate *)[[UIApplication sharedApplication] delegate];
    self.toggleSwitch.on = appDelegate.monitorBattery;
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Actions

- (IBAction)done:(id)sender
{
    BMAppDelegate *appDelegate = (BMAppDelegate *)[[UIApplication sharedApplication] delegate];
    appDelegate.monitorBattery = self.toggleSwitch.on;
    [self.delegate flipsideViewControllerDidFinish:self];
}

@end
