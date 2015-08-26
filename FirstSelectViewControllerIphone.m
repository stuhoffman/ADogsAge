//
//  FirstSelectViewControllerIphone.m
//  ADogsAge
//
//  Created by Stuart Hoffman on 8/21/13.
//  Copyright (c) 2013 Stuart Hoffman. All rights reserved.
//

#import "FirstSelectViewControllerIphone.h"

@interface FirstSelectViewControllerIphone ()

@end

@implementation FirstSelectViewControllerIphone
@synthesize datePicker;
@synthesize chosenDate, currentDate;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    NSDate *date = [NSDate date];
    [datePicker setMaximumDate:date];
    currentDate = date;
    NSLog(@"Current Date is %@ .",currentDate);
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)calcDate:(id)sender {
    chosenDate = [datePicker date];
    
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    //stuff
    MasterViewController *dvc = [segue destinationViewController];
    NSLog(@"Sending the ChosenDate %@ to MasterViewConroller",chosenDate);
    [dvc setChosenDate:chosenDate];
    [dvc setCurrentDate:currentDate];
    
    
}

@end
