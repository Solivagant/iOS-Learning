//
//  iMagazineAppDelegate.m
//  iMagazine
//
//  Created by Geraldo Nascimento on 7/3/10.
//  Copyright __MyCompanyName__ 2010. All rights reserved.
//

#import "iMagazineAppDelegate.h"
#import "iMagazineViewController.h"

@implementation iMagazineAppDelegate

@synthesize window;

#pragma mark -
#pragma mark Application lifecycle

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {    
    
    // Override point for customization after application launch.
	iMagazineViewController* ctrlr = [[iMagazineViewController alloc] init];
	[window addSubview:ctrlr.view];
	/*PREVIOUSLY THIS HAD 
	[ctrlr release]
	and that prematurely killed the view,
	 disallowing rotation.
	*/
	[ctrlr retain];
	[window makeKeyAndVisible];
	srandom(time(NULL));
	
    return YES;
}

- (void)dealloc {
    [window release];
    [super dealloc];
}


@end
