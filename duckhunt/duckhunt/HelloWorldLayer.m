//
//  HelloWorldLayer.m
//  duckhunt
//
//  Created by Geraldo Nascimento on 6/9/11.
//  Copyright Geraldo Nascimento 2011. All rights reserved.
//


// Import the interfaces
#import "HelloWorldLayer.h"
#import "CCTouchDispatcher.h"
#import "CCSpriteBatchNode.h"

// HelloWorldLayer implementation
@implementation HelloWorldLayer

@synthesize bushes, ducks;

#pragma mark - Properties

-(NSMutableSet*)bushes
{
   if(bushes == nil){
      bushes = [NSMutableSet setWithCapacity:15];
      CCSprite *bush;
      for (int i = 0; i < 15; i++) {
         bush = [CCSprite spriteWithFile: @"DHbush1.png"];
         bush.position = ccp(32*i,10);
         
         [bushes addObject:bush];
      }
   }
   return bushes;
}

-(NSMutableSet*)ducks
{
   if(ducks == nil){
      ducks = [NSMutableSet setWithCapacity:5];
      CCSprite *duck;
      for (int i = 0; i < 5; i++) {
         duck = [CCSprite spriteWithSpriteFrameName:@"toad01"];
         duck.position = CGPointMake(rand() % 320, 10);
         
         // Add the sprite as a child of the sheet, so that it knows where to get its image data.
         [sheet addChild:duck];
         
         [ducks addObject:duck];
      }
   }
   return ducks;
}

#pragma mark - Constructor

+(CCScene *) scene
{
	// 'scene' is an autorelease object.
	CCScene *scene = [CCScene node];
	
	// 'layer' is an autorelease object.
	HelloWorldLayer *layer = [HelloWorldLayer node];
	
	// add layer as a child to scene
	[scene addChild: layer];
	
	// return the scene
	return scene;
}

#pragma mark - Populate

// on "init" you need to initialize your instance
-(id) init
{
	// always call "super" init
	// Apple recommends to re-assign "self" with the "super" return value
	if( (self=[super init])) {
		//Enable Cocos2d Touch Detection
      self.isTouchEnabled = YES;
      
      leftMenu = NO;
      
		// create and initialize a Label
		label = [CCLabelTTF labelWithString:@"DUCK HUNT" fontName:@"Marker Felt" fontSize:64];
      
		// ask director the the window size
		CGSize size = [[CCDirector sharedDirector] winSize];
      
		// position the label on the center of the screen
		label.position =  ccp( size.width /2 , size.height/2 );
		
		// add the label as a child to this Layer
		[self addChild: label];
      
      //Add my CCSpriteBatchNodes and corresponding CCSpriteFrameCaches
      sheet = [CCSpriteBatchNode batchNodeWithFile:@"toads.png" capacity:50];
      
      [self addChild:sheet];
      
      [[CCSpriteFrameCache sharedSpriteFrameCache] addSpriteFramesWithFile:@"toads.plist"];
	}
	return self;
}

-(void) populate
{
   for (CCSprite * sprite in self.ducks) {
      [sprite setScale:1.2];
   }
   
   [self setupAnimations];
   
//   for (CCSprite * sprite in self.bushes) {
//      [self addChild:sprite];
//      [sprite setScale:2];
//
//   }
}

#pragma mark - Touch

//Handle touch
- (BOOL)ccTouchBegan:(UITouch *)touch withEvent:(UIEvent *)event{
   if(!leftMenu){
      
      [self removeChild:label cleanup:YES];
      [self populate];
      leftMenu = YES;
   }
   
   //Return yes to inform the handler that we want to CLAIM this touch
   return YES;
}

//COCOS2D forces me to override this method
//Looks a lot like a simple hitTest override...
-(void) registerWithTouchDispatcher
{
	[[CCTouchDispatcher sharedDispatcher] addTargetedDelegate:self priority:0 swallowsTouches:YES];
}

#pragma mark - Animation

- (void)setupAnimations
{
   NSMutableArray *animFrames = [NSMutableArray array];
   for(int i = 1; i < 4; i++) {
      //Let's get the sprite with the specified name, using the index
      CCSpriteFrame *frame = [[CCSpriteFrameCache sharedSpriteFrameCache] spriteFrameByName:[NSString stringWithFormat:@"toad%02d",i]];
      [animFrames addObject:frame];
   }
   CCAnimation *animation = [CCAnimation animationWithFrames:animFrames delay:0.2f];

   for (CCSprite* sprite in [self ducks]) {
      [sprite runAction:[CCRepeatForever actionWithAction: [CCAnimate actionWithAnimation:animation restoreOriginalFrame:NO]]];
   }
}

#pragma mark - Memory Management

// on "dealloc" you need to release all your retained objects
- (void) dealloc
{
	// in case you have something to dealloc, do it in this method
	// in this particular example nothing needs to be released.
   
	// cocos2d will automatically release all the children (Label)
	//but it wont automatically remove the sprites from a cache
   [[CCSpriteFrameCache sharedSpriteFrameCache] removeUnusedSpriteFrames];
   
	// don't forget to call "super dealloc"
	[super dealloc];
}
@end
