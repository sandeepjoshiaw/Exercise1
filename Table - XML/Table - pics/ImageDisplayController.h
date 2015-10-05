//
//  ImageDisplayController.h
//  Table - pics
//
//  Created by Sandeep Joshi on 30/09/15.
//  Copyright (c) 2015 Sandeep Joshi. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface ImageDisplayController : NSWindowController <NSURLConnectionDelegate,NSURLConnectionDataDelegate>
@property  IBOutlet NSImageView *imageview;
@property (nonatomic) NSImage *image;
@property IBOutlet NSProgressIndicator *loadingImage;
@property (nonatomic) NSString *imageTitle;


-(void)displaySelectedImage :(NSString *)clickedPhoto imageURL:(NSString *)imageURL;
@end
