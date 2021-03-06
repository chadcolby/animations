//
// GSTWorkingView.m
// Generated by Core Animator version 1.0 on 2/23/15.
//
// DO NOT MODIFY THIS FILE. IT IS AUTO-GENERATED AND WILL BE OVERWRITTEN
//

#import "GSTWorkingView.h"

@interface GSTWorkingView ()
@property (strong, nonatomic) NSMapTable *completionBlocksByAnimation;
@end

@implementation GSTWorkingView

#pragma mark - Life Cycle

- (instancetype)init
{
	return [self initWithFrame:CGRectMake(0,0,200,200)];
}

- (instancetype)initWithFrame:(CGRect)frame
{
	self = [super initWithFrame:frame];
	if (self)
	{
		[self setupHierarchy];
	}
	return self;
}

- (instancetype)initWithCoder:(NSCoder *)coder
{
	self = [super initWithCoder:coder];
	if (self)
	{
		[self setupHierarchy];
	}
	return self;
}

#pragma mark - Scaling

- (void)layoutSubviews
{
	[super layoutSubviews];

	UIView *scalingView = self.viewsByName[@"__scaling__"];
	float xScale = self.bounds.size.width / scalingView.bounds.size.width;
	float yScale = self.bounds.size.height / scalingView.bounds.size.height;
	switch (self.contentMode) {
		case UIViewContentModeScaleToFill:
			break;
		case UIViewContentModeScaleAspectFill:
		{
			float scale = MAX(xScale, yScale);
			xScale = scale;
			yScale = scale;
			break;
		}
		default:
		{
			float scale = MIN(xScale, yScale);
			xScale = scale;
			yScale = scale;
			break;
		}
	}
	scalingView.transform = CGAffineTransformMakeScale(xScale, yScale);
	scalingView.center = CGPointMake(CGRectGetMidX(self.bounds), CGRectGetMidY(self.bounds));
}

#pragma mark - Setup

- (void)setupHierarchy
{
	self.completionBlocksByAnimation = [NSMapTable mapTableWithKeyOptions:NSPointerFunctionsOpaqueMemory valueOptions:NSPointerFunctionsStrongMemory];
	NSMutableDictionary *viewsByName = [NSMutableDictionary dictionary];
	NSBundle *bundle = [NSBundle bundleForClass:[self class]];

	UIView *__scaling__ = [UIView new];
	__scaling__.bounds = CGRectMake(0, 0, 200, 200);
	__scaling__.center = CGPointMake(100.0, 100.0);
	__scaling__.layer.masksToBounds = YES;
	[self addSubview:__scaling__];
	viewsByName[@"__scaling__"] = __scaling__;

	UIImageView *logo = [UIImageView new];
	logo.bounds = CGRectMake(0, 0, 200.0, 200.0);
	UIImage *imgLogo = [UIImage imageWithContentsOfFile:[bundle pathForResource:@"logo.png" ofType:nil]];
	logo.image = imgLogo;
	logo.contentMode = UIViewContentModeCenter;
	logo.layer.position = CGPointMake(124.887, 100.000);
	[__scaling__ addSubview:logo];
	viewsByName[@"logo"] = logo;

	self.viewsByName = viewsByName;
}

#pragma mark - workingShrink

- (void)addWorkingShrinkAnimation
{
	[self addWorkingShrinkAnimationWithBeginTime:0 andFillMode:kCAFillModeBoth andRemoveOnCompletion:NO completion:NULL];
}

- (void)addWorkingShrinkAnimationWithCompletion:(void (^)(BOOL finished))completionBlock
{
	[self addWorkingShrinkAnimationWithBeginTime:0 andFillMode:kCAFillModeBoth andRemoveOnCompletion:NO completion:completionBlock];
}

- (void)addWorkingShrinkAnimationAndRemoveOnCompletion:(BOOL)removedOnCompletion
{
	[self addWorkingShrinkAnimationWithBeginTime:0 andFillMode:removedOnCompletion ? kCAFillModeRemoved : kCAFillModeBoth andRemoveOnCompletion:removedOnCompletion completion:NULL];
}

