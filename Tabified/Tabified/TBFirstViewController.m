//
//  TBFirstViewController.m
//  Tabified
//
//  Created by Misogi on 2013/07/26.
//  Copyright (c) 2013年 Misogi. All rights reserved.
//

#import "TBFirstViewController.h"

#import "TBAppDelegate.h"
#import "SimpleView.h"

@interface TBFirstViewController ()

@end

@implementation TBFirstViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.title = NSLocalizedString(@"First", @"First");
        self.tabBarItem.image = [UIImage imageNamed:@"first"];
    }
    return self;
}
							
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

#pragma mark - UITableViewDataSource Methods

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    if (nil == cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cell"];
    }
    cell.textLabel.text = @"Udon";
    return cell;
}

- (NSInteger)tableView:(UITableView *)tv numberOfRowsInSection:(NSInteger)section
{
    return 3;
}

#pragma mark - UITableViewDelegate Methods

- (void)tableView:tv didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    TBAppDelegate *delegate = (TBAppDelegate *)[[UIApplication sharedApplication] delegate];
    UIViewController *controller = [[SimpleView alloc] initWithNibName:@"SimpleView" bundle:nil];
    [delegate.navController pushViewController:controller animated:YES];


    [tv deselectRowAtIndexPath:indexPath animated:YES];
}

@end
