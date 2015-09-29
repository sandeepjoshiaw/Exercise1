//
//  table.m
//  Tablebinding
//
//  Created by Sandeep Joshi on 28/09/15.
//  Copyright (c) 2015 Sandeep Joshi. All rights reserved.
//

#import "PersonTableViewController.h"

@interface PersonTableViewController ()

@end

@implementation PersonTableViewController

- (void)windowDidLoad {
    [super windowDidLoad];
}

-(void)showlistOfPeopleinTableview :(NSMutableArray *) listOfPeople{
    self.people = [[NSMutableArray alloc]init];
    self.people = listOfPeople;
    
    [self showWindow:nil];
    
}

-(void)doubleClick:(NSIndexSet *)selectionIndexes{
   
    NSLog(@"%@",selectionIndexes);

    self.SinglePersonDetailWindow = [[SinglePersonDetailController alloc]initWithWindowNibName:@"SinglePersonDetailView"];
    
    [self.SinglePersonDetailWindow showSinglePersonDetails:selectionIndexes
                                              listOfPeople:self.people];
}
@end
