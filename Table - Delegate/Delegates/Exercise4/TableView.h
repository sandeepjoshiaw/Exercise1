//
//  TableView.h
//  Exercise4
//
//  Created by Sandeep Joshi on 21/09/15.
//  Copyright (c) 2015 Sandeep Joshi. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "NewWindowController.h"

@interface TableView : NSWindowController <NSTableViewDataSource, NSTableViewDelegate>

@property (nonatomic) NSMutableArray *records;
@property (nonatomic) IBOutlet NSTableView *personDetails;
@property (nonatomic) NewWindowController* personWindow;
@property SEL doubleAction;
@property (readonly) NSInteger clickedColumn;
@property (readonly) NSInteger clickedRow;

-(void)showtable :(NSMutableArray *)list;
-(void)doubleClickedCell:(id)sender;

@end
