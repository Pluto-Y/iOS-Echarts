//
//  LineDemoControllerViewController.m
//  iOS-Echarts
//
//  Created by ChipSea on 15/9/17.
//  Copyright (c) 2015年 pluto-y. All rights reserved.
//

#import "LineDemoController.h"

@interface LineDemoController ()

@end

@implementation LineDemoController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self initAll];
}

-(void)initAll {
    PYOption *option = [[PYOption alloc] init];
    PYTitle *title = [[PYTitle alloc] init];
    title.text = @"未来一周气温变化";
    title.subtext = @"纯属虚构";
    option.title = title;
    PYTooltip *tooltip = [[PYTooltip alloc] init];
    [tooltip setPYTooltipTrigger:PYTooltipTriggerAxis];
    option.tooltip = tooltip;
    PYLegend *legend = [[PYLegend alloc] init];
    legend.data = @[@"最高温度",@"最低温度"];
    option.legend = legend;
    PYToolbox *toolbox = [[PYToolbox alloc] init];
    toolbox.show = YES;
    //缺少Feature
    option.toolbox = toolbox;
    option.calculable = YES;
    PYAxis *xAxis = [[PYAxis  alloc] init];
    [xAxis setAxisType:PYAxisTypeCategory];
    xAxis.boundaryGap = @(NO);
    xAxis.data = @[@"周一",@"周二",@"周三",@"周四",@"周五",@"周六",@"周日"];
    option.xAxis = [[NSMutableArray alloc] initWithObjects:xAxis, nil];
    PYAxis *yAxis = [[PYAxis alloc] init];
    [yAxis setAxisType:PYAxisTypeValue];
    yAxis.axisLabel.formatter = @"{value} ℃";
    option.yAxis = [[NSMutableArray alloc] initWithObjects:yAxis, nil];
    PYSeries *series1 = [[PYSeries alloc] init];
    series1.name = @"最高温度";
    [series1 setSeriesType:PYSeriesTypeLine];
    series1.data = @[@(11),@(11),@(15),@(13),@(12),@(13),@(10)];
    PYMarkPoint *markPoint = [[PYMarkPoint alloc] init];
    markPoint.data = @[@{@"type" : @"max", @"name": @"最大值"},@{@"type" : @"mix", @"name": @"最小值"}];
    series1.markPoint = @[markPoint];
    PYMarkLine *markLine = [[PYMarkLine alloc] init];
    markLine.data = @[@{@"type" : @"average", @"name": @"平均值"}];
    series1.markLine = @[markLine];
    PYSeries *series2 = [[PYSeries alloc] init];
    series2.name = @"最低温度";
    [series2 setSeriesType:PYSeriesTypeLine];
    series1.data = @[@(1),@(-2),@(2),@(5),@(3),@(2),@(0)];
    PYMarkPoint *markPoint2 = [[PYMarkPoint alloc] init];
    markPoint2.data = @[@{@"value" : @(2), @"name": @"周最低", @"xAxis":@(1), @"yAxis" : @(-1.5)}];
    series2.markPoint = @[markPoint2];
    PYMarkLine *markLine2 = [[PYMarkLine alloc] init];
    markLine2.data = @[@{@"type" : @"average", @"name": @"平均值"}];
    series2.markLine = @[markLine2];
    option.series = [[NSMutableArray alloc] initWithObjects:series1, series2, nil];
    [_kEchartView setOption:option];
    
}


