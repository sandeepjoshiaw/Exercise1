//
//  AppDelegate.m
//  Exercise4
//
//  Created by Sandeep Joshi on 16/09/15.
//  Copyright (c) 2015 Sandeep Joshi. All rights reserved.
//

#import "AppDelegate.h"
#import "Person.h"

@interface AppDelegate ()

@property (weak) IBOutlet NSWindow *window;
@property (weak) IBOutlet NSWindow *window1;

@end

@implementation AppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
    // Insert code here to initialize your application
}


-(IBAction)buttonClick:(id)sender{
    NSLog(@"Opening window");
    NSWindowController *myWindow = [[NSWindowController alloc]initWithWindow:_window1];
    
 // ----------------------- Using Person Object-----------------------------------//
   // Person *new = [[Person alloc]init];
   // new.FName = @"Peter";
   // new.LName = @"Williams";
  //  new.Age = @"20";
    
   // [_FName setStringValue:new.FName];
   // [_LName setStringValue:new.LName];
  //  [_Age setStringValue:new.Age];
// ----------------------- Using Person Object-----------------------------------//
    
// ----------------------- Using Bindings with NSStrings -----------------------------//
    //self.first_name = @"Sandeep";
    self.textvalue = _text.stringValue;
    self.first_name = _text.stringValue;
    self.last_name = @"Joshi";
    self.agevalue = @"21";
// ----------------------- Using Bindings with NSStrings -----------------------------//

    [myWindow showWindow:_window1];
   // [[myWindow window] makeMainWindow];
//
//    [self.window1 becomeMainWindow];
//
    NSLog(@"Closing window");
    
}


- (void)applicationWillTerminate:(NSNotification *)aNotification {
    // Insert code here to tear down your application
}

@end


