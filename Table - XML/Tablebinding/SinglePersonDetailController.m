//
//  Details.m
//  Tablebinding
//
//  Created by Sandeep Joshi on 28/09/15.
//  Copyright (c) 2015 Sandeep Joshi. All rights reserved.
//

#import "SinglePersonDetailController.h"

@interface SinglePersonDetailController ()

@end

@implementation SinglePersonDetailController

- (void)windowDidLoad {
    [super windowDidLoad];
}

-(void)showSinglePersonDetails :(NSIndexSet *)     selectedIndexes
                  listOfPeople :(NSMutableArray *) listOfPeople{
    
    self.people = listOfPeople;
    self.selectedPeople = [self.people objectsAtIndexes:selectedIndexes];
    self.person = [self.selectedPeople firstObject];
    [self showWindow:nil];
}


@end
