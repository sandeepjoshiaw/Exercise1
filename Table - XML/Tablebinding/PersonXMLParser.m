//
//  Personparser.m
//  Tablebinding
//
//  Created by Sandeep Joshi on 28/09/15.
//  Copyright (c) 2015 Sandeep Joshi. All rights reserved.
//

#import "PersonXMLParser.h"
#import "Person.h"

@interface PersonXMLParser ()


@property NSString *element;


@property (nonatomic, copy) NSString *currentFName;
@property (nonatomic, copy) NSString *currentLName;
@property (nonatomic, copy) NSString *currentAge;

@end

@implementation PersonXMLParser


-(void)parseXMLFile{
    
    self.personArray = [[NSMutableArray alloc]init];
    
    NSURL *xmlPath = [[NSBundle mainBundle] URLForResource:@"Person"
                                             withExtension:@"xml"];
    
    self.parser = [[NSXMLParser alloc]initWithContentsOfURL:xmlPath];
    self.parser.delegate = self;
    BOOL success= [self.parser parse];
    NSLog(@"Parsed : %hhd", success);
    
}

- (void) parser:(NSXMLParser *)parser
didStartElement:(NSString *)elementName
   namespaceURI:(NSString *)namespaceURI
  qualifiedName:(NSString *)qName
     attributes:(NSDictionary *)attributeDict{
    
    self.element = elementName;
    
}

- (void) parser:(NSXMLParser *)parser
foundCharacters:(NSString *)string{
    
    if([self.element isEqualToString:@"fname"]){
        self.currentFName = string;
        NSLog(@"%@",string);
    }
    
    if([self.element isEqualToString:@"lname"]){
        self.currentLName = string;
        NSLog(@"%@",string);
    }
    
    if([self.element isEqualToString:@"age"]){
        self.currentAge = string;
        NSLog(@"%@",string);
    }
}

- (void)parser:(NSXMLParser *)parser
 didEndElement:(NSString *)elementName
  namespaceURI:(NSString *)namespaceURI
 qualifiedName:(NSString *)qName{
    
    if([elementName isEqualToString:@"person"]){
        
        Person *person = [[Person alloc]initDetails:self.currentFName
                                           lastName:self.currentLName
                                                Age:self.currentAge];
        [self.personArray addObject:person];
    }
         self.element = nil;
}


@end
