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
}


-(IBAction)buttonClick:(id)sender{
   
    Person *newPerson = [[Person alloc]init];
    newPerson.FName = @"Peter";
    newPerson.LName = @"Williams";
    newPerson.Age = @"20";
    
    _detailWindow = [[NewWindowController alloc]initWithWindowNibName:@"NewWindowController"];
    [_detailWindow displaytheWindow:newPerson];
    
    
}


- (void)applicationWillTerminate:(NSNotification *)aNotification {
    // Insert code here to tear down your application
}

@end


