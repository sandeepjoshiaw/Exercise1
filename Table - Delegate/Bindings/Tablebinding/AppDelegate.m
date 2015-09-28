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

@interface AppDelegate ()

@property (weak) IBOutlet NSWindow *window;
@end

@implementation AppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
    // Insert code here to initialize your application
    self.person = [[Person alloc]init];
    self.People = [[NSMutableArray alloc]init];
    //self.table = [[table alloc]initWithWindowNibName:@"table"];
}

-(IBAction)AddNew:(id)sender{
    Person *p = [[Person alloc]init];
    NSLog(@"Person: %@", self.person);
    p.FName = self.person.FName;
    p.LName = self.person.LName;
    p.Age = self.person.Age;
    [self.People addObject:p];
    
    NSLog(@"People: %@", self.People);
    
    int i;
    //Person *p = [[Person alloc]init];
    for (i=0; i < [self.People count];i++){
        Person *p = [self.People objectAtIndex:i];
        NSLog(@"%@  %@   %@",p.FName, p.LName, p.Age);
    }
}

-(IBAction)showlist:(id)sender{
    self.table = [[table alloc]initWithWindowNibName:@"table"];
    [self.table showTable:self.People];
}
- (void)applicationWillTerminate:(NSNotification *)aNotification {
    // Insert code here to tear down your application
}

@end
