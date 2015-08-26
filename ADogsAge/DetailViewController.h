//
//  DetailViewController.h
//  ADogsAge
//
//  Created by Stuart Hoffman on 8/21/13.
//  Copyright (c) 2013 Stuart Hoffman. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Animals.h"

@interface DetailViewController : UIViewController 

@property (strong, nonatomic) id detailItem;

@property (weak, nonatomic) IBOutlet UILabel *detailDescriptionLabel;

@property (strong, nonatomic) IBOutlet UITextView *detailTextView;

@property (strong, nonatomic) IBOutlet UIImageView *currentImage;

@property(nonatomic, strong) Animals *currentAnimal;
@end
