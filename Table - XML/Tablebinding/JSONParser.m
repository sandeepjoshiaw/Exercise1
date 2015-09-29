//
//  JSONParser.m
//  Tablebinding
//
//  Created by Sandeep Joshi on 29/09/15.
//  Copyright (c) 2015 Sandeep Joshi. All rights reserved.
//

#import "JSONParser.h"
#import "Person.h"

@implementation JSONParser

-(void)JSONParser{
    
    NSURL *jsonURL = [[NSBundle mainBundle] URLForResource:@"PersonJson"
                                             withExtension:@"json"];
    NSData *JSONData = [[NSData alloc]initWithContentsOfURL:jsonURL];
    
    NSMutableArray *ParsedData = [NSJSONSerialization JSONObjectWithData:JSONData options:0 error:nil];
    
    self.ParsedJSONData = [[NSMutableArray alloc]init];
    
    for (NSDictionary *parsedElement in ParsedData){
        
        Person *person = [[Person alloc] init];
        person.FName = [parsedElement valueForKey:@"fname"]; NSLog(@"%@",person.FName);
        person.LName = [parsedElement valueForKey:@"lname"]; NSLog(@"%@",person.LName);
        person.Age= [parsedElement valueForKey:@"age"]; NSLog(@"%@",person.Age);
        [self.ParsedJSONData addObject:person];
        
        NSLog(@"%@",self.ParsedJSONData);
    }
}

@end


