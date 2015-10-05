//
//  PhotoNamesTableController.h
//  Table - pics
//
//  Created by Sandeep Joshi on 30/09/15.
//  Copyright (c) 2015 Sandeep Joshi. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "ImageDisplayController.h"


@interface PhotoNamesTableController : NSWindowController

@property (nonatomic) NSArray *photoNames;
@property (nonatomic) NSString *picName;
@property (nonatomic) NSDictionary *fetchedData;
@property (nonatomic) ImageDisplayController *displayImageController;

-(void)showphotoNamesinTableview :(NSArray *)photoNames fetchedData:(NSDictionary *)Data;
-(IBAction)doubleClick:(NSIndexSet *)selectedIndex;

@end
