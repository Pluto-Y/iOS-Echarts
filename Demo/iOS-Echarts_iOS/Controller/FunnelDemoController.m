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
            [self showBasicFunnelDemo2];
            break;
    }
    if (option != nil) {
        [_echartsView setOption:option];
    }
    [_echartsView loadEcharts];
}

- (void)showBasicFunnelDemo2 {
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
    series.x = @"10%";
    series.y = @60;
    series.width = @"80%";
    series.min = @0;
    series.max = @100;
    series.minSize = @"0%";
    series.maxSize = @"100%";
    series.sort = PYSortDescending;
    series.gap = @10;
    series.itemStyle = [[PYItemStyle alloc] init];
    
    PYItemStyleProp *normal = [[PYItemStyleProp alloc] init];
    normal.borderColor = [PYColor colorWithHexString:@"#fff"];
    normal.borderWidth = @1;
    normal.label = [[PYLabel alloc] init];
    normal.label.show = YES;
    normal.label.position = @"inside";
    normal.labelLine = [[PYLabelLine alloc] init];
    normal.labelLine.show = NO;
    normal.labelLine.length = @10;
    normal.labelLine.lineStyle = [[PYLineStyle alloc] init];
    normal.labelLine.lineStyle.width = @1;
    normal.labelLine.lineStyle.type = PYLineStyleTypeSolid;
    series.itemStyle.normal = normal;
    
    PYItemStyleProp *emphasis = [[PYItemStyleProp alloc] init];
    emphasis.borderColor = @"red";
    emphasis.borderWidth = @5;
    emphasis.label = [[PYLabel alloc] init];
    emphasis.label.show = YES;
    emphasis.label.formatter = @"{b}:{c}%";
    emphasis.label.textStyle = [[PYTextStyle alloc] init];
    emphasis.label.textStyle.fontSize = @20;
    emphasis.labelLine = [[PYLabelLine alloc] init];
    emphasis.labelLine.show = YES;
    series.itemStyle.emphasis = emphasis;
    
    series.data = @[@{@"value":@60, @"name":@"访问"}, @{@"value":@40, @"name":@"咨询"}, @{@"value":@20, @"name":@"订单"}, @{@"value":@80, @"name":@"点击"}, @{@"value":@100, @"name":@"展现"}];
    
    option.series = [[NSMutableArray alloc] initWithArray:@[series]];
    
    [_echartsView setOption:option];
}

@end
