//
//  Person.m
//  Exercise 2
//
//  Created by Sandeep Joshi on 14/09/15.
//  Copyright (c) 2015 Sandeep Joshi. All rights reserved.
//

#import "Person.h"

@interface Person ()

-(BOOL)adultStatus;

@property (nonatomic,readwrite) NSString * Name;
@property (nonatomic,readwrite) int Age;

@end

@implementation Person

-(instancetype)initWithNameandAge:(NSString *)Name Age:(int)Age{
    
    self = [super init];
    
    if(self){
        
        _Age = Age;
        
        _Name = Name;
    }
    
    return self;
}

-(BOOL)adultStatus{
    
    if( self.Age <= 18 ){
        
        return NO;
    }
    
    return YES;
}

-(void)getDetails{
    
    if([self adultStatus]== YES){
        
        NSLog(@"The person %@ is an adult as his age is %d", self.Name, self.Age);
    }
    
    else
        NSLog(@"The person %@ is a child", self.Name);
}

@end
