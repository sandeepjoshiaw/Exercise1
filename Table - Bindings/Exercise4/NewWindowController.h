//
//  NewWindowController.h
//  Exercise4
//
//  Created by Sandeep Joshi on 21/09/15.
//  Copyright (c) 2015 Sandeep Joshi. All rights reserved.
//

#import <Cocoa/Cocoa.h>

#import "Person.h"



@interface NewWindowController : NSWindowController

@property (nonatomic) Person *person;

-(void)displaytheWindow :(Person *) person;

@end

