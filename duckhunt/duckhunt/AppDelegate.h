//
//  AppDelegate.h
//  duckhunt
//
//  Created by Geraldo Nascimento on 6/9/11.
//  Copyright Geraldo Nascimento 2011. All rights reserved.
//

#import <UIKit/UIKit.h>

@class RootViewController;

@interface AppDelegate : NSObject <UIApplicationDelegate> {
	UIWindow			*window;
	RootViewController	*viewController;
}

@property (nonatomic, retain) UIWindow *window;

@end
