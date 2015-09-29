//
//  AppDelegate.m
//  Tablebinding
//
//  Created by Sandeep Joshi on 28/09/15.
//  Copyright (c) 2015 Sandeep Joshi. All rights reserved.
//

#import "AppDelegate.h"
#import "Person.h"
#import "PersonTableViewController.h"
#import "PersonXMLParser.h"
#import "JSONParser.h"

@interface AppDelegate ()

@property (weak) IBOutlet NSWindow *window;
@end


@implementation AppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
    
}


-(IBAction)ParsePersonXML:(id)sender{
    
    self.parsedPersonObjects = [[NSMutableArray  alloc]init];
    PersonXMLParser *parser =  [[PersonXMLParser alloc]init];
    NSLog(@"Parsing...");
    [parser parseXMLFile];
    
    self.parsedPersonObjects = [parser personArray];
    self.msgAfterParsing = @"The XML file is parsed... you can view the list";
    
        for (Person *pa in self.parsedPersonObjects){
            NSLog(@" Parser onclick --- %@, %@, %@",pa.FName, pa.LName,pa.Age);
        }
    self.XML_Flag = YES;
    }

-(IBAction)ParseJSON:(id)sender{
    
    JSONParser *Parser = [[JSONParser alloc]init];
    [Parser JSONParser];
    self.msgAfterparsingJson = @"The JSON File is parsed... You can now view the list";
    self.ParsedJSONObjects = [Parser ParsedJSONData];
    self.XML_Flag = NO;
}

-(IBAction)showlistOfPeopleinTable:(id)sender{
    self.listOfPeople = [[PersonTableViewController alloc]initWithWindowNibName:@"PersonTableView"];
    if(self.XML_Flag){
        [self.listOfPeople showlistOfPeopleinTableview:self.parsedPersonObjects];
    }
    else if (! self.XML_Flag){
        [self.listOfPeople showlistOfPeopleinTableview:self.ParsedJSONObjects];
    }
}

- (void)applicationWillTerminate:(NSNotification *)aNotification {
    // Insert code here to tear down your application
}

@end
