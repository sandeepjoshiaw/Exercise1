//
//  ProcessClass.h
//  MacApp1
//
//  Created by Sandeep Joshi on 15/09/15.
//  Copyright (c) 2015 Sandeep Joshi. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ProcessClassDelegate.h"

@interface ProcessClass : NSObject

@property (nonatomic,assign) NSObject <ProcessClassDelegate>* delegate;

-(void)startSampleProcess;
-(void)performProcess;

@end
