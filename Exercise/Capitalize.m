//
//  Capitalize.m
//  Exercise
//
//  Created by Sandeep Joshi on 14/09/15.
//  Copyright (c) 2015 Sandeep Joshi. All rights reserved.
//

#import "Capitalize.h"

@implementation Capitalize

-(NSString *)capitalize:(NSString *)string{
    
    NSArray *seperate = [string componentsSeparatedByString:@" "]; //seperate the sentence word by word using space.
    
    NSMutableString *capitalized = [[NSMutableString alloc]init]; // To hold and constantly append capitalized words.
    
    NSString *cap = [[NSString alloc]init]; // To hold the words.
    
    int i=0;
    
    while (i < [seperate count]) {
  
        cap = seperate[i];                   // Store the word present in the array.
        cap = [cap capitalizedString];       // Capitalize the word.
        [capitalized appendString:@" "];     // Append space after each word.
        [capitalized appendString:cap];      // Append capitalized word.
        i++;                                 // goto next word.ß
}
    return capitalized;
}

@end