- (void)addWorkingShrinkAnimationAndRemoveOnCompletion:(BOOL)removedOnCompletion completion:(void (^)(BOOL finished))completionBlock
{
	[self addWorkingShrinkAnimationWithBeginTime:0 andFillMode:removedOnCompletion ? kCAFillModeRemoved : kCAFillModeBoth andRemoveOnCompletion:removedOnCompletion completion:completionBlock];
}

- (void)addWorkingShrinkAnimationWithBeginTime:(CFTimeInterval)beginTime andFillMode:(NSString *)fillMode andRemoveOnCompletion:(BOOL)removedOnCompletion completion:(void (^)(BOOL finished))completionBlock
{
	CAMediaTimingFunction *easeOutTiming = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseOut];
	CAMediaTimingFunction *linearTiming = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionLinear];
	CAMediaTimingFunction *overshootTiming = [CAMediaTimingFunction functionWithControlPoints:0.00 :0.00 :0.58 :1.30];

	if (completionBlock)
	{
		CABasicAnimation *representativeAnimation = [CABasicAnimation animationWithKeyPath:@"not.a.real.key"];
		representativeAnimation.duration = 0.400;
		representativeAnimation.delegate = self;
		[self.layer addAnimation:representativeAnimation forKey:@"WorkingShrink"];
		[self.completionBlocksByAnimation setObject:completionBlock forKey:[self.layer animationForKey:@"WorkingShrink"]];
	}

	CAKeyframeAnimation *logoOpacityAnimation = [CAKeyframeAnimation animationWithKeyPath:@"opacity"];
	logoOpacityAnimation.duration = 0.400;
	logoOpacityAnimation.values = @[@(1.000), @(0.300)];
	logoOpacityAnimation.keyTimes = @[@(0.000), @(1.000)];
	logoOpacityAnimation.timingFunctions = @[overshootTiming];
	logoOpacityAnimation.beginTime = beginTime;
	logoOpacityAnimation.fillMode = fillMode;
	logoOpacityAnimation.removedOnCompletion = removedOnCompletion;
	[[self.viewsByName[@"logo"] layer] addAnimation:logoOpacityAnimation forKey:@"workingShrink_Opacity"];

	CAKeyframeAnimation *logoScaleXAnimation = [CAKeyframeAnimation animationWithKeyPath:@"transform.scale.x"];
	logoScaleXAnimation.duration = 0.400;
	logoScaleXAnimation.values = @[@(1.000), @(0.500)];
	logoScaleXAnimation.keyTimes = @[@(0.000), @(1.000)];
	logoScaleXAnimation.timingFunctions = @[easeOutTiming];
	logoScaleXAnimation.beginTime = beginTime;
	logoScaleXAnimation.fillMode = fillMode;
	logoScaleXAnimation.removedOnCompletion = removedOnCompletion;
	[[self.viewsByName[@"logo"] layer] addAnimation:logoScaleXAnimation forKey:@"workingShrink_ScaleX"];

	CAKeyframeAnimation *logoScaleYAnimation = [CAKeyframeAnimation animationWithKeyPath:@"transform.scale.y"];
	logoScaleYAnimation.duration = 0.400;
	logoScaleYAnimation.values = @[@(1.000), @(0.500)];
	logoScaleYAnimation.keyTimes = @[@(0.000), @(1.000)];
	logoScaleYAnimation.timingFunctions = @[easeOutTiming];
	logoScaleYAnimation.beginTime = beginTime;
	logoScaleYAnimation.fillMode = fillMode;
	logoScaleYAnimation.removedOnCompletion = removedOnCompletion;
	[[self.viewsByName[@"logo"] layer] addAnimation:logoScaleYAnimation forKey:@"workingShrink_ScaleY"];

	CAKeyframeAnimation *logoTranslationXAnimation = [CAKeyframeAnimation animationWithKeyPath:@"transform.translation.x"];
	logoTranslationXAnimation.duration = 0.400;
	logoTranslationXAnimation.values = @[@(0.000), @(-12.000)];
	logoTranslationXAnimation.keyTimes = @[@(0.000), @(1.000)];
	logoTranslationXAnimation.timingFunctions = @[linearTiming];
	logoTranslationXAnimation.beginTime = beginTime;
	logoTranslationXAnimation.fillMode = fillMode;
	logoTranslationXAnimation.removedOnCompletion = removedOnCompletion;
	[[self.viewsByName[@"logo"] layer] addAnimation:logoTranslationXAnimation forKey:@"workingShrink_TranslationX"];
}

