//
//  InicialContainerViewController.m
//  BullShitBingo
//
//  Created by Mobile Team (G4M) on 10/23/12.
//
//

#import "InicialContainerViewController.h"
#import "MainLeftTableViewController.h"
#import "GameFlowViewController.h"
#import "ProfileNavigarionViewController.h"

@interface InicialContainerViewController ()

@end

@implementation InicialContainerViewController

-(void)settingOptionChoosed:(NSString*)option
{
    NSLog(@"%@",option);
    UIStoryboard *storyboard = self.storyboard;
    ProfileNavigarionViewController *profileNavController = [storyboard instantiateViewControllerWithIdentifier:option];
    [self addSettingControllerToParentView:profileNavController];
    [profileNavController GoToSettings];
}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

-(void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    
    UIStoryboard *storyboard = self.storyboard;
    
    MainLeftTableViewController *mainSettings = [storyboard instantiateViewControllerWithIdentifier:@"main settings"];
    [self addControllerToParentView:mainSettings];
    
    mainSettings.delegate = self;
    
    GameFlowViewController *gameFlow = [storyboard instantiateViewControllerWithIdentifier:@"Home"];
    [self addControllerToParentView:gameFlow];
    //self.nav = gameFlow;
    //gameFlow.delegatee = self;
    

}

-(void)addSettingControllerToParentView:(UIViewController*)controller
{
    [self addChildViewController:controller];
    [controller didMoveToParentViewController:self];
    
    [controller.view setAutoresizingMask:self.autoResizeToFillScreen];
    CGRect rect = CGRectMake(270, 0, self.view.bounds.size.width, self.view.bounds.size.height);
    [controller.view setFrame:rect];
    
    [self.view addSubview:controller.view];
    
}


-(void)addControllerToParentView:(UIViewController*)controller
{
    [self addChildViewController:controller];
    [controller didMoveToParentViewController:self];
    
    [controller.view setAutoresizingMask:self.autoResizeToFillScreen];
    [controller.view setFrame:self.view.bounds];
    
    [self.view addSubview:controller.view];
    
}

- (NSUInteger)autoResizeToFillScreen
{
    return (UIViewAutoresizingFlexibleWidth |
            UIViewAutoresizingFlexibleHeight |
            UIViewAutoresizingFlexibleTopMargin |
            UIViewAutoresizingFlexibleBottomMargin |
            UIViewAutoresizingFlexibleLeftMargin |
            UIViewAutoresizingFlexibleRightMargin);
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
