//
//  Details.h
//  Tablebinding
//
//  Created by Sandeep Joshi on 28/09/15.
//  Copyright (c) 2015 Sandeep Joshi. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "Person.h"

@interface SinglePersonDetailController : NSWindowController

@property (nonatomic) Person *person;
@property (nonatomic) NSMutableArray *people;
@property (nonatomic) NSArray *selectedPeople;

-(void)showSinglePersonDetails :(NSIndexSet *)selectedIndexes
                  listOfPeople :(NSMutableArray *) listOfPeople;

@end