- (void)removeWorkingShrinkAnimation
{
	[self.layer removeAnimationForKey:@"WorkingShrink"];
	[[self.viewsByName[@"logo"] layer] removeAnimationForKey:@"workingShrink_Opacity"];
	[[self.viewsByName[@"logo"] layer] removeAnimationForKey:@"workingShrink_ScaleX"];
	[[self.viewsByName[@"logo"] layer] removeAnimationForKey:@"workingShrink_ScaleY"];
	[[self.viewsByName[@"logo"] layer] removeAnimationForKey:@"workingShrink_TranslationX"];
}

#pragma mark - workingEnlarge

- (void)addWorkingEnlargeAnimation
{
	[self addWorkingEnlargeAnimationWithBeginTime:0 andFillMode:kCAFillModeBoth andRemoveOnCompletion:NO completion:NULL];
}

- (void)addWorkingEnlargeAnimationWithCompletion:(void (^)(BOOL finished))completionBlock
{
	[self addWorkingEnlargeAnimationWithBeginTime:0 andFillMode:kCAFillModeBoth andRemoveOnCompletion:NO completion:completionBlock];
}

- (void)addWorkingEnlargeAnimationAndRemoveOnCompletion:(BOOL)removedOnCompletion
{
	[self addWorkingEnlargeAnimationWithBeginTime:0 andFillMode:removedOnCompletion ? kCAFillModeRemoved : kCAFillModeBoth andRemoveOnCompletion:removedOnCompletion completion:NULL];
}

- (void)addWorkingEnlargeAnimationAndRemoveOnCompletion:(BOOL)removedOnCompletion completion:(void (^)(BOOL finished))completionBlock
{
	[self addWorkingEnlargeAnimationWithBeginTime:0 andFillMode:removedOnCompletion ? kCAFillModeRemoved : kCAFillModeBoth andRemoveOnCompletion:removedOnCompletion completion:completionBlock];
}

