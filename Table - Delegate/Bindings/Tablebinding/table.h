//
//  table.h
//  Tablebinding
//
//  Created by Sandeep Joshi on 28/09/15.
//  Copyright (c) 2015 Sandeep Joshi. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "Person.h"
#import "Details.h"

@interface table : NSWindowController

@property (nonatomic) Person *person;
@property (nonatomic) NSMutableArray *people;
@property (nonatomic) Details *detailWindow;
@property (nonatomic) NSIndexSet *set;
-(void)showTable :(NSMutableArray *) list;
-(void)doubleClick: (NSIndexSet *) selectionIndexes;

@end
