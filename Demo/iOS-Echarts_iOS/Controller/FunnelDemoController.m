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
    [_echartsView setOption:[PYFunnelDemoOptions basicFunnel1Option]];
    [_echartsView loadEcharts];
}

- (IBAction)demoBtnClick:(id)sender {
    UIButton *btn = (UIButton *)sender;
    PYOption *option;
    switch (btn.tag) {
        case FunnelDemoTypeTagBasicFunnel1:
            option = [PYFunnelDemoOptions basicFunnel1Option];
            break;
        case FunnelDemoTypeTagMultipleFunnel1:
            option = [PYFunnelDemoOptions multipleFunnel1Option];
            break;
        case FunnelDemoTypeTagMultipleFunnel2:
            option = [PYFunnelDemoOptions multipleFunnel2Option];
            break;
        case FunnelDemoTypeTagMultipleFunnel3:
            option = [PYFunnelDemoOptions multipleFunnel3Option];
            break;
        case FunnelDemoTypeTagBasicFunnel2:
            option = [PYFunnelDemoOptions basicFunnel2Option];
            break;
    }
    if (option != nil) {
        [_echartsView setOption:option];
    }
    [_echartsView loadEcharts];
}

@end
