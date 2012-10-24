//
//  ViewControllersAnimations.m
//  BullShitBingo
//
//  Created by Mobile Team (G4M) on 10/23/12.
//
//

#import "ViewControllersAnimations.h"

@implementation ViewControllersAnimations
+(void)moveViewController:(UIViewController*)controller
{
    if (controller.view.frame.origin.x == 0) {
        [self swipeRight:controller];
    }else{
        [self swipeleft:controller];
    }

}

+(void)swipe:(int)Y
  controller:(UIViewController*)controller
{
    [UIView animateWithDuration:0.3
                          delay:0
                        options:UIViewAnimationOptionBeginFromCurrentState
                     animations:^{
                         controller.view.frame = CGRectMake(Y, 0, controller.view.frame.size.width, controller.view.frame.size.height);
                     } completion:^(BOOL fin){}];
}

+(void)swipeRight:(UIViewController*)controller
{
    [self swipe:270 controller:controller];
}

+(void)swipeleft:(UIViewController*)controller
{
    [self swipe:0 controller:controller];
}


@end
