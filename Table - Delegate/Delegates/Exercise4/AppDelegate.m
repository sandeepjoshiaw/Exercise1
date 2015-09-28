//
//  AppDelegate.m
//  Exercise4
//
//  Created by Sandeep Joshi on 16/09/15.
//  Copyright (c) 2015 Sandeep Joshi. All rights reserved.
//

#import "AppDelegate.h"
#import "Person.h"
#import "NewWindowController.h"

@interface AppDelegate ()

@property (weak) IBOutlet NSWindow *window;


@end

@implementation AppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
    // Insert code here to initialize your application
    self.records = [[NSMutableArray alloc]init];
}


-(IBAction)buttonClick:(id)sender{
   
//    Person *newPerson = [[Person alloc]init];
//    newPerson.FName = @"Peter";
//    newPerson.LName = @"Williams";
//    newPerson.Age = @"20";
//    
//    _personWindow = [[NewWindowController alloc]initWithWindowNibName:@"NewWindowController"];
//    [_personWindow displaytheWindow:newPerson];
    
    self.table = [[TableView alloc]initWithWindowNibName:@"TableView"];
    
    [self.table showtable : self.records];
    
}

-(IBAction)addRecord:(id)sender{
    
    Person *newrecord = [[Person alloc]init];
    newrecord.FName = self.fname.stringValue;
    newrecord.LName = self.lname.stringValue;
    newrecord.Age = self.age.stringValue;
    newrecord.Height = self.ht.stringValue;
    newrecord.DOB = self.dob.stringValue;
    newrecord.Bplace = self.bplace.stringValue;
    
    [self.records addObject:newrecord];
    
    self.fname.stringValue = @"";
    self.lname.stringValue = @"";
    self.age.stringValue = @"";
    self.ht.stringValue = @"";
    self.dob.stringValue = @"";
    self.bplace.stringValue = @"";
}


- (void)applicationWillTerminate:(NSNotification *)aNotification {
    // Insert code here to tear down your application
}

@end


