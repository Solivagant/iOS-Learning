//
//  RSS_ReaderAppDelegate.h
//  RSS Reader
//
//  Created by Geraldo Nascimento on 6/5/10.
//  Copyright Addition 2010. All rights reserved.
//

@interface RSS_ReaderAppDelegate : NSObject <UIApplicationDelegate> {
    
    UIWindow *window;
    UINavigationController *navigationController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet UINavigationController *navigationController;

@end

