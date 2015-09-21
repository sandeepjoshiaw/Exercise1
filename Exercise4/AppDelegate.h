//
//  AppDelegate.h
//  Exercise4
//
//  Created by Sandeep Joshi on 16/09/15.
//  Copyright (c) 2015 Sandeep Joshi. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface AppDelegate : NSObject <NSApplicationDelegate>

-(IBAction)buttonClick:(id)sender;

@property (nonatomic) IBOutlet NSTextField *FName;
@property (nonatomic) IBOutlet NSTextField *LName;
@property (nonatomic) IBOutlet NSTextField *Age;

@property (nonatomic) IBOutlet NSTextField *text;
@property (nonatomic) NSString *first_name;
@property (nonatomic) NSString *last_name;
@property (nonatomic) NSString *agevalue;

@property (nonatomic) NSString *textvalue;


@end

