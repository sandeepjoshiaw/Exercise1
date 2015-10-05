//
//  AppDelegate.h
//  Table - pics
//
//  Created by Sandeep Joshi on 29/09/15.
//  Copyright (c) 2015 Sandeep Joshi. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "PhotoNamesTableController.h"


@interface AppDelegate : NSObject <NSApplicationDelegate>

-(IBAction)LoadData:(id)sender;
@property (nonatomic) PhotoNamesTableController *photoNamesController;
@property (nonatomic) NSString *picName;


@end

