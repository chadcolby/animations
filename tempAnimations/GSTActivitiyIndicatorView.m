//
//  GSTActivitiyIndicatorView.m
//  tempAnimations
//
//  Created by Chad Colby on 2/23/15.
//  Copyright (c) 2015 Webtab. All rights reserved.
//

#import "GSTActivitiyIndicatorView.h"

@interface GSTActivitiyIndicatorView ()

@end

@implementation GSTActivitiyIndicatorView

- (id)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        [self setUp];
    }
    return self;
}

- (id)init {
    self = [super init];
    if (self) {
        [self setUp];
    }
    return self;
}

- (void)setUp {
    
    UIWindow *window = [[UIApplication sharedApplication].windows objectAtIndex:0];
    self.workingView = [[GSTWorkingView alloc] init];
    self.workingView.frame = CGRectMake((window.frame.size.width / 2) - 40, (window.frame.size.height / 2) - 40, 80, 80);
    
    self.workingView.backgroundColor = [UIColor whiteColor];
    self.workingView.clipsToBounds = YES;
    self.workingView.layer.cornerRadius = 10.0f;
    self.workingView.tag = -303;
    
    [window addSubview:self.workingView];
}

@end
