//
//  UikitFramework.m
//  SpotDiferences
//
//  Created by Mobile Team (G4M) on 8/14/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "UikitFramework.h"

#define fontSize 10
#define fontName @"junegull"

@implementation UikitFramework

+(void)makeAAlertView:(NSString*)title
              message:(NSString*)mesage
{
    UIAlertView *alertView = [[UIAlertView alloc]
                              initWithTitle:title
                              message:mesage
                              delegate:self
                              cancelButtonTitle:@"OK"
                              otherButtonTitles:nil];
    [alertView show];
}

+(UIImageView*)createImageViewWithImage:(NSString*)image
                              positionX:(float)positionX
                              positionY:(float)positionY
{
    UIImage *logo = [UIImage imageNamed:image]; 
    
    UIImageView *imageview = [[UIImageView alloc] initWithFrame:CGRectMake(positionX, positionY, logo.size.width, logo.size.height)];
    imageview.image = logo;
    return imageview;
}

+(UIButton*)createButtonWithBackgroudImage:(NSString*)image
                                     title:(NSString*)title
                                 positionX:(float)positionX
                                 positionY:(float)positionY
{
    UIImage *ButtonImage = [UIImage imageNamed:image];
    
    UIButton *button = [[UIButton alloc] initWithFrame:CGRectMake(positionX, positionY, ButtonImage.size.width,ButtonImage.size.height)];
    [button setBackgroundImage:ButtonImage forState:UIControlStateNormal];
    [button setTitle: title forState:UIControlStateNormal];
    [button setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    button.titleLabel.font = [UIFont fontWithName:fontName size: fontSize];
    button.titleLabel.textColor = [UIColor whiteColor];
    
    return button;
}

+(NSMutableArray *)createCardForPlay:(int)lines
                          rowPerLine:(int)rowPerLine
                                view:(UIView*)view
                            delegate:(UIViewController*)delegate
{
    NSMutableArray *buttons = [[NSMutableArray alloc] init];
    float sideSize = view.frame.size.height / lines;
    float topSize = view.frame.size.width / rowPerLine;
    int offset = topSize / 20;
    
    for (int line = 0; line<lines; line++) {
        for (int row = 0; row < rowPerLine; row++) {
            UIButton *button = [UikitFramework createButtonWithBackgroudImageAndWidth:@"btn_green" title:@"" positionX:row * topSize + offset positionY:sideSize * line + offset width:topSize - offset * 2 height:sideSize - offset * 2];
            [button addTarget:delegate action:@selector(buttonTapped:) forControlEvents:UIControlEventTouchUpInside];
            [view addSubview:button];
            button.tag = 0;
            [buttons addObject:button];
        }
    }
    return  buttons;
}


+(NSMutableArray *)createCard:(int)lines
       rowPerLine:(int)rowPerLine
             view:(UIView*)view
         delegate:(UIViewController*)delegate
{
    NSMutableArray *buttons = [[NSMutableArray alloc] init];
    float sideSize = view.frame.size.height / lines;
    float topSize = view.frame.size.width / rowPerLine;
    int offset = topSize / 20;
    
    for (int line = 0; line<lines; line++) {
        for (int row = 0; row < rowPerLine-1; row++) {
            UIButton *button = [UikitFramework createButtonWithBackgroudImageAndWidth:@"btn_green" title:@"" positionX:row * topSize + offset positionY:sideSize * line + offset width:topSize - offset * 2 height:sideSize - offset * 2];
            [button addTarget:delegate action:@selector(buttonTapped:) forControlEvents:UIControlEventTouchUpInside];
            [view addSubview:button];
            button.tag = 0;
            button.titleLabel.font = [UIFont fontWithName:@"Arial" size: 10];
            button.titleLabel.lineBreakMode = UILineBreakModeWordWrap;
            button.titleLabel.textAlignment = UITextAlignmentCenter;
            [buttons addObject:button];
        }
    }
    UIButton *button = [UikitFramework createButtonWithBackgroudImageAndWidth:@"btn_green" title:@"PLAY" positionX:(rowPerLine-1) * topSize + offset positionY:sideSize * (lines -1) + offset width:topSize - offset * 2 height:sideSize - offset * 2];
    button.tag = 1;
    [button addTarget:delegate action:@selector(buttonTapped:) forControlEvents:UIControlEventTouchUpInside];
    button.enabled = NO;
    [view addSubview:button];
    [buttons addObject:button];
    return  buttons;
}

+(UIButton*)createButtonWithBackgroudImageAndWidth:(NSString*)image
                                             title:(NSString*)title
                                         positionX:(float)positionX
                                         positionY:(float)positionY
                                             width:(float)width
                                            height:(float)height
{
    UIImage *ButtonImage = [UIImage imageNamed:image];
    
    UIButton *button = [[UIButton alloc] initWithFrame:CGRectMake(positionX, positionY, width,height)];
    [button setBackgroundImage:ButtonImage forState:UIControlStateNormal];
    [button setTitle: title forState:UIControlStateNormal];
    [button setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    button.titleLabel.font = [UIFont fontWithName:fontName size: fontSize];
    button.titleLabel.textColor = [UIColor whiteColor];
    
    return button;
}


+(UILabel*)createLableWithText:(NSString*)text
                     positionX:(float)positionX
                     positionY:(float)positionY
                         width:(float)width
                        height:(float)height
{
    UILabel *lable = [[UILabel alloc] initWithFrame:CGRectMake(positionX, positionY, width, height)];
    lable.text = text;
    lable.backgroundColor = [UIColor clearColor];
    lable.font = [UIFont fontWithName:fontName size: fontSize];
    lable.textColor = [UIColor whiteColor];
    lable.textAlignment = UITextAlignmentRight;

    return lable;
}

+(NSString*)getStripeByDifficulty:(NSString*)difficulty
{
    if([difficulty isEqualToString:@"beginner"])
        return @"beginner_stripe";
    else if ([difficulty isEqualToString:@"intermediate"]) {
        return @"intermediate_stripe";
    }
    else if ([difficulty isEqualToString:@"expert"]) {
        return @"expert_stripe";
    }
    else {
        return @"detective_stripe";
    }
}
      
+(NSString*)getFontName{return @"junegull";}
@end
