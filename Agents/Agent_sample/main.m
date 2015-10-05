//
//  main.m
//  Agent_sample
//
//  Created by Sandeep Joshi on 05/10/15.
//  Copyright (c) 2015 Sandeep Joshi. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {

        NSString *str = @"This is a command line tool for launch agent example!";
        [str writeToFile:@"/Users/sandeepj/Desktop/Agent_sample/sample.txt" atomically:YES encoding:NSUTF8StringEncoding error:nil];
        
    }
    return 0;
}
