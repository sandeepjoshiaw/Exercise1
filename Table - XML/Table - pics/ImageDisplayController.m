//
//  ImageDisplayController.m
//  Table - pics
//
//  Created by Sandeep Joshi on 30/09/15.
//  Copyright (c) 2015 Sandeep Joshi. All rights reserved.
//

#import "ImageDisplayController.h"


@interface ImageDisplayController () {
    NSURLConnection *fetchConn;
}
@property (nonatomic) NSMutableData *picData;
@property (nonatomic) NSString *validURL;

@end

@implementation ImageDisplayController

- (void)windowDidLoad {

    [super windowDidLoad];
    [self.loadingImage startAnimation:self];
    

    // Implement this method to handle any initialization after your window controller's window has been loaded from its nib file.
}


-(void)displaySelectedImage :(NSString *)clickedPhoto imageURL:(NSString *)imageURL{
   
    self.validURL = imageURL;
    [self.loadingImage startAnimation:self];
    NSLog(@"Displaying Image");
    
    self.imageTitle = clickedPhoto;
    NSURL *imgURL = [[NSURL alloc]initWithString:imageURL];
    NSURLRequest *imgreq = [NSURLRequest requestWithURL:imgURL];
    fetchConn = [[NSURLConnection alloc]initWithRequest:imgreq delegate:self startImmediately:YES];
    [self showWindow:nil];
    
    
    if([imageURL isEqualToString:@"NO URL"]){
        
        self.imageTitle = @"Sorry! The image couldn't be loaded";
    }
    
}

- (void)connection:(NSURLConnection *)connection didFailWithError:(NSError *)error{
    NSLog(@"%@",[error localizedDescription]);
}


- (void)connection:(NSURLConnection *)connection didReceiveData:(NSData *)data{
   
    if(! self.picData){
        self.picData = [[NSMutableData alloc]init];
    }
    [self.picData appendData:data];
}


- (void)connectionDidFinishLoading:(NSURLConnection *)connection{
    
    NSLog(@"Finshed loading the image");
    
         [_imageview setImage:[[NSImage alloc] initWithData:self.picData]];

         [self.loadingImage stopAnimation:self];
    self.loadingImage.displayedWhenStopped = NO;
    
}


@end
