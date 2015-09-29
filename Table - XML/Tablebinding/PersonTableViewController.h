//
//  table.h
//  Tablebinding
//
//  Created by Sandeep Joshi on 28/09/15.
//  Copyright (c) 2015 Sandeep Joshi. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "Person.h"
#import "SinglePersonDetailController.h"

@interface PersonTableViewController : NSWindowController

@property (nonatomic) Person *person;
@property (nonatomic) NSMutableArray *people;
@property (nonatomic) SinglePersonDetailController *SinglePersonDetailWindow;


-(void)showlistOfPeopleinTableview :(NSMutableArray *) listOfPeople;
-(void)doubleClick:(NSIndexSet *)     selectionIndexes;

@end
