//
//  UikitFramework.h
//  SpotDiferences
//
//  Created by Mobile Team (G4M) on 8/14/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface UikitFramework : NSObject

+(UIImageView*)createImageViewWithImage:(NSString*)image
                              positionX:(float)positionX
                              positionY:(float)positionY;

+(UIButton*)createButtonWithBackgroudImage:(NSString*)image
                                     title:(NSString*)title
                                 positionX:(float)positionX
                                 positionY:(float)positionY;

+(UILabel*)createLableWithText:(NSString*)text
                     positionX:(float)positionX
                     positionY:(float)positionY
                         width:(float)width
                        height:(float)height;

+(UIButton*)createButtonWithBackgroudImageAndWidth:(NSString*)image
                                             title:(NSString*)title
                                         positionX:(float)positionX
                                         positionY:(float)positionY
                                             width:(float)width
                                            height:(float)height;
+(NSMutableArray *)createCard:(int)lines
       rowPerLine:(int)rowPerLine
             view:(UIView*)view
         delegate:(UIViewController*)delegate;

+(NSMutableArray *)createCardForPlay:(int)lines
                          rowPerLine:(int)rowPerLine
                                view:(UIView*)view
                            delegate:(UIViewController*)delegate;

+(NSString*)getStripeByDifficulty:(NSString*)difficulty;
+(NSString*)getFontName;
+(void)makeAAlertView:(NSString*)title
              message:(NSString*)mesage;
@end
