//
//  MasterViewController.m
//  ADogsAge
//
//  Created by Stuart Hoffman on 8/21/13.
//  Copyright (c) 2013 Stuart Hoffman. All rights reserved.
//

#import "MasterViewController.h"

#import "DetailViewController.h"

@interface MasterViewController () {
    NSMutableArray *_objects;
}
@end

@implementation MasterViewController
@synthesize species;
@synthesize speciesKeys;
@synthesize currentAnimal;
@synthesize currentDate,chosenDate;

NSMutableArray *animalsArray;

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    //stuff
    DetailViewController *dvc = [segue destinationViewController];
    NSIndexPath *path = [self.tableView indexPathForSelectedRow];
    Animals *c = [animalsArray objectAtIndex:path.row];
    [c setChosenDate:chosenDate];
    [c setCurrentDate:currentDate];
    [dvc setCurrentAnimal:c];
    NSLog(@"Sent CurrentDate: %@ and ChosenDate: %@ to DetailViewController",c.currentDate,c.chosenDate);
    NSLog(@"Type of Animal Chosen: %@ ",c.name);
}
- (void)awakeFromNib
{
    [super awakeFromNib];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    //self.navigationItem.leftBarButtonItem = self.editButtonItem;
    
    NSString *myFile = [[NSBundle mainBundle]
                        pathForResource:@"species" ofType:@"plist"];
    
    species = [[NSDictionary alloc] initWithContentsOfFile:myFile];
    speciesKeys = [species allKeys];
    
    //Populate a list of background images.
    animalsArray = [[NSMutableArray alloc] init];
    
    Animals *pic = [[Animals alloc] init];
    [pic setName:@"Cat"];
    [pic setFilename:@"overlook.png"];
    [pic setNotes:@"A common misconception is that Cats age 7 years for each one or our own. In reality cats under the age of 3 years age at about 1-2 years every few months. After that cats age at about 4 cat years for every human year, and outside cats can age twice as fast as an indoor cat. So keep in mind that 7 years is only a rough estimate for calculating the age of a cat."];
    [animalsArray addObject:pic];
    
    pic = [[Animals alloc] init];
    [pic setName:@"Dog"];
    [pic setFilename:@"overlook.png"];
    [pic setNotes:@"A common misconception is that dogs age 7 years for each one or our own. In reality dogs under the age of 3 years age at about 1-2 years every few months. After that the size of the breed makes a difference in the aging process and will be reported separately. So keep in mind that 7 years is only a rough estimate for calculating the age of a dog."];
    [animalsArray addObject:pic];
    
    pic = [[Animals alloc] init];
    [pic setName:@"Human"];
    [pic setFilename:@"beach.png"];
    [pic setNotes:@"Humans, live 1 year for every Human year... except politicians."];
    [animalsArray addObject:pic];
    
    pic = [[Animals alloc] init];
    [pic setName:@"Olives"];
    [pic setFilename:@"olives.png"];
    [pic setNotes:@"Olives ripening on a tree."];
    [animalsArray addObject:pic];
    
    pic = [[Animals alloc] init];
    [pic setName:@"Winery"];
    [pic setFilename:@"winery.png"];
    [pic setNotes:@"A sign for the Old Creek Ranch and Winery."];
    [animalsArray addObject:pic];
    
    
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)insertNewObject:(id)sender
{
    
}

#pragma mark - Table View

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return species.count;
}

/*
 - (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
 {
 if (!self.detailViewController) {
 self.detailViewController = [[DetailViewController alloc] initWithNibName:@"DetailViewController" bundle:nil];
 }
 
 NSString *someObject = [[NSString alloc] initWithFormat:@"You chose %i", [indexPath row]];
 [self.detailViewController setDetailItem:someObject];
 [self.navigationController pushViewController:self.detailViewController animated:YES];
 
 }
 */
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell" ];
    if (cell == nil) {
        cell = [[UITableViewCell alloc]
                initWithStyle:UITableViewCellStyleDefault
                reuseIdentifier:@"cell"];
        
    }
    
    //Update the cell text
    NSString *currentSpecies = [speciesKeys objectAtIndex:indexPath.row];
    [[cell textLabel] setText:currentSpecies];
    
    NSString *currentSpeciesDetail = [species objectForKey:[speciesKeys objectAtIndex:indexPath.row]];
    
    
    //Update the icon image
    NSString *imageFile = [[NSBundle mainBundle] pathForResource:currentSpeciesDetail ofType:@"png"];
    UIImage *image = [[UIImage alloc] initWithContentsOfFile:imageFile];
    [[cell imageView]setImage:image];
    
    cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    return cell;
}

- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the specified item to be editable.
    return NO;
}

/*
 - (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
 {
 if (editingStyle == UITableViewCellEditingStyleDelete) {
 [_objects removeObjectAtIndex:indexPath.row];
 [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
 } else if (editingStyle == UITableViewCellEditingStyleInsert) {
 // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view.
 }
 }
 */
/*
 // Override to support rearranging the table view.
 - (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath
 {
 }
 */

/*
 // Override to support conditional rearranging of the table view.
 - (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath
 {
 // Return NO if you do not want the item to be re-orderable.
 return YES;
 }
 */

/*
 - (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
 {
 if ([[segue identifier] isEqualToString:@"showDetail"]) {
 NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
 NSDate *object = _objects[indexPath.row];
 [[segue destinationViewController] setDetailItem:object];
 }
 }
 */
@end
