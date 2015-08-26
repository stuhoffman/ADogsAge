//
//  DetailViewController.m
//  ADogsAge
//
//  Created by Stuart Hoffman on 8/21/13.
//  Copyright (c) 2013 Stuart Hoffman. All rights reserved.
//

#import "DetailViewController.h"
#import "Animals.h"
@interface DetailViewController ()
- (void)configureView;
@end

@implementation DetailViewController
@synthesize detailDescriptionLabel = _detailDescriptionLabel;
@synthesize detailItem = _detailItem;
@synthesize currentImage = _imageView;
@synthesize currentAnimal;
@synthesize detailTextView;
#pragma mark - Managing the detail item


- (void)setDetailItem:(id)newDetailItem
{
    if (_detailItem != newDetailItem) {
        _detailItem = newDetailItem;
        // Update the view.
        [self configureView];
    }
}

- (void)configureView
{
    // Update the user interface for the detail item.
    
    if (self.detailItem) {
        self.detailDescriptionLabel.text = [self.detailItem description];
    }
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    UIImage *image = [UIImage imageNamed:[currentAnimal filename]];
    [self.currentImage setImage:image];
    NSString *title = [[NSString alloc] initWithFormat:@"%@ years" ,[currentAnimal name]] ;
    [self setTitle:title];
    [self configureView];
    NSMutableString *answer = [[NSMutableString alloc]initWithFormat:@"%@",[currentAnimal ageOfAnimal:currentAnimal]];
    NSMutableString *notes = [[NSMutableString alloc]initWithFormat:@"%@",[currentAnimal notes]];
    
    [_detailDescriptionLabel setText: answer];
    [detailTextView setText:notes];
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
