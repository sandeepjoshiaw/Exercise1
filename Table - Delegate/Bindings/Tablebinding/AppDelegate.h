//
//  AppDelegate.h
//  Tablebinding
//
//  Created by Sandeep Joshi on 28/09/15.
//  Copyright (c) 2015 Sandeep Joshi. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "Person.h"
#import "table.h"

@interface AppDelegate : NSObject <NSApplicationDelegate>

@property (nonatomic) Person *person;
@property (nonatomic) NSMutableArray *People;
@property (nonatomic) table *table;

-(IBAction)AddNew:(id)sender;
-(IBAction)showlist:(id)sender;

@end

