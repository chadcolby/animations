//
//  GSTWorkingViewManager.m
//  tempAnimations
//
//  Created by Chad Colby on 2/23/15.
//  Copyright (c) 2015 Webtab. All rights reserved.
//

#import "GSTWorkingViewManager.h"
#import "GSTActivitiyIndicatorView.h"

@implementation GSTWorkingViewManager

static GSTWorkingViewManager *workingManager = nil;

+ (GSTWorkingViewManager *)manager {
    if (workingManager == nil) {
        workingManager = [[super allocWithZone:NULL] init];
        
    }
    
    return workingManager ;
}

+ (id)allocWithZone:(NSZone *)zone {
    
    return [self manager];
}

- (id)copyWithZone:(NSZone *)zone {
    return self;
}

- (void)startWorking {
    
    if (!self.activityView) {
        self.activityView = [[GSTActivitiyIndicatorView alloc] init];
    }
    
    [self beginAnimating];
    
}

- (void)stopWorking {
    
    UIWindow *window = [[UIApplication sharedApplication].windows objectAtIndex:0];
    NSArray *spinnerView = window.subviews;
    for (UIView *indicatorView in spinnerView) {
        if (indicatorView.tag == -303) {

            [UIView animateWithDuration:0.4f animations:^{
                indicatorView.alpha = 0.0f;
            } completion:^(BOOL finished) {
                [indicatorView removeFromSuperview];
                self.activityView = nil;
            }];

            
        }
    }
    
}

- (void)beginAnimating {
    
    __weak GSTWorkingViewManager *weakSelf = self;
    
    [weakSelf.activityView.workingView addWorkingShrinkAnimationWithCompletion:^(BOOL finished) {
        if (finished) {
            [weakSelf.activityView.workingView addWorkingEnlargeAnimationWithCompletion:^(BOOL finished) {
                if (finished) {
                    [weakSelf beginAnimating];
                    }
            }];
        }
    }];
    
}



@end
