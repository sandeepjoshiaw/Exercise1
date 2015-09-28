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

-(id)initDetails : (NSString *) Fname
        lastName : (NSString *)
       Lname Age : (NSString *) Age{
    
    self = [super init];
    if(self){
        
        self.FName = Fname;
        self.LName = Lname;
        self.Age = Age;
    }
    return self;
}
@end
