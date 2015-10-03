//
//  ViewController.m
//  iOS-Echarts
//
//  Created by Pluto Y on 15/9/4.
//  Copyright (c) 2015年 Pluto Y. All rights reserved.
//

#import "ViewController.h"
#import "PYEchartsView.h"
#import "PYAxis.h"
#import "PYLegend.h"
#import "PYCartesianSeries.h"

// 折现图
#import "LineDemoController.h"
// 柱状图
#import "BarDemoController.h"
// 饼图
#import "PieDemoController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self initAll];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}



#pragma mark - custom functions
#pragma mark 初始化
/// 初始化
-(void)initAll {
    self.title = @"Demo目录";
//    PYOption *option = [[PYOption alloc] init];
//    PYLegend *legend = [[PYLegend alloc] init];
//    legend.data = @[@"邮件营销", @"联盟广告", @"视频广告"];
//    legend.textStyle.color = PYRGBA(255, 255, 255, 1);
//    [option setLegend:legend];
//    NSMutableArray *xAxises = [[NSMutableArray alloc] init];
//    PYAxis *xAxis = [[PYAxis alloc] init];
//    xAxis.type = @"category";
//    xAxis.show = YES;
//    xAxis.boundaryGap = @(NO);
//    xAxis.axisLine.show = NO;
//    xAxis.splitLine.show = NO;
//    xAxis.axisLabel.show = YES;
//    xAxis.axisLabel.textStyle.color = PYRGBA(87, 87, 87, 1);
//    xAxis.axisLabel.textStyle.fontFamily = @"sans-serif";
//    xAxis.axisLabel.textStyle.fontSize = @(10);
//    xAxis.data = @[@"周一", @"周二", @"周三", @"周四", @"周五", @"周六", @"周日"];
//    [xAxises addObject:xAxis];
//    [option setXAxis:xAxises];
//    NSMutableArray *yAxises = [[NSMutableArray alloc] init];
//    PYAxis *yAxis = [[PYAxis alloc] init];
//    yAxis.type = @"value";
//    yAxis.min = @0;
//    yAxis.max = @(1.1*1120);
//    yAxis.boundaryGap = @[@(0), @(1)];
//    yAxis.axisLine.show = NO;
//    PYSplitLine *splitLine = [[PYSplitLine alloc] init];
//    splitLine.show = YES;
//    splitLine.lineStyle.color = [[PYColor alloc] initWithColor:[UIColor colorWithRed:237 green:237 blue:243 alpha:1]];
//    splitLine.lineStyle.width = @1;
//    yAxis.splitLine = splitLine;
//    yAxis.axisLabel.show = YES;
//    yAxis.axisLabel.textStyle.color = [[PYColor alloc] initWithColor:[UIColor colorWithRed:237 green:237 blue:243 alpha:1]];
//    yAxis.axisLabel.textStyle.fontFamily = @"sans-serif";
//    yAxis.axisLabel.textStyle.fontSize = @(10);
//    yAxis.axisLabel.formatter = @"(function(v){return v.toFixed(0)})";
//    [yAxises addObject:yAxis];
//    PYAxis *yAxis1= [[PYAxis alloc] init];
//    yAxis1.type = @"value";
//    yAxis1.show = NO;
//    yAxis1.min = @(- 1.1*1120);
//    yAxis1.max = @(0);
//    yAxis1.axisLine.show = NO;
//    yAxis1.axisLabel.formatter = @"(function(v){return - v;})";
//    [yAxises addObject:yAxis1];
//    [option setYAxis:yAxises];
//    
//    NSMutableArray *serieses = [[NSMutableArray alloc] init];
//    PYCartesianSeries *lineSeries = [[PYCartesianSeries alloc] init];
//    lineSeries.name = @"视频广告";
//    lineSeries.type = @"line";
//    lineSeries.smooth = YES;
//    lineSeries.symbol = @"image://echart_dot.png";
//    lineSeries.symbolSize = @(4);
//    PYItemStyleProp *normal = [[PYItemStyleProp alloc] init];
//    normal.areaStyle = [[PYAreaStyle alloc] init];
//    normal.areaStyle.color = PYRGBA(72, 193, 255, .2);
//    normal.lineStyle = [[PYLineStyle alloc] init];
//    normal.lineStyle.color = PYRGBA(0, 143, 211, 1);
//    lineSeries.itemStyle = [[PYItemStyle alloc] init];
//    lineSeries.itemStyle.normal = normal;
//    lineSeries.data = @[@(220),@(245), @(330), @(370), @(420), @(490), @(650)];
//    [serieses addObject:lineSeries];
//    PYCartesianSeries *lineSeries2 = [[PYCartesianSeries alloc] init];
//    lineSeries2.name = @"视频广告";
//    lineSeries2.type = @"line";
//    lineSeries2.smooth = YES;
//    lineSeries2.symbol = @"none";
//    PYItemStyleProp *normal2 = [[PYItemStyleProp alloc] init];
//    normal2.areaStyle = [[PYAreaStyle alloc] init];
//    normal2.areaStyle.color = PYRGBA(255, 255, 255, 0);
//    normal2.lineStyle = [[PYLineStyle alloc] init];
//    normal2.lineStyle.color = PYRGBA(231, 231, 238, 1);
//    lineSeries2.itemStyle = [[PYItemStyle alloc] init];
//    lineSeries2.itemStyle.normal = normal2;
//    lineSeries2.data = @[@(210),@(250), @(310), @(370), @(390), @(410), @(450)];
//    [serieses addObject:lineSeries2];
//    PYCartesianSeries *lineSeries3 = [[PYCartesianSeries alloc] init];
//    lineSeries3.name = @"搜索引擎";
//    lineSeries3.type = @"line";
//    lineSeries3.smooth = YES;
//    lineSeries3.symbol = @"none";
//    lineSeries3.yAxisIndex = @(1);
//    PYItemStyleProp *normal3 = [[PYItemStyleProp alloc] init];
//    normal3.color = PYRGBA(255, 255, 255, 0);
//    normal3.areaStyle = [[PYAreaStyle alloc] init];
//    normal3.areaStyle.color = PYRGBA(255, 255, 255, 0);
//    normal3.lineStyle = [[PYLineStyle alloc] init];
//    normal3.lineStyle.color = PYRGBA(231, 231, 238, 1);
//    lineSeries3.itemStyle = [[PYItemStyle alloc] init];
//    lineSeries3.itemStyle.normal = normal3;
//    lineSeries3.data = @[@(620),@(732), @(701), @(734), @(1090), @(1130), @(1120)];
//    lineSeries3.data = @"(funtion(){var datas = [620,732,701,734,1090,1130,1120];var maxData = Math.max.apply(Math, datas);var len = datas.length; while(len --) {datas[len] = (maxData - datas[len]) * -1 ;} return datas;})";
//    [serieses addObject:lineSeries3];
//    [option setSeries:serieses];
//    
//    [_kWeb setOption:option];
}

- (IBAction)gotoDetailDemos:(id)sender {
    UIButton *btn = (UIButton *)sender;
    UIViewController *controller;
    switch (btn.tag) {
        case 10000:
            controller = [[LineDemoController alloc] init];
            break;
        case 10001:
            controller = [[BarDemoController alloc] init];
            break;
        case 10002:
            controller = [[PieDemoController alloc] init];
            break;
        default:
            break;
    }
    [self.navigationController pushViewController:controller animated:YES];
}

@end
