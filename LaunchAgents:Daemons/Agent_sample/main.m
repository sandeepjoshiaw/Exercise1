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

        NSString *str = @" Welcome to Airwatch by VMWare!  ";
        
        [str writeToFile:@"/Users/sandeepj/Exercise1/Agents/sample.txt" atomically:YES encoding:NSUTF8StringEncoding error:nil];
        sleep(15);
//        [[NSRunLoop mainRunLoop] run];
    }
    return 0;
}
