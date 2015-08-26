//
//  Animals.h
//  ADogsAge
//
//  Created by Stuart Hoffman on 8/21/13.
//  Copyright (c) 2013 Stuart Hoffman. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Animals : NSObject

@property (nonatomic, strong)NSString *name;
@property (nonatomic, strong)NSString *filename;
@property (nonatomic, strong)NSString *notes;
@property (nonatomic, strong)NSDate *chosenDate;
@property (nonatomic, strong)NSDate *currentDate;
- (NSString *)ageOfAnimal: (Animals  *)animal;

@end
