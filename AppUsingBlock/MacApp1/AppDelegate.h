//
//  AppDelegate.h
//  MacApp1
//
//  Created by Sandeep Joshi on 15/09/15.
//  Copyright (c) 2015 Sandeep Joshi. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "ProcessClassDelegate.h"

@interface AppDelegate : NSObject <NSApplicationDelegate, ProcessClassDelegate>

@property (nonatomic) IBOutlet NSProgressIndicator *indicator;
@property (nonatomic) IBOutlet NSProgressIndicator *circindicator;



@end

