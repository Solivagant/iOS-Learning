//
//  throwaway1AppDelegate.h
//  throwaway1
//
//  Created by Geraldo Nascimento on 5/28/11.
//  Copyright 2011 Geraldo Nascimento. All rights reserved.
//

#import <UIKit/UIKit.h>

@class throwaway1ViewController;

@interface throwaway1AppDelegate : NSObject <UIApplicationDelegate> {

}

@property (nonatomic, retain) IBOutlet UIWindow *window;

@property (nonatomic, retain) IBOutlet throwaway1ViewController *viewController;

@end
