//
//  MainLeftTableViewController.h
//  BullShitBingo
//
//  Created by Mobile Team (G4M) on 10/23/12.
//
//

#import <UIKit/UIKit.h>
#import "ComunicationParentChildProtocol.h"

@interface MainLeftTableViewController : UITableViewController
@property (nonatomic,strong) id<ComunicationParentChildProtocol> delegate;
@end
