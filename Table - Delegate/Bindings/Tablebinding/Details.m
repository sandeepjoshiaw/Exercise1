//
//  Details.m
//  Tablebinding
//
//  Created by Sandeep Joshi on 28/09/15.
//  Copyright (c) 2015 Sandeep Joshi. All rights reserved.
//

#import "Details.h"

@interface Details ()

@end

@implementation Details

- (void)windowDidLoad {
    [super windowDidLoad];
    
    // Implement this method to handle any initialization after your window controller's window has been loaded from its nib file.
}

-(void)showDetails :(NSIndexSet *)index list :(NSMutableArray *) list{
    
    self.person = [[Person alloc]init];
    self.people = [[NSMutableArray alloc]init];
    
    self.people = list;
    
//    self.person =  [self.people objectAtIndex:0];
    NSArray *array = [self.people objectsAtIndexes:index];
    Person *p = [[Person alloc]init];
    
    for(p in array){
        self.person = p;
        NSLog(@"%@ %@ %@",p.FName,p.LName,p.Age);
        [self showWindow:nil];
        sleep(1.5);
    }
    
    
}


@end
