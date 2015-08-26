//
//  Animals.m
//  ADogsAge
//
//  Created by Stuart Hoffman on 8/21/13.
//  Copyright (c) 2013 Stuart Hoffman. All rights reserved.
//

#import "Animals.h"

@implementation Animals
@synthesize name, filename, notes, chosenDate, currentDate;

- (NSString *)ageOfAnimal: (Animals  *)animal
{
    NSString *age = [[NSString alloc]initWithFormat:@"Nuthin"];
    
    NSDateFormatter *formatter = [[NSDateFormatter alloc]init];
    
    [formatter setDateFormat:@"YYYY"];
    
    NSNumberFormatter *numFormatter = [[NSNumberFormatter alloc] init];
    [numFormatter setNumberStyle:NSNumberFormatterDecimalStyle];
    [numFormatter setMaximumFractionDigits:2];
    [numFormatter setRoundingMode: NSNumberFormatterRoundHalfUp];
    
    NSDate *startDate = chosenDate;
    NSDate *endDate = currentDate;
    
    NSDateComponents *dayComponent, *monthComponent;
    NSInteger days = 0;
    NSInteger months = 0;
    double yearz = 0;
    double yearzLarge = 0;
    double yearzXLarge = 0;
    double yearzOutdoor = 0;
    NSNumber *num = 0;
    
    dayComponent = [[NSCalendar currentCalendar] components: NSDayCalendarUnit
                                                   fromDate: startDate toDate: endDate options: 0];
    
    monthComponent = [[NSCalendar currentCalendar] components: NSMonthCalendarUnit
                                                     fromDate: startDate toDate: endDate options: 0];
    
    days = [dayComponent day];
    NSLog(@"days = %i",days);
    months = [monthComponent month];
    NSLog(@"months = %i",months);
    //convert the int days to double
    num = [[NSNumber alloc]initWithInt:days];
    
    //Calculate the age of your pet in other Animals Years.
    if ([animal.name isEqualToString:@"Dog"]) {
        yearz = [num doubleValue]/365;
        NSLog(@"Calculating the Age in Dog Years: %g",yearz);
        
        if (yearz < 1) {
            double mo = months;
            if (months >= 12) {
                mo = months/12;
            }
            NSLog(@"Mo: %g",mo);
            
            if (mo <= 1) {
                yearz = 1;
                yearzLarge = 1;
                yearzXLarge  = 1;
                
            }else if (mo <= 2) {
                yearz = 2;
                yearzLarge = 2;
                yearzXLarge  = 2;
                
            }else if (mo <= 4) {
                yearz = 6;
                yearzLarge = 6;
                yearzXLarge  = 6;
                
            }else if (mo <= 6) {
                yearz = 10;
                yearzLarge = 10;
                yearzXLarge  = 10;
                
            }else if (mo <=  10) {
                yearz = 14;
                yearzLarge = 14;
                yearzXLarge  = 14;
                
            }
        }else if (yearz  == 1) {
            yearz = 16;
            yearzLarge = 16;
            yearzXLarge  = 16;
            
        }else if (yearz <= 1.5) {
            yearz = 20;
            yearzLarge = 20;
            yearzXLarge  = 20;
            
        }else if (yearz <= 2) {
            yearz = 24;
            yearzLarge = 24;
            yearzXLarge  = 24;
            
        }else if (yearz <= 3) {
            yearz = 29;
            yearzLarge = 30;
            yearzXLarge  = 31;
        }else if (yearz <= 4) {
            yearz = 34;
            yearzLarge = 36;
            yearzXLarge  = 38;
        }else if (yearz<= 5) {
            yearz = 39;
            yearzLarge = 42;
            yearzXLarge  = 45;
        }else if (yearz <= 6) {
            yearz = 44;
            yearzLarge = 48;
            yearzXLarge  = 52;
        }else if (yearz <= 7) {
            yearz = 49;
            yearzLarge = 54;
            yearzXLarge  = 59;
        }else if (yearz <= 8) {
            yearz = 54;
            yearzLarge = 60;
            yearzXLarge  = 66;
        }else if (yearz <= 9) {
            yearz = 59;
            yearzLarge = 66;
            yearzXLarge  = 73;
        }else if (yearz <= 10) {
            yearz = 64;
            yearzLarge = 72;
            yearzXLarge  = 80;
        }else if (yearz <= 11) {
            yearz = 69;
            yearzLarge = 78;
            yearzXLarge  = 87;
        }else if (yearz <= 12) {
            yearz = 74;
            yearzLarge = 84;
            yearzXLarge  = 94;
        }else if (yearz <= 13) {
            yearz = 79;
            yearzLarge = 90;
            yearzXLarge  = 101;
        }else if (yearz <= 14) {
            yearz = 84;
            yearzLarge = 96;
            yearzXLarge  = 108;
        }else if (yearz > 14)
        {
            yearz = yearz * 6;//sm/m
            yearzLarge = yearz * 6.86;//L
            yearzXLarge  = yearz * 7.71;//XL
        }
        
        
        
        NSLog(@"By Breed InYears \n(sm/m): %.2f \n(L): %.2f \n(XL): %.2f\n",yearz,yearzLarge,yearzXLarge);
        
    }//Dog
    else if([animal.name isEqualToString:@"Cat"])
    {
        yearz = [num doubleValue]/365;
        NSLog(@"Calculating the Age in Cat Years: %g",yearz);
        
        if (yearz < 1) {
            double mo = months;
            if (months >= 12) {
                mo = months/12;
            }
            NSLog(@"Mo: %g",mo);
            if (mo <= 1) {
                yearz = 1;
                yearzOutdoor = 1;
            }
            else if (mo <= 2) {
                yearz = 3;
                yearzOutdoor = 3;
                
            }else if (mo <= 4) {
                yearz = 6;
                yearzOutdoor = 6;
                
            }else if (mo <= 6) {
                yearz = 9;
                yearzOutdoor = 9;
                
            }else if (mo <=  8) {
                yearz = 11;
                yearzOutdoor = 11;
                
            }else if (mo <=  10) {
                yearz = 13;
                yearzOutdoor = 13;
                
            }
        }else if (yearz  == 1) {
            yearz = 15;
            yearzOutdoor = 15;
            
        }else if (yearz <= 1.5) {
            yearz = 20;
            yearzOutdoor = 20;
            
        }else if (yearz <= 2) {
            yearz = 24;
            yearzOutdoor = 24;
            
        }else if (yearz <= 3) {
            yearz = 28;
            yearzOutdoor = 32;
            
        }else if (yearz <= 4) {
            yearz = 32;
            yearzOutdoor = 40;
            
        }else if (yearz<= 5) {
            yearz = 36;
            yearzOutdoor = 48;
            
        }else if (yearz <= 6) {
            yearz = 40;
            yearzOutdoor = 56;
            
        }else if (yearz <= 7) {
            yearz = 44;
            yearzOutdoor = 64;
            
        }else if (yearz <= 8) {
            yearz = 48;
            yearzOutdoor = 72;
            
        }else if (yearz <= 9) {
            yearz = 52;
            yearzOutdoor = 80;
            
        }else if (yearz <= 10) {
            yearz = 56;
            yearzOutdoor = 88;
            
        }else if (yearz <= 11) {
            yearz = 60;
            yearzOutdoor = 96;
            
        }else if (yearz <= 12) {
            yearz = 64;
            yearzOutdoor = 104;
            
        }else if (yearz <= 13) {
            yearz = 68;
            yearzOutdoor = 112;
            
        }else if (yearz <= 14) {
            yearz = 72;
            yearzOutdoor = 120;
            
        }else if (yearz > 14)
        {
            yearz = yearz * 5.14;
            yearzOutdoor = yearz * 8.57;
        }
        
        //indoor > 14 = 5.14
        //outdoor > 14 = 8.57
        
        
        NSLog(@"Indoor/Outdoor InYears \n(INDOOR): %.2f \n(OUTDOOR): %.2f ",yearz,yearzOutdoor);
        
    }//Cat
    else if([animal.name isEqualToString:@"Human"])
    {
        NSLog(@"Calculating the Age in Human Years");
        
        yearz = [num doubleValue]/365;
        NSLog(@"InYears: %.2f",yearz);
        
        
    }//Human
    
    /*
     Now we create the age String to return to the detailViewController.
     */
    //age = [[NSString alloc]initWithFormat:@"%d years, %d months, and %d days", yearz, months,days];
    age = [[NSString alloc]initWithFormat:@"%.2f years", yearz];
    if ([animal.name isEqualToString:@"Dog"]) {
        if (yearzXLarge != yearz) {
            age = [[NSString alloc]initWithFormat:@"Dog size: Years \n(SM/M): %.2f \n       (L): %.2f \n     (XL): %.2f\n",yearz,yearzLarge,yearzXLarge];
        }
    }//dog
    else if([animal.name isEqualToString:@"Cat"])
    {
        if (yearzOutdoor != yearz) {
            age = [[NSString alloc]initWithFormat:@"In/out doors: Years \n   (Indoors): %.2f \n(Outdoors): %.2f ",yearz,yearzOutdoor];
        }
    }
    return age;
}

@end
