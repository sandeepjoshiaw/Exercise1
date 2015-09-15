//
//  main.m
//  Exercise
//
//  Created by Sandeep Joshi on 14/09/15.
//  Copyright (c) 2015 Sandeep Joshi. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Capitalize.h"
#import "NSString+CapitalizeText.h"
#import "Person.h"
#import "Adult.h"

int main(int argc, const char * argv[]) {
    
    @autoreleasepool {
        
        NSString *text = @"welcome to airwatch technologies at bangalore"; //The text to be capitalized
       
        NSLog(@"Original text -- %@", text);
        
        Capitalize *Sample = [[Capitalize alloc]init];  // An object of class Capitalize
        
        Sample.string = text;  // Assigning the text to string property
        
        NSString *capitalized_class = [Sample capitalize]; //Using the method of Capitalize class
        
        NSLog(@"Capitalized using Capitalize class method -- %@",capitalized_class);
        
        NSString *capitalized_category = [text capitalizeText]; //Using method of category Capitalize
        
        NSLog(@"Capitalized using Capitalize category -- %@",capitalized_category);
        
        Person *John = [[Person alloc]initWithNameandAge:@"David Connor" Age:25]; // Allocation with
        // custom init method.
        [John getDetails];
        
        
        
        // NSLog(@"The age of %@ is %d",John.Name,John.Age); -->won't work as private method is accessed from
        // outside a method.
        
        Adult *Adam = [[Adult alloc]initWithNameandAge:@"Peter" Age:30]; // Object of subclass using parent
        [Adam getDetails];                                               // init method as well as
        // getDetails method.
        
        

        
        }
    return 0;
}

