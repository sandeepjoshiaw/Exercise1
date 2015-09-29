//
//  Person.h
//  
//
//  Created by Sandeep Joshi on 28/09/15.
//
//

#import <Foundation/Foundation.h>

@interface Person : NSObject

@property (nonatomic, copy) NSString *FName;
@property (nonatomic, copy) NSString *LName;
@property (nonatomic, copy) NSString *Age;

-(id)initDetails : (NSString *) Fname
        lastName : (NSString *) Lname
             Age : (NSString *) Age;

@end
