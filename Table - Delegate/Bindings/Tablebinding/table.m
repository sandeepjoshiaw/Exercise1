//
//  table.m
//  Tablebinding
//
//  Created by Sandeep Joshi on 28/09/15.
//  Copyright (c) 2015 Sandeep Joshi. All rights reserved.
//

#import "table.h"

@interface table ()

@end

@implementation table

- (void)windowDidLoad {
    [super windowDidLoad];
    
    // Implement this method to handle any initialization after your window controller's window has been loaded from its nib file.
}

-(void)showTable :(NSMutableArray *) list{
    self.people = [[NSMutableArray alloc]init];
    self.people = list;
    
    [self showWindow:nil];
    
}

-(void)doubleClick:(NSIndexSet *)selectionIndexes{
    NSLog(@"%@",selectionIndexes);
//    self.set = [[NSIndexSet alloc]initWithIndexSet:selectionIndexes];
    self.detailWindow = [[Details alloc]initWithWindowNibName:@"Details"];
    [self.detailWindow showDetails:selectionIndexes list:self.people];
}
@end