- (void)addWorkingEnlargeAnimationWithBeginTime:(CFTimeInterval)beginTime andFillMode:(NSString *)fillMode andRemoveOnCompletion:(BOOL)removedOnCompletion completion:(void (^)(BOOL finished))completionBlock
{
	CAMediaTimingFunction *linearTiming = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionLinear];
	CAMediaTimingFunction *easeInTiming = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseIn];

	if (completionBlock)
	{
		CABasicAnimation *representativeAnimation = [CABasicAnimation animationWithKeyPath:@"not.a.real.key"];
		representativeAnimation.duration = 0.400;
		representativeAnimation.delegate = self;
		[self.layer addAnimation:representativeAnimation forKey:@"WorkingEnlarge"];
		[self.completionBlocksByAnimation setObject:completionBlock forKey:[self.layer animationForKey:@"WorkingEnlarge"]];
	}

	CAKeyframeAnimation *logoOpacityAnimation = [CAKeyframeAnimation animationWithKeyPath:@"opacity"];
	logoOpacityAnimation.duration = 0.400;
	logoOpacityAnimation.values = @[@(0.300), @(1.000)];
	logoOpacityAnimation.keyTimes = @[@(0.000), @(1.000)];
	logoOpacityAnimation.timingFunctions = @[easeInTiming];
	logoOpacityAnimation.beginTime = beginTime;
	logoOpacityAnimation.fillMode = fillMode;
	logoOpacityAnimation.removedOnCompletion = removedOnCompletion;
	[[self.viewsByName[@"logo"] layer] addAnimation:logoOpacityAnimation forKey:@"workingEnlarge_Opacity"];

	CAKeyframeAnimation *logoScaleXAnimation = [CAKeyframeAnimation animationWithKeyPath:@"transform.scale.x"];
	logoScaleXAnimation.duration = 0.400;
	logoScaleXAnimation.values = @[@(0.500), @(1.000)];
	logoScaleXAnimation.keyTimes = @[@(0.000), @(1.000)];
	logoScaleXAnimation.timingFunctions = @[linearTiming];
	logoScaleXAnimation.beginTime = beginTime;
	logoScaleXAnimation.fillMode = fillMode;
	logoScaleXAnimation.removedOnCompletion = removedOnCompletion;
	[[self.viewsByName[@"logo"] layer] addAnimation:logoScaleXAnimation forKey:@"workingEnlarge_ScaleX"];

	CAKeyframeAnimation *logoScaleYAnimation = [CAKeyframeAnimation animationWithKeyPath:@"transform.scale.y"];
	logoScaleYAnimation.duration = 0.400;
	logoScaleYAnimation.values = @[@(0.500), @(1.000)];
	logoScaleYAnimation.keyTimes = @[@(0.000), @(1.000)];
	logoScaleYAnimation.timingFunctions = @[linearTiming];
	logoScaleYAnimation.beginTime = beginTime;
	logoScaleYAnimation.fillMode = fillMode;
	logoScaleYAnimation.removedOnCompletion = removedOnCompletion;
	[[self.viewsByName[@"logo"] layer] addAnimation:logoScaleYAnimation forKey:@"workingEnlarge_ScaleY"];

	CAKeyframeAnimation *logoTranslationXAnimation = [CAKeyframeAnimation animationWithKeyPath:@"transform.translation.x"];
	logoTranslationXAnimation.duration = 0.400;
	logoTranslationXAnimation.values = @[@(-12.000), @(-1.000)];
	logoTranslationXAnimation.keyTimes = @[@(0.000), @(1.000)];
	logoTranslationXAnimation.timingFunctions = @[linearTiming];
	logoTranslationXAnimation.beginTime = beginTime;
	logoTranslationXAnimation.fillMode = fillMode;
	logoTranslationXAnimation.removedOnCompletion = removedOnCompletion;
	[[self.viewsByName[@"logo"] layer] addAnimation:logoTranslationXAnimation forKey:@"workingEnlarge_TranslationX"];
}

- (void)removeWorkingEnlargeAnimation
{
	[self.layer removeAnimationForKey:@"WorkingEnlarge"];
	[[self.viewsByName[@"logo"] layer] removeAnimationForKey:@"workingEnlarge_Opacity"];
	[[self.viewsByName[@"logo"] layer] removeAnimationForKey:@"workingEnlarge_ScaleX"];
	[[self.viewsByName[@"logo"] layer] removeAnimationForKey:@"workingEnlarge_ScaleY"];
	[[self.viewsByName[@"logo"] layer] removeAnimationForKey:@"workingEnlarge_TranslationX"];
}

- (void)animationDidStop:(CAAnimation *)anim finished:(BOOL)flag
{
	void (^completion)(BOOL) = [self.completionBlocksByAnimation objectForKey:anim];
	[self.completionBlocksByAnimation removeObjectForKey:anim];
	if (completion)
	{
		completion(flag);
	}
}

- (void)removeAllAnimations
{
	for (UIView *view in self.viewsByName.allValues)
	{
		[view.layer removeAllAnimations];
	}
	[self.layer removeAnimationForKey:@"WorkingShrink"];
	[self.layer removeAnimationForKey:@"WorkingEnlarge"];
}

@end