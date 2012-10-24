//
//  Word+Manage.h
//  BullShitBingo
//
//  Created by Mobile Team (G4M) on 9/13/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "Word.h"

@interface Word (Manage)
+ (NSArray *)getMazeByTheme:(NSString *)theme
                       inManagedObjectContext:(NSManagedObjectContext *)context;

+ (Word *)createWord:(NSString *)name
inManagedObjectContext:(NSManagedObjectContext *)context;

+ (NSArray *)getAllWords:(NSManagedObjectContext *)context;
@end
