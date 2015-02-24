//
//  LandingViewController.m
//  tempAnimations
//
//  Created by Chad Colby on 2/20/15.
//  Copyright (c) 2015 Webtab. All rights reserved.
//

#import "LandingViewController.h"
#import "UntitledView.h"
#import "UINavigationBar+BackgroundColor.h"
#import "GSTWorkingViewManager.h"

@interface LandingViewController () <GearAnimationDelegate>

@property (weak, nonatomic) IBOutlet UntitledView *gearView;

@end

@implementation LandingViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.gearView.delegate = self;
    [self.navigationController.navigationBar useBackgroundColor:[UIColor clearColor]];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];

}

#pragma mark - IBActions

- (IBAction)buttonPressed:(id)sender {
    
    [[GSTWorkingViewManager manager] startWorking];
}

- (IBAction)finishWorking:(id)sender {
        
    [[GSTWorkingViewManager manager] stopWorking];
}

#pragma mark - GearAnimation Delegate

- (void)gearWasTapped {
    
}



@end
