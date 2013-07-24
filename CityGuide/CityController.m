//
//  CityController.m
//  CityGuide
//
//  Created by Misogi on 2013/01/24.
//  Copyright (c) 2013年 Misogi. All rights reserved.
//

#import "CityController.h"
#import "CGAppDelegate.h"
#import "City.h"

@interface CityController ()

@end

@implementation CityController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (id)initWithIndexPath:(NSIndexPath *)indexPath {
    if ((self = [super init])) {
        index  = indexPath;
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    CGAppDelegate *delegate = (CGAppDelegate *) [[UIApplication sharedApplication] delegate];
    City *thisCity = [delegate.cities objectAtIndex:index.row];
    
    self.title = thisCity.cityName;
    descriptionView.text = thisCity.cityDescription;
    descriptionView.editable = NO;

    UIImage *image = thisCity.cityPicture;
    if(image == nil)
    {
        image = [UIImage imageNamed:@"QuestionMark.jpg"];
    }
    pictureView.image = image;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
