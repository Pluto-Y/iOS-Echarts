//
//  VennDemoController.m
//  iOS-Echarts
//
//  Created by Pluto Y on 8/14/16.
//  Copyright © 2016 pluto-y. All rights reserved.
//

#import "VennDemoController.h"

@interface VennDemoController ()

@property (weak, nonatomic) IBOutlet PYEchartsView *yEchartView;

@end

@implementation VennDemoController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self initAll];
}

- (void)initAll {
    self.title = @"韦恩图";
    [self showVennDemo];
    [_yEchartView loadEcharts];
}

- (void)showVennDemo {
    PYOption *option = [[PYOption alloc] init];
    option.title = [[PYTitle alloc] init];
    option.title.text = @"访问 vs 咨询";
    option.title.subtext = @"各个数据的集合";
    option.tooltip = [[PYTooltip alloc] init];
    option.tooltip.show = YES;
    option.tooltip.trigger = PYTooltipTriggerItem;
    option.tooltip.formatter = @"{b}: {c}";
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
    option.calculable = NO;
    PYVennSeries *series = [[PYVennSeries alloc] init];
    series.name = @"韦恩图";
    series.type = PYSeriesTypeVenn;
    series.itemStyle = [[PYItemStyle alloc] init];
    series.itemStyle.normal = [[PYItemStyleProp alloc] init];
    series.itemStyle.normal.label = [[PYLabel alloc] init];
    series.itemStyle.normal.label.show = YES;
    series.itemStyle.normal.label.textStyle = [[PYTextStyle alloc] init];
    series.itemStyle.normal.label.textStyle.fontFamily = @"Arial, Verdana, sans-serif";
    series.itemStyle.normal.label.textStyle.fontSize = @16;
    series.itemStyle.normal.label.textStyle.fontStyle = @"italic";
    series.itemStyle.normal.label.textStyle.fontWeight = @"bolder";
    series.itemStyle.normal.labelLine = [[PYLabelLine alloc] init];
    series.itemStyle.normal.labelLine.show = NO;
    series.itemStyle.normal.labelLine.length = @10;
    series.itemStyle.normal.labelLine.lineStyle = [[PYLineStyle alloc] init];
    series.itemStyle.normal.labelLine.lineStyle.width = @1;
    series.itemStyle.normal.labelLine.lineStyle.type = PYLineStyleTypeSolid;
    series.itemStyle.emphasis = [[PYItemStyleProp alloc] init];
    series.itemStyle.emphasis.color = PYRGBA(204, 153, 204, 1);
    series.itemStyle.emphasis.borderWidth = @3;
    series.itemStyle.emphasis.borderColor = PYRGBA(153, 102, 153, 1);
    series.data = @[@{@"value":@100, @"name":@"访问"}, @{@"value":@50, @"name":@"咨询"}, @{@"value":@20, @"name":@"公共"}];
    option.series = [[NSMutableArray alloc] initWithArray:@[series]];
    [_yEchartView setOption:option];
}

@end
