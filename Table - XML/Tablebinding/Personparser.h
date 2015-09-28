//
//  Personparser.h
//  Tablebinding
//
//  Created by Sandeep Joshi on 28/09/15.
//  Copyright (c) 2015 Sandeep Joshi. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Personparser : NSObject <NSXMLParserDelegate>

@property (nonatomic) NSMutableArray *personArray;

-(id)initWithArray : (NSMutableArray *) personArray;

-(void)parseXMLFile;

-(void)displayContents;

@end
