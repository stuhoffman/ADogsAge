//
//  MasterViewController.h
//  ADogsAge
//
//  Created by Stuart Hoffman on 8/21/13.
//  Copyright (c) 2013 Stuart Hoffman. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DetailViewController.h"
#import "Animals.h"

@interface MasterViewController : UITableViewController <UITableViewDataSource, UITableViewDelegate>

@property(nonatomic, strong) NSDictionary *species;
@property(nonatomic, strong) NSArray    *speciesKeys;
@property(nonatomic, strong) DetailViewController *detailViewController;
@property(nonatomic, strong) Animals *currentAnimal;
@property(nonatomic, strong) NSDate *chosenDate;
@property(nonatomic, strong) NSDate *currentDate;

@end
