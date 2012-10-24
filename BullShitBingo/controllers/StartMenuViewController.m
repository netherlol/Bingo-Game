//
//  StartMenuViewController.m
//  BullShitBingo
//
//  Created by Mobile Team (G4M) on 9/11/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "StartMenuViewController.h"
#import "MyDocumentHandler.h"
#import "Seed.h"
#import "Word+Manage.h"
#import "Theme+Manage.h"

@interface StartMenuViewController ()
@property (nonatomic, weak) IBOutlet UIManagedDocument *document;
@end

@implementation StartMenuViewController
@synthesize document = _document;

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
    [[MyDocumentHandler sharedDocumentHandler] performWithDocument:^(UIManagedDocument *document){
        _document = document;
        [self useDocument];
        [self testData];
    }];
}

-(void)testData
{
    NSArray *themes = [Theme getAllThemes:self.document.managedObjectContext];
    for (int c = 0; c < [themes count]; c++) {
        Theme *theme = [themes objectAtIndex:c];
        NSLog(@"%@",theme.name);
        NSArray *words = [Word getMazeByTheme:theme.name inManagedObjectContext:self.document.managedObjectContext];
        for (int c = 0; c < [words count]; c++) {
            Word *word = [words objectAtIndex:c];
            NSLog(@"%@",word.word);
        }
    }
}

-(void)useDocument
{
    NSArray *themes = [self getThemes];
    
    if ([themes count] == 0) {
        [self populateInicialData];
        [self.document saveToURL:self.document.fileURL forSaveOperation:UIDocumentSaveForOverwriting completionHandler:NULL];
    }
}

-(void)populateInicialData
{
    [Seed populateDatabase:self.document.managedObjectContext];
}

-(NSArray *)getThemes
{
    return [Theme getAllThemes:self.document.managedObjectContext];
}


@end
