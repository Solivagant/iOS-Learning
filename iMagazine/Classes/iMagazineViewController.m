//
//  iMagazineViewController.m
//  iMagazine
//
//  Created by Geraldo Nascimento on 7/3/10.
//  Copyright __MyCompanyName__ 2010. All rights reserved.
//

#import "iMagazineViewController.h"
#import "iMagazineView.h"

@implementation iMagazineViewController

// Implement loadView to create a view hierarchy programmatically, without using a nib.
- (void)loadView {
	iMagazineView* v = [[iMagazineView alloc] initWithFrame:[UIScreen mainScreen].applicationFrame];
	self.view = v;
	[v release];
}

// Override to allow orientations other than the default portrait orientation.
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    // Return YES for supported orientations
    return YES;
}


- (void)didReceiveMemoryWarning {
	// Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
	
	// Release any cached data, images, etc that aren't in use.
}

- (void)viewDidUnload {
	// Release any retained subviews of the main view.
	[super viewDidUnload];
}


- (void)dealloc {
    [super dealloc];
}

@end
