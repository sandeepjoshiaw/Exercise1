//
//  AppDelegate.m
//  MacApp1
//
//  Created by Sandeep Joshi on 15/09/15.
//  Copyright (c) 2015 Sandeep Joshi. All rights reserved.
//

#import "AppDelegate.h"
#import "ProcessClass.h"

@interface AppDelegate ()

@property (weak) IBOutlet NSWindow *window;
@end

@implementation AppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
    // Insert code here to initialize your application
    
    [self.circindicator startAnimation:self];
    
    ProcessClass *process = [[ProcessClass alloc]init];
    
    process.delegate = self;
    
    [process startSampleProcess];
    
    
}

-(void)ProcessComplete{
    NSLog(@"Done");
    
    if([NSThread isMainThread]){
        NSLog(@"Main thread - Stopping the animation");
    }
    
    //[self.circindicator performSelectorOnMainThread:@selector(stopTheAnimation:) withObject:self waitUntilDone:YES];
    [self.circindicator stopAnimation:self];
}


- (void)applicationWillTerminate:(NSNotification *)aNotification {
    // Insert code here to tear down your application
}



@end
