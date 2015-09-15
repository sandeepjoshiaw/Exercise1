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

-(void)startSampleProcess{
    [self performSelectorInBackground:@selector(performProcessInBG) withObject:nil];
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


@end
