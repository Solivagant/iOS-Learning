//
//  iMagazineView.h
//  iMagazine
//
//  Created by Geraldo Nascimento on 7/3/10.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <QuartzCore/QuartzCore.h>

@class ImageLayer;


@interface iMagazineView : UIView {
	NSUInteger viewState;
	
	UIView *containerView;
	UIImageView *mainView;
	UIImageView *flipToView;
}

@property (nonatomic, retain) UIView *containerView;
@property (nonatomic, retain) UIImageView *mainView;
@property (nonatomic, retain) UIImageView *flipToView;


@end
