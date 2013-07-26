//
//  CGViewController.h
//  CityGuide
//
//  Created by Misogi on 2013/01/22.
//  Copyright (c) 2013年 Misogi. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CGViewController : UIViewController <UITableViewDataSource, UITableViewDelegate> {
    NSMutableArray *cities;
}

@property (weak, nonatomic) IBOutlet UITableView *tableView;

- (void)addCity:(id)sender;

@end
