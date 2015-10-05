//
//  AppDelegate.m
//  Table - pics
//
//  Created by Sandeep Joshi on 29/09/15.
//  Copyright (c) 2015 Sandeep Joshi. All rights reserved.
//

#import "AppDelegate.h"


@interface AppDelegate ()

@property (weak) IBOutlet NSWindow *window;
@end

@implementation AppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
    // Insert code here to initialize your application
}

-(IBAction)LoadData:(id)sender{
    
    // URL to fetch the Plist
    NSURL *urltoFetchPlist = [NSURL URLWithString:@"https://sites.google.com/site/soheilsstudio/tutorials/nsoperationsampleproject/ClassicPhotosDictionary.plist"];
    
    NSURLRequest *reqToFetchPlist = [NSURLRequest requestWithURL:urltoFetchPlist];
    NSError *error = nil;
    
    //Fetching the Plist
    NSData *fetchedPlist = [NSURLConnection sendSynchronousRequest:reqToFetchPlist
                                                 returningResponse:NULL
                                                             error:&error];
    
    //Writing the fetchedPlist (NSData) to a file
    BOOL plistWrite  = [fetchedPlist writeToFile:@"/Users/sandeepj/Desktop/Table - pics/Table - pics/Data.plist"
                                         options:NSDataWritingAtomic
                                           error:&error];
    
    if (!plistWrite) {
        NSLog(@"write failed: %@", [error localizedDescription]);
    }
    NSLog(@"Success writing the fetched plist to /Users/sandeepj/Desktop/Table - pics/Table - pics/Data.plist ");

    NSDictionary *fetchedDict = [[NSDictionary alloc]initWithContentsOfFile:@"/Users/sandeepj/Desktop/Table - pics/Table - pics/Data.plist"];
    
    NSArray *keys = [fetchedDict allKeys];
    NSLog(@"%@",keys);
    
    self.photoNamesController = [[PhotoNamesTableController alloc]initWithWindowNibName:@"PhotoNamesTableController"];
    [self.photoNamesController showphotoNamesinTableview:keys fetchedData:fetchedDict ];

}

- (void)applicationWillTerminate:(NSNotification *)aNotification {
    // Insert code here to tear down your application
}

@end


//    NSURL *pic = [NSURL URLWithString:[data valueForKey:@"Big Fella"]];
//    NSURLRequest *req = [NSURLRequest requestWithURL:pic];
//    NSData *picdata = [NSURLConnection sendSynchronousRequest:req returningResponse:NULL error:&error];
//    BOOL picDidWrite = [picdata writeToFile:@"/Users/sandeepj/Desktop/Table - pics/Table - pics/BigFella.jpg" options:NSDataWritingAtomic error:&error];
