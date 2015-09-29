//
//  AppDelegate.h
//  Tablebinding
//
//  Created by Sandeep Joshi on 28/09/15.
//  Copyright (c) 2015 Sandeep Joshi. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "Person.h"
#import "PersonTableViewController.h"

@interface AppDelegate : NSObject <NSApplicationDelegate>

@property (nonatomic) Person *person;
@property (nonatomic) NSMutableArray *People;
@property (nonatomic) PersonTableViewController *listOfPeople;
@property (nonatomic) NSMutableArray *parsedPersonObjects;
@property (nonatomic) NSString *msgAfterParsing;
@property (nonatomic) NSString *msgAfterparsingJson;
@property (nonatomic) NSMutableArray *ParsedJSONObjects;
@property (nonatomic) BOOL XML_Flag;


-(IBAction)ParsePersonXML  :(id)sender;
-(IBAction)ParseJSON       :(id)sender;
-(IBAction)showlistOfPeopleinTable :(id)sender;

@end

