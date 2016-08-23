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
    PYOption *option = [[PYOption alloc] init];
    option.title = [[PYTitle alloc] init];
    option.title.text = @"漏斗图";
    option.title.subtext = @"纯属虚构";
    option.tooltip = [[PYTooltip alloc] init];
    option.tooltip.trigger = PYTooltipTriggerItem;
    option.tooltip.formatter = @"{a} <br/>{b} : {c}%";
    option.toolbox = [[PYToolbox alloc] init];
    option.toolbox.show = YES;
    option.toolbox = [[PYToolbox alloc] init];
    option.toolbox.show = YES;
    option.toolbox.feature = [[PYToolboxFeature alloc] init];
    option.toolbox.feature.mark = [[PYToolboxFeatureMark alloc] init];
    option.toolbox.feature.mark.show = YES;
    option.toolbox.feature.dataView = [[PYToolboxFeatureDataView alloc] init];
    option.toolbox.feature.dataView.show = YES;
    option.toolbox.feature.dataView.readOnly = NO;
    option.toolbox.feature.restore = [[PYToolboxFeatureRestore alloc] init];
    option.toolbox.feature.restore.show = YES;
    
    option.legend = [[PYLegend alloc] init];
    option.legend.data = @[@"展现", @"点击", @"访问", @"咨询", @"订单"];
    option.calculable = YES;
    
    PYFunnelSeries *series = [[PYFunnelSeries alloc] init];
    series.name = @"漏斗图";
    series.type = PYSeriesTypeFunnel;
    series.x = @20;
    series.width = @"40%";
    series.data = @[@{@"value":@60, @"name":@"访问"}, @{@"value":@40, @"name":@"咨询"}, @{@"value":@20, @"name":@"订单"}, @{@"value":@80, @"name":@"点击"}, @{@"value":@100, @"name":@"展现"}];
    
    PYFunnelSeries *series2 = [[PYFunnelSeries alloc] init];
    series2.name = @"金字塔";
    series2.type = PYSeriesTypeFunnel;
    series2.x = @"55%";
    series2.width = @"40%";
    series2.sort = @"ascending";
    series2.itemStyle = [[PYItemStyle alloc] init];
    series2.itemStyle.normal = [[PYItemStyleProp alloc] init];
    series2.itemStyle.normal.label = [[PYLabel alloc] init];
    series2.itemStyle.normal.label.position = @"left";
    series2.data = @[@{@"value":@60, @"name":@"访问"}, @{@"value":@40, @"name":@"咨询"}, @{@"value":@20, @"name":@"订单"}, @{@"value":@80, @"name":@"点击"}, @{@"value":@100, @"name":@"展现"}];
    option.series = [[NSMutableArray alloc] initWithArray:@[series, series2]];
    
    [_echartsView setOption:option];
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
