//
//  Person.m
//  
//
//  Created by Sandeep Joshi on 28/09/15.
//
//

#import "Person.h"

@implementation Person

-(NSString *)description {
    NSString *str = [NSString stringWithFormat:@"First Name: %@    LastName: %@    Age:%@", self.FName, self.LName, self.Age];
    return str;
}
@end
