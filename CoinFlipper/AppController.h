//
//  AppController.h
//  CoinFlipper
//
//  Created by Geraldo Nascimento on 6/19/10.
//  Copyright 2010 Addition. All rights reserved.
//

#import <Cocoa/Cocoa.h>


@interface AppController : NSObject {
	//here's an outlet that you can link to stuff!
	IBOutlet NSTextField *headsNumField;
	IBOutlet NSTextField *tailsNumField;
	IBOutlet NSTextField *flipNumField;
	IBOutlet NSTextField *curFlipField;
	
	IBOutlet NSLevelIndicator *headsLevel;
	IBOutlet NSLevelIndicator *tailsLevel;
	
	IBOutlet NSButton *startButton;
	
	int headsNum;
	int tailsNum;
	int flipNum;
	int curNum;
	bool isFlipping;
}


//instance methods
//IBAction is linked to buttons, etc...
- (IBAction) startFlipping:(id)sender;
- (void)runFlipper;

@end
