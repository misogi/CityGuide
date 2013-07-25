//
//  BMMainViewController.m
//  BatteryMonitor
//
//  Created by Misogi on 2013/07/25.
//  Copyright (c) 2013年 Misogi. All rights reserved.
//

#import "BMMainViewController.h"

@interface BMMainViewController ()

@end

@implementation BMMainViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
