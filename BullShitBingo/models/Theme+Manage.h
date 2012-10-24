//
//  Theme+Manage.h
//  BullShitBingo
//
//  Created by Mobile Team (G4M) on 9/13/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "Theme.h"

@interface Theme (Manage)
+ (Theme *)createTheme:(NSString *)name
inManagedObjectContext:(NSManagedObjectContext *)context;

+ (NSArray *)getAllThemes:(NSManagedObjectContext *)context;
@end
