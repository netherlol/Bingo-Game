//
//  GameFlowViewController.m
//  BullShitBingo
//
//  Created by Mobile Team (G4M) on 10/23/12.
//
//

#import "GameFlowViewController.h"
#import "ViewControllersAnimations.h"

@interface GameFlowViewController ()
@end

@implementation GameFlowViewController

-(void)GoToSettings
{
    [ViewControllersAnimations moveViewController:self];
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

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
