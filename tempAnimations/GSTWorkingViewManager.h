//
//  GSTWorkingViewManager.h
//  tempAnimations
//
//  Created by Chad Colby on 2/23/15.
//  Copyright (c) 2015 Webtab. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "GSTActivitiyIndicatorView.h"


@interface GSTWorkingViewManager : NSObject

@property (strong, nonatomic) GSTActivitiyIndicatorView *activityView;

+ (GSTWorkingViewManager *)manager;

- (void)startWorking;
- (void)stopWorking;

//- (void)beginAnimating;


@end
