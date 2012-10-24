//
//  CardViewController.m
//  BullShitBingo
//
//  Created by Mobile Team (G4M) on 9/11/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "CardViewController.h"
#import "UikitFramework.h"
#import "GameViewController.h"

@interface CardViewController ()<UITextFieldDelegate>
@property (nonatomic,strong) UIButton *button;
@property (nonatomic,strong) NSMutableArray *buttons;
@end

@implementation CardViewController
@synthesize button = _button;
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

-(void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    NSString *firstValue = [self.cardSize objectAtIndex:0];
    NSString *secondValue = [self.cardSize objectAtIndex:1];
    self.buttons = [UikitFramework createCard:[firstValue intValue]  rowPerLine:[secondValue intValue] + 1 view:self.view delegate:self];

}

-(void)checkAllEdited
{
    for (int c = 0; c < [self.buttons count]; c++) {
        UIButton *b = [self.buttons objectAtIndex:c];
        NSLog(@"%@",b.titleLabel.text);
        if (b.tag == 0 && !b.titleLabel.text) {
            return;
        }
    }
    for (int c = 0; c < [self.buttons count]; c++) {
        UIButton *b = [self.buttons objectAtIndex:c];
        if (b.tag == 1) {
            b.enabled = YES;
        }
}
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField
{

    [textField resignFirstResponder];
    NSArray *listItems = [textField.text componentsSeparatedByString:@" "];
    NSString *newText=@"";
    newText = [newText stringByAppendingString:[listItems objectAtIndex:0]];
    for (int c = 1; c < [listItems count]; c++) {
        newText = [newText stringByAppendingString:@"\n"];
        newText = [newText stringByAppendingString:[listItems objectAtIndex:c]];
    }
    [self.button setTitle:newText forState:UIControlStateNormal];

    self.button.titleLabel.font = [UIFont fontWithName:@"Arial" size: 10];
    [textField removeFromSuperview];
    [self checkAllEdited];
    return YES;
}

-(void)openTextField:(UIButton*)sender
{
    UITextField *txtName = [[UITextField alloc] initWithFrame:CGRectMake(self.view.frame.size.width/2 - 130, 45.0, 260.0, 25.0)];
    [txtName setBackgroundColor:[UIColor blackColor]];
    [txtName setTextAlignment:UITextAlignmentCenter];
    [txtName setKeyboardAppearance:UIKeyboardAppearanceAlert];
    [txtName setAutocorrectionType:UITextAutocorrectionTypeNo];
    txtName.text=@"";
    txtName.textColor = [UIColor whiteColor];
    [self.view addSubview:txtName];
    [txtName becomeFirstResponder];
    txtName.delegate = self;
    self.button = sender;
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    
    NSMutableArray *words = [[NSMutableArray alloc]init];
    for (int c = 0; c < [self.buttons count]; c++) {
        UIButton *b = [self.buttons objectAtIndex:c];
        [words addObject:b.titleLabel.text];
    }
    GameViewController *gvc = (GameViewController*)segue.destinationViewController;
    [gvc setWords:words];
    [gvc setCardSize:self.cardSize];
}

- (void)buttonTapped:(UIButton *)sender
{   
    if (sender.tag == 1) {
        sender.enabled = NO;
        [self performSegueWithIdentifier:@"play game" sender:self];
    }
    else {
        [self openTextField:sender];
    }
}


@end
