//
//  ProcessClass.m
//  MacApp1
//
//  Created by Sandeep Joshi on 15/09/15.
//  Copyright (c) 2015 Sandeep Joshi. All rights reserved.
//

#import "ProcessClass.h"
#include "AppDelegate.h"
#import "ProcessClassDelegate.h"

@implementation ProcessClass



-(void)startSampleProcess:(void (^) (void))complete{
//    [self performSelectorInBackground:@selector(processinBG) withObject:nil];
    NSLog(@"Thread: %@", [NSThread currentThread]);
    
    int i = 1;
    dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^{
        NSLog(@"Thread: %@", [NSThread currentThread]);
        sleep(5);
        NSLog(@"Sleep done..: %d", i);
        
        //invoke the block here..
        dispatch_async(dispatch_get_main_queue(), ^{
            complete();
        });
    });

    //processinBG();
    NSLog(@"startSampleProcess");
}

-(void)performProcessInBG {
    sleep(5);
    NSLog(@"Sleep Over");
    
    if ([self.delegate respondsToSelector:@selector(ProcessComplete)]) {
        if(![NSThread isMainThread]){
            NSLog(@" Not Main thread");
        }
        [self.delegate performSelectorOnMainThread:@selector(ProcessComplete) withObject:nil waitUntilDone:NO];
        //[self.delegate ProcessComplete];
    }
}

void (^processinBG)(void) = ^{
    sleep(5);
    NSLog(@"inside block 1");
};



//void (^complete)(void) = ^{
//    NSLog(@"complete block");
//    //[self.circindicator stopAnimation:self.circindicator];
//};


@end
