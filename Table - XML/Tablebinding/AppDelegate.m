//
//  AppDelegate.m
//  Tablebinding
//
//  Created by Sandeep Joshi on 28/09/15.
//  Copyright (c) 2015 Sandeep Joshi. All rights reserved.
//

#import "AppDelegate.h"
#import "Person.h"
#import "table.h"
#import "Personparser.h"

@interface AppDelegate ()

@property (weak) IBOutlet NSWindow *window;
@end

Personparser *parser;

@implementation AppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
    // Insert code here to initialize your application
   // self.person = [[Person alloc]init];
    //self.People = [[NSMutableArray alloc]init];
    //self.table = [[table alloc]initWithWindowNibName:@"table"];
    
    
   
}


-(IBAction)AddNew:(id)sender{
    
    self.example = [[NSMutableArray alloc]init];
    Personparser *parser = [[Personparser alloc]initWithArray:self.example];
    NSLog(@"Parsing...");
    [parser parseXMLFile];
    self.example = [parser personArray];
  
    NSLog(@"%lu no of people",(unsigned long)[[parser personArray] count]);
    NSMutableArray *xmldata = [[NSMutableArray alloc]init];
    xmldata = [parser personArray];
    self.msg = @"The XML file is parsed... you can view the list.";
    
        Person *pa = [[Person alloc]init];
        for (pa in self.example){
            NSLog(@" Parser onclick --- %@, %@, %@",pa.FName, pa.LName,pa.Age);
        }
    
}

-(IBAction)showlist:(id)sender{
    self.table = [[table alloc]initWithWindowNibName:@"table"];
    [self.table showTable:self.example];
}
- (void)applicationWillTerminate:(NSNotification *)aNotification {
    // Insert code here to tear down your application
}

@end