//PYOption *option = [[PYOption alloc] init];
//PYLegend *legend = [[PYLegend alloc] init];
//legend.data = @[@"邮件营销", @"联盟广告", @"视频广告"];
//legend.textStyle.color = PYRGBA(255, 255, 255, 1);
//[option setLegend:legend];
//NSMutableArray *xAxises = [[NSMutableArray alloc] init];
//PYAxis *xAxis = [[PYAxis alloc] init];
//[xAxis setAxisType:PYAxisTypeCategory];
//xAxis.show = YES;
//xAxis.boundaryGap = @(NO);
//xAxis.axisLine.show = NO;
//xAxis.splitLine.show = NO;
//xAxis.axisLabel.show = YES;
//xAxis.axisLabel.textStyle.color = PYRGBA(87, 87, 87, 1);
//xAxis.axisLabel.textStyle.fontFamily = @"sans-serif";
//xAxis.axisLabel.textStyle.fontSize = @(10);
//xAxis.data = @[@"周一", @"周二", @"周三", @"周四", @"周五", @"周六", @"周日"];
//[xAxises addObject:xAxis];
//[option setXAxis:xAxises];
//NSMutableArray *yAxises = [[NSMutableArray alloc] init];
//PYAxis *yAxis = [[PYAxis alloc] init];
//[yAxis setAxisType:PYAxisTypeValue];
//yAxis.min = @0;
//yAxis.max = @(1.1*1120);
//yAxis.boundaryGap = @[@(0), @(1)];
//yAxis.axisLine.show = NO;
//PYSplitLine *splitLine = [[PYSplitLine alloc] init];
//splitLine.show = YES;
//splitLine.lineStyle.color = [[PYColor alloc] initWithColor:[UIColor colorWithRed:237 green:237 blue:243 alpha:1]];
//splitLine.lineStyle.width = @1;
//yAxis.splitLine = splitLine;
//yAxis.axisLabel.show = YES;
//yAxis.axisLabel.textStyle.color = [[PYColor alloc] initWithColor:[UIColor colorWithRed:237 green:237 blue:243 alpha:1]];
//yAxis.axisLabel.textStyle.fontFamily = @"sans-serif";
//yAxis.axisLabel.textStyle.fontSize = @(10);
//yAxis.axisLabel.formatter = @"(function(v){return v.toFixed(0)})";
//[yAxises addObject:yAxis];
//PYAxis *yAxis1= [[PYAxis alloc] init];
//[yAxis1 setAxisType:PYAxisTypeValue];
//yAxis1.show = NO;
//yAxis1.min = @(- 1.1*1120);
//yAxis1.max = @(0);
//yAxis1.axisLine.show = NO;
//yAxis1.axisLabel.formatter = @"(function(v){return - v;})";
//[yAxises addObject:yAxis1];
//[option setYAxis:yAxises];
//
//NSMutableArray *serieses = [[NSMutableArray alloc] init];
//PYCartesianSeries *lineSeries = [[PYCartesianSeries alloc] init];
//lineSeries.name = @"视频广告";
//[lineSeries setSeriesType:PYSeriesTypeLine];
//lineSeries.smooth = YES;
//lineSeries.symbol = @"image://echart_dot.png";
//lineSeries.symbolSize = @(4);
//PYItemStyleProp *normal = [[PYItemStyleProp alloc] init];
//normal.areaStyle = [[PYAreaStyle alloc] init];
//normal.areaStyle.color = PYRGBA(72, 193, 255, .2);
//normal.lineStyle = [[PYLineStyle alloc] init];
//normal.lineStyle.color = PYRGBA(0, 143, 211, 1);
//lineSeries.itemStyle = [[PYItemStyle alloc] init];
//lineSeries.itemStyle.normal = normal;
//lineSeries.data = @[@(220),@(245), @(330), @(370), @(420), @(490), @(650)];
//[serieses addObject:lineSeries];
//PYCartesianSeries *lineSeries2 = [[PYCartesianSeries alloc] init];
//lineSeries2.name = @"视频广告";
//[lineSeries2 setSeriesType:PYSeriesTypeLine];
//lineSeries2.smooth = YES;
//lineSeries2.symbol = @"none";
//PYItemStyleProp *normal2 = [[PYItemStyleProp alloc] init];
//normal2.areaStyle = [[PYAreaStyle alloc] init];
//normal2.areaStyle.color = PYRGBA(255, 255, 255, 0);
//normal2.lineStyle = [[PYLineStyle alloc] init];
//normal2.lineStyle.color = PYRGBA(231, 231, 238, 1);
//lineSeries2.itemStyle = [[PYItemStyle alloc] init];
//lineSeries2.itemStyle.normal = normal2;
//lineSeries2.data = @[@(210),@(250), @(310), @(370), @(390), @(410), @(450)];
//[serieses addObject:lineSeries2];
//PYCartesianSeries *lineSeries3 = [[PYCartesianSeries alloc] init];
//lineSeries3.name = @"搜索引擎";
//[lineSeries3 setSeriesType:PYSeriesTypeLine];
//lineSeries3.smooth = YES;
//lineSeries3.symbol = @"none";
//lineSeries3.yAxisIndex = @(1);
//PYItemStyleProp *normal3 = [[PYItemStyleProp alloc] init];
//normal3.color = PYRGBA(255, 255, 255, 0);
//normal3.areaStyle = [[PYAreaStyle alloc] init];
//normal3.areaStyle.color = PYRGBA(255, 255, 255, 0);
//normal3.lineStyle = [[PYLineStyle alloc] init];
//normal3.lineStyle.color = PYRGBA(231, 231, 238, 1);
//lineSeries3.itemStyle = [[PYItemStyle alloc] init];
//lineSeries3.itemStyle.normal = normal3;
//lineSeries3.data = @[@(620),@(732), @(701), @(734), @(1090), @(1130), @(1120)];
//lineSeries3.dataFunction = ^(NSArray *data) {
//    NSMutableArray *returnData = [[NSMutableArray alloc] init];
//    int maxData = 1120 * 1.1;
//    for (NSNumber *number in data) {
//        [returnData addObject:@((maxData - [number intValue]) * -1)];
//    }
//    return returnData;
//};
//[serieses addObject:lineSeries3];
//[option setSeries:serieses];
//
//[_kEchartView setOption:option];

@end
