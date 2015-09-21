//
//  details.m
//  Exercise4
//
//  Created by Sandeep Joshi on 21/09/15.
//  Copyright (c) 2015 Sandeep Joshi. All rights reserved.
//

#import "NewWindowController.h"
#import "Person.h"

@interface NewWindowController ()



@end

@implementation NewWindowController

- (void)windowDidLoad {
    [super windowDidLoad];
    
    // Implement this method to handle any initialization after your window controller's window has been loaded from its nib file.
    
}

-(void)displaytheWindow :(Person *)newPerson{

    [self showWindow:nil];
    self.Fname.stringValue = newPerson.FName;
    self.Lname.stringValue = newPerson.LName;
    self.Age.stringValue = newPerson.Age;
}

@end
