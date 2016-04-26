//
//  HelloWorldLayer.h
//  duckhunt
//
//  Created by Geraldo Nascimento on 6/9/11.
//  Copyright Geraldo Nascimento 2011. All rights reserved.
//


// When you import this file, you import all the cocos2d classes
#import "cocos2d.h"

// HelloWorldLayer
@interface HelloWorldLayer : CCLayer
{
   CCLabelTTF *label;
   
   CCSpriteBatchNode *sheet;
   
   NSMutableSet *bushes;
   NSMutableSet *ducks;
   
   BOOL leftMenu;
}

@property (nonatomic, retain) NSMutableSet *bushes;
@property (nonatomic, retain) NSMutableSet *ducks;

// returns a CCScene that contains the HelloWorldLayer as the only child
+(CCScene *) scene;
-(void) populate;
-(void) setupAnimations;

@end
