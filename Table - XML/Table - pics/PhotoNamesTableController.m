//
//  PhotoNamesTableController.m
//  Table - pics
//
//  Created by Sandeep Joshi on 30/09/15.
//  Copyright (c) 2015 Sandeep Joshi. All rights reserved.
//

#import "PhotoNamesTableController.h"

@interface PhotoNamesTableController ()

@end

@implementation PhotoNamesTableController

- (void)windowDidLoad {
    [super windowDidLoad];
    
    // Implement this method to handle any initialization after your window controller's window has been loaded from its nib file.
}

-(void)showphotoNamesinTableview :(NSArray *)photoNames fetchedData:(NSDictionary *)Data{
    
    self.fetchedData = [[NSDictionary alloc]initWithDictionary:Data];
    self.photoNames = [[NSArray alloc]initWithArray:photoNames];
    [self showWindow:nil];
}

-(IBAction)doubleClick:(NSIndexSet*)selectedIndex{
    
    NSLog(@"%@",selectedIndex);
    
    NSArray *selectedphotos = [self.photoNames objectsAtIndexes:selectedIndex];
    NSString *clickedPhoto = [selectedphotos firstObject];
    NSString *imageURL = self.fetchedData[clickedPhoto];
    NSString *url = self.fetchedData[clickedPhoto];
    //NSLog(@"%@",url);
    if([url  isEqualToString:@"NO URL"]){
        NSLog(@"The URL is not present");
    }
    self.displayImageController = [[ImageDisplayController alloc]initWithWindowNibName:@"ImageDisplayController"];
    [self.displayImageController displaySelectedImage:clickedPhoto imageURL:imageURL];
}

@end
