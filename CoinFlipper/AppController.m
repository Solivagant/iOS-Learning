//
//  AppController.m
//  CoinFlipper
//
//  Created by Geraldo Nascimento on 6/19/10.
//  Copyright 2010 Addition. All rights reserved.
//

#import "AppController.h"


@implementation AppController

- (void)awakeFromNib{
	isFlipping = FALSE;
}

- (IBAction) startFlipping:(id)sender{
	if(isFlipping == FALSE){
		//obj-c method run!
		[startButton setTitle:@"Stop"];
		isFlipping = TRUE;
		//running it in a thread
		[NSThread detachNewThreadSelector:@selector(runFlipper)	toTarget:self withObject:nil];
	}
	else {
		[startButton setTitle:@"Start"];
		isFlipping = false;
	}

}

- (void)runFlipper{
	//start memory pool
	NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
	//if methods dont have brackets around them they're a C function
	srandom(time(NULL));
	int side;
	headsNum = 0;
	tailsNum = 0;
	curNum = 0;
	flipNum = [flipNumField intValue];
	
	while((isFlipping == TRUE) && (curNum < flipNum)) {
		side = random() % 2;
		if(side == 0)
			headsNum++;
		else
			tailsNum++;
		[tailsNumField setIntValue:tailsNum];
		[headsNumField setIntValue:headsNum];
		[headsLevel setMaxValue:curNum];
		[headsLevel setIntValue:headsNum];
		[tailsLevel setMaxValue:curNum];
		[tailsLevel setIntValue:tailsNum];
		curNum++;
		[curFlipField setIntValue:curNum];
		
	}
	[startButton setTitle:@"Start"];
	isFlipping = FALSE;
	//drain pool
	[pool drain];
}
@end
