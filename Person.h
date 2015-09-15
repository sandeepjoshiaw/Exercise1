//
//  Person.h
//  Exercise 2
//
//  Created by Sandeep Joshi on 14/09/15.
//  Copyright (c) 2015 Sandeep Joshi. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject

@property (nonatomic,readonly) NSString * Name;
@property (nonatomic,readonly) int Age;

-(instancetype)initWithNameandAge :(NSString *)Name Age:(int ) Age;
-(void)getDetails;

@end
