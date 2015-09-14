//
//  NSString+CapitalizeText.m
//  Exercise
//
//  Created by Sandeep Joshi on 14/09/15.
//  Copyright (c) 2015 Sandeep Joshi. All rights reserved.
//

#import "NSString+CapitalizeText.h"


@implementation NSString (CapitalizeText)

-(NSString *)capitalizeText{
    
    NSUInteger index = 0;
    NSMutableString *capitalizedText = [[NSMutableString alloc]init];
    unichar ch;
    
    
    while(index <[self length]){
        
        ch = [self characterAtIndex:index];
        if(index == 0){
            ch = [[[NSString stringWithCharacters:&ch length:1]uppercaseString]characterAtIndex:0]; // Capitalizing
        }                                                                       //the first character of the sentence.
        
        [capitalizedText appendString:[NSString stringWithCharacters:&ch length:1]]; // Appending the character
        
        if([self characterAtIndex:index] == ' '){  // when space is encountered, capitalizing the next character,
                                                   // then append to the mutable string.
            ch = [self characterAtIndex:index+1];
            ch = [[[NSString stringWithCharacters:&ch length:1]uppercaseString]characterAtIndex:0];
            [capitalizedText appendString:[NSString stringWithCharacters:&ch length:1]];
            index = index+2; //current char is space, as next char is capitalized and appended, skip the next char.
        }
        else
        index++; //goto next char when space is not encountered.
    }
    
    return capitalizedText; 
}

@end