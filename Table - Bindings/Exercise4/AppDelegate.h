//
//  AppDelegate.h
//  Exercise4
//
//  Created by Sandeep Joshi on 16/09/15.
//  Copyright (c) 2015 Sandeep Joshi. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "NewWindowController.h"
#import "TableView.h"

@interface AppDelegate : NSObject <NSApplicationDelegate>

-(IBAction)buttonClick:(id)sender;
-(IBAction)addRecord:(id)sender;

@property (nonatomic) IBOutlet NSTextField *fname;
@property (nonatomic) IBOutlet NSTextField *lname;
@property (nonatomic) IBOutlet NSTextField *age;
@property (nonatomic) IBOutlet NSTextField *ht;
@property (nonatomic) IBOutlet NSTextField *dob;
@property (nonatomic) IBOutlet NSTextField *bplace;

@property (nonatomic) NewWindowController* personWindow;

@property (nonatomic) TableView *table;

@property NSMutableArray *records;



@end

