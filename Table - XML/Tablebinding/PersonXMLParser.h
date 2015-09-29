//
//  Personparser.h
//  Tablebinding
//
//  Created by Sandeep Joshi on 28/09/15.
//  Copyright (c) 2015 Sandeep Joshi. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface PersonXMLParser : NSObject <NSXMLParserDelegate>

@property (nonatomic) NSMutableArray *personArray;
@property (nonatomic) NSXMLParser    *parser;

-(void)parseXMLFile;

@end
