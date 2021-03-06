//
//  RSS_ReaderAppDelegate.m
//  RSS Reader
//
//  Created by Geraldo Nascimento on 6/5/10.
//  Copyright Addition 2010. All rights reserved.
//

#import "RSS_ReaderAppDelegate.h"
#import "RootViewController.h"


@implementation RSS_ReaderAppDelegate

@synthesize window;
@synthesize navigationController;


#pragma mark -
#pragma mark Application lifecycle

- (void)applicationDidFinishLaunching:(UIApplication *)application {    
    
    // Override point for customization after app launch    
	
	[window addSubview:[navigationController view]];
    [window makeKeyAndVisible];
}


- (void)applicationWillTerminate:(UIApplication *)application {
	// Save data if appropriate
}


#pragma mark -
#pragma mark Memory management

- (void)dealloc {
	[navigationController release];
	[window release];
	[super dealloc];
}


@end

