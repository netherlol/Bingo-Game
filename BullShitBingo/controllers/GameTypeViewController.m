//
//  GameTypeViewController.m
//  BullShitBingo
//
//  Created by Mobile Team (G4M) on 9/11/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "GameTypeViewController.h"
#import "GameFlowViewController.h"

@interface GameTypeViewController ()

@end

@implementation GameTypeViewController

- (IBAction)GoToSettings:(UIBarButtonItem *)sender {
    GameFlowViewController *nav = (GameFlowViewController*)self.navigationController;
    [nav GoToSettings];
}

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

@end
