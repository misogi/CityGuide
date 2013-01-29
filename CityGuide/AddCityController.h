//
//  AddCityController.h
//  CityGuide
//
//  Created by Misogi on 2013/01/25.
//  Copyright (c) 2013年 Misogi. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AddCityController : UIViewController <UITableViewDataSource, UITableViewDelegate> {
    IBOutlet UITableView *tableView;
    IBOutlet UITableViewCell *nameCell;
    IBOutlet UITableViewCell *descriptionCell;
}

@end
