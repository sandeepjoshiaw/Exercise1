//
//  AppDelegate.h
//  Exercise4
//
//  Created by Sandeep Joshi on 16/09/15.
//  Copyright (c) 2015 Sandeep Joshi. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "NewWindowController.h"

@interface AppDelegate : NSObject <NSApplicationDelegate>

-(IBAction)buttonClick:(id)sender;

@property (nonatomic) NewWindowController* detailWindow;


@end

