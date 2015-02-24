//
// GSTWorkingView.h
// Generated by Core Animator version 1.0 on 2/23/15.
//
// DO NOT MODIFY THIS FILE. IT IS AUTO-GENERATED AND WILL BE OVERWRITTEN
//

#import <UIKit/UIKit.h>

IB_DESIGNABLE
@interface GSTWorkingView : UIView

@property (strong, nonatomic) NSDictionary *viewsByName;

// workingShrink
- (void)addWorkingShrinkAnimation;
- (void)addWorkingShrinkAnimationWithCompletion:(void (^)(BOOL finished))completionBlock;
- (void)addWorkingShrinkAnimationAndRemoveOnCompletion:(BOOL)removedOnCompletion;
- (void)addWorkingShrinkAnimationAndRemoveOnCompletion:(BOOL)removedOnCompletion completion:(void (^)(BOOL finished))completionBlock;
- (void)addWorkingShrinkAnimationWithBeginTime:(CFTimeInterval)beginTime andFillMode:(NSString *)fillMode andRemoveOnCompletion:(BOOL)removedOnCompletion completion:(void (^)(BOOL finished))completionBlock;
- (void)removeWorkingShrinkAnimation;

// workingEnlarge
- (void)addWorkingEnlargeAnimation;
- (void)addWorkingEnlargeAnimationWithCompletion:(void (^)(BOOL finished))completionBlock;
- (void)addWorkingEnlargeAnimationAndRemoveOnCompletion:(BOOL)removedOnCompletion;
- (void)addWorkingEnlargeAnimationAndRemoveOnCompletion:(BOOL)removedOnCompletion completion:(void (^)(BOOL finished))completionBlock;
- (void)addWorkingEnlargeAnimationWithBeginTime:(CFTimeInterval)beginTime andFillMode:(NSString *)fillMode andRemoveOnCompletion:(BOOL)removedOnCompletion completion:(void (^)(BOOL finished))completionBlock;
- (void)removeWorkingEnlargeAnimation;

- (void)removeAllAnimations;

@end