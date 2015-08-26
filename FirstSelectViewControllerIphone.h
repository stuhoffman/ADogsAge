//
//  FirstSelectViewControllerIphone.h
//  ADogsAge
//
//  Created by Stuart Hoffman on 8/21/13.
//  Copyright (c) 2013 Stuart Hoffman. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Animals.h"
#import "MasterViewController.h"

@interface FirstSelectViewControllerIphone : UIViewController
- (IBAction)calcDate:(id)sender;
@property (strong, nonatomic) IBOutlet UIDatePicker *datePicker;
@property(strong, nonatomic) NSDate *chosenDate;
@property(strong, nonatomic) NSDate *currentDate;

@end
