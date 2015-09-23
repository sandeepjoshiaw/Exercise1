//
//  TableView.m
//  Exercise4
//
//  Created by Sandeep Joshi on 21/09/15.
//  Copyright (c) 2015 Sandeep Joshi. All rights reserved.
//

#import "TableView.h"
#import "Person.h"
#import "AppDelegate.h"
#import "NewWindowController.h"

@interface TableView ()

@end

@implementation TableView

- (void)windowDidLoad {
    [super windowDidLoad];
    [self.personDetails setTarget:self];
    [self.personDetails setDoubleAction:@selector(doubleClickedCell:)];
    
    
    // Implement this method to handle any initialization after your window controller's window has been loaded from its nib file.
    [self.personDetails reloadData];
}

-(void)showtable : (NSMutableArray *)list{
    
    self.records = [[NSMutableArray alloc]init];
    self.records = list;
    
    [self showWindow:nil];
}


- (NSInteger)numberOfRowsInTableView:(NSTableView *)tableView{
    
    return [self.records count];
    
}

- (id)tableView:(NSTableView *)tableView objectValueForTableColumn:(NSTableColumn *)tableColumn row:(NSInteger)row{
    
    Person *record = [self.records objectAtIndex:row];
    NSString *identity = [tableColumn identifier];
    
    if([identity isEqualToString:@"fname"]){
        
        return record.FName;
    }
    
    else
        return  record.LName;
}

-(void)doubleClickedCell:(id)sender{
    
    NSLog(@"Double clicked!!");
    self.personWindow = [[NewWindowController alloc]initWithWindowNibName:@"NewWindowController"];
    [self.personWindow displaytheWindow:[self.records objectAtIndex:self.personDetails.clickedRow]];
    NSLog(@"Clicked row- %ld",(long)self.personDetails.clickedRow);
}


@end
