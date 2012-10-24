//
//  GameViewController.m
//  BullShitBingo
//
//  Created by Mobile Team (G4M) on 9/11/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "GameViewController.h"
#import "UikitFramework.h"

@interface GameViewController ()
@property (nonatomic,strong) NSMutableArray *buttons;
@end

@implementation GameViewController
@synthesize words = _words;
@synthesize cardSize = _cardSize;
@synthesize buttons = _buttons;


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
}

-(void)placeWords
{
    for (int c =0; c < [self.buttons count]; c++) {
        UIButton *b = [self.buttons objectAtIndex:c];
        NSString *s = [self.words objectAtIndex:c];
        [b setTitle:s forState:UIControlStateNormal];
    }
}

-(void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    NSString *firstValue = [self.cardSize objectAtIndex:0];
    NSString *secondValue = [self.cardSize objectAtIndex:1];
    self.buttons = [UikitFramework createCardForPlay:[firstValue intValue]  rowPerLine:[secondValue intValue] view:self.view delegate:self];
    [self placeWords];
}

-(BOOL)checkWin
{
    for (int c =0; c < [self.buttons count]; c++) {
        UIButton *b = [self.buttons objectAtIndex:c];
        if (b.enabled == YES) {
            return NO;
        }
    }
    return YES;
}

- (void)buttonTapped:(UIButton *)sender
{   
    sender.enabled = NO;
    if ([self checkWin]) {
        [UikitFramework makeAAlertView:@"WIN" message:@"CONGRATZS"];
    }
}



@end
