//
//  SelectCardSizeViewController.m
//  BullShitBingo
//
//  Created by Mobile Team (G4M) on 9/11/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "SelectCardSizeViewController.h"
#import "CardViewController.h"

@interface SelectCardSizeViewController ()
@property (nonatomic,strong) NSMutableArray *cardSizes;
@property (nonatomic,strong) NSMutableArray *segueValue;
@end

@implementation SelectCardSizeViewController
@synthesize cardSizes = _cardSizes;
@synthesize segueValue = _segueValue;

-(NSMutableArray*)segueValue
{
    if(!_segueValue){
        _segueValue = [[NSMutableArray alloc]init];
    }
    return _segueValue;
}

-(NSMutableArray*)cardSizes
{
    if(!_cardSizes){
        _cardSizes = [[NSMutableArray alloc]init];
        [_cardSizes addObject:[[NSMutableArray alloc]initWithObjects:@"3",@"3", nil]];
        [_cardSizes addObject:[[NSMutableArray alloc]initWithObjects:@"4",@"4", nil]];
        [_cardSizes addObject:[[NSMutableArray alloc]initWithObjects:@"5",@"5", nil]];

    }
    return _cardSizes;
}

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];

    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
 
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

-(void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    // Return the number of rows in the section.
    return [self.cardSizes count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"card size";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
     
    NSMutableArray *cardSize = [self.cardSizes objectAtIndex:indexPath.row];
    cell.textLabel.text = [NSString stringWithFormat:@"%@ X %@",[cardSize objectAtIndex:0],[cardSize objectAtIndex:1]];
    cell.textLabel.textAlignment = UITextAlignmentCenter;
    return cell;
}

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:[NSArray arrayWithObject:indexPath] withRowAnimation:UITableViewRowAnimationFade];
    }   
    else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
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

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    CardViewController *card = (CardViewController*)segue.destinationViewController;
    card.cardSize = self.segueValue;
}

#pragma mark - Table view delegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    self.segueValue = [self.cardSizes objectAtIndex:indexPath.row];
    [self performSegueWithIdentifier:@"card creating" sender:self];
    
    // Navigation logic may go here. Create and push another view controller.
    /*
     <#DetailViewController#> *detailViewController = [[<#DetailViewController#> alloc] initWithNibName:@"<#Nib name#>" bundle:nil];
     // ...
     // Pass the selected object to the new view controller.
     [self.navigationController pushViewController:detailViewController animated:YES];
     */
}

@end
