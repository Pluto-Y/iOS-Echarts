//
//  FunnelDemoController.m
//  iOS-Echarts
//
//  Created by Pluto Y on 8/22/16.
//  Copyright © 2016 pluto-y. All rights reserved.
//

#import "FunnelDemoController.h"

typedef NS_ENUM(NSInteger, FunnelDemoTypeTag) {
    FunnelDemoTypeTagBasicFunnel1       = 20001,
    FunnelDemoTypeTagMultipleFunnel1    = 20002,
    FunnelDemoTypeTagMultipleFunnel2    = 20003,
    FunnelDemoTypeTagMultipleFunnel3    = 20004,
    FunnelDemoTypeTagBasicFunnel2       = 20005
};

@interface FunnelDemoController ()

@property (weak, nonatomic) IBOutlet PYEchartsView *echartsView;

@end

@implementation FunnelDemoController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self initAll];
}

- (void)initAll {
    self.title = @"漏斗图";
    [self showBasicFunnelDemo1];
    [_echartsView loadEcharts];
}

- (IBAction)demoBtnClick:(id)sender {
    UIButton *btn = (UIButton *)sender;
    switch (btn.tag) {
        case FunnelDemoTypeTagBasicFunnel1:
            [self showBasicFunnelDemo1];
            break;
        case FunnelDemoTypeTagMultipleFunnel1:
            [self showMultipleFunnelDemo1];
            break;
        case FunnelDemoTypeTagMultipleFunnel2:
            [self showMultipleFunnelDemo2];
            break;
        case FunnelDemoTypeTagMultipleFunnel3:
            [self showMultipleFunnelDemo3];
            break;
        case FunnelDemoTypeTagBasicFunnel2:
            [self showBasicFunnelDemo2];
            break;
    }
    [_echartsView loadEcharts];
}

- (void)showBasicFunnelDemo1 {
    
}

- (void)showMultipleFunnelDemo1 {
    
}

- (void)showMultipleFunnelDemo2 {
    
}

- (void)showMultipleFunnelDemo3 {
    
}

- (void)showBasicFunnelDemo2 {
    
}

@end
