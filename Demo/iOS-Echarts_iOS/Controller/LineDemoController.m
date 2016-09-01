//
//  LineDemoControllerViewController.m
//  iOS-Echarts
//
//  Created by Pluto-Y on 15/9/17.
//  Copyright (c) 2015年 pluto-y. All rights reserved.
//

#import "LineDemoController.h"

typedef NS_ENUM(NSInteger, LineDemoTypeBtnTag) {
    LineDemoTypeBtnTagStandardLine = 10000,
    LineDemoTypeBtnTagStackedLine = 10001,
    LineDemoTypeBtnTagBasicLine = 10002,
    LindDemoTypeBtnTagBasicArea = 10003,
    LindDemoTypeBtnTagStackedArea = 10004,
    LindDemoTypeBtnTagIrregularLine = 10005,
    LineDemoTypeBtnTagIrregularLine2 = 10006,
    LineDemoTypeBtnTagLine = 10007,
    LineDemoTypeBtnTagLogarithmic = 10008
};

@interface LineDemoController ()

@end

@implementation LineDemoController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self initAll];
}

- (void)initAll {
    self.title = @"折线图";
    [self showStandardLineDemo];
    [_kEchartView loadEcharts];
}

- (IBAction)kDemosClick:(id)sender {
    UIButton *btn = (UIButton *)sender;
    PYOption *option = nil;
    switch (btn.tag) {
        case LineDemoTypeBtnTagStandardLine:
            [self showStandardLineDemo];
            break;
        case LineDemoTypeBtnTagStackedLine:
            [self showStackedLineDemo];
            break;
        case LineDemoTypeBtnTagBasicLine:
            [self showBasicLindeDemo];
            break;
        case LindDemoTypeBtnTagBasicArea:
            [self showBasicAreaDemo];
            break;
        case LindDemoTypeBtnTagStackedArea:
            [self showStackedAreaDemo];
            break;
        case LindDemoTypeBtnTagIrregularLine:
            [self showIrregularLineDemo];
            break;
        case LineDemoTypeBtnTagIrregularLine2:
            [self showIrregularLine2Demo];
            break;
        case LineDemoTypeBtnTagLine:
            [self showLineDemo];
            break;
        case LineDemoTypeBtnTagLogarithmic:
            option = [PYLineDemoOptions logarithmicOption];
            break;
        default:
            break;
    }
    if (option != nil) {
        [_kEchartView setOption:option];
    }
    [_kEchartView loadEcharts];
}

- (void)showAreaDemo {
    
}

- (void)showLineDemo {
    PYOption *option = [[PYOption alloc] init];
    option.tooltip = [[PYTooltip alloc] init];
    option.tooltip.trigger = @"axis";
    option.legend = [[PYLegend alloc] init];
    option.legend.data = @[@"邮件营销",@"联盟广告",@"视频广告",@"直接访问",@"搜索引擎"];
    PYGrid *grid = [[PYGrid alloc] init];
    grid.x = @(40);
    grid.x2 = @(50);
    option.grid = grid;
    option.toolbox = [[PYToolbox alloc] init];
    option.toolbox.show = YES;
    option.toolbox.feature = [[PYToolboxFeature alloc] init];
    option.toolbox.feature.mark = [[PYToolboxFeatureMark alloc] init];
    option.toolbox.feature.mark.show = YES;
    option.toolbox.feature.dataView = [[PYToolboxFeatureDataView alloc] init];
    option.toolbox.feature.dataView.show = YES;
    option.toolbox.feature.dataView.readOnly = NO;
    option.toolbox.feature.magicType = [[PYToolboxFeatureMagicType alloc] init];
    option.toolbox.feature.magicType.show = YES;
    option.toolbox.feature.magicType.type = @[PYSeriesTypeLine, @"bar", @"stack", @"tiled"];
    option.toolbox.feature.restore = [[PYToolboxFeatureRestore alloc] init];
    option.toolbox.feature.restore.show = YES;
    option.calculable = YES;
    PYAxis *xAxis = [[PYAxis alloc] init];
    xAxis.type = @"category";
    xAxis.boundaryGap = @(NO);
    xAxis.data = @[@"周一",@"周二",@"周三",@"周四",@"周五",@"周六",@"周日"];
    option.xAxis = [[NSMutableArray alloc] initWithObjects:xAxis, nil];
    PYAxis *yAxis = [[PYAxis alloc] init];
    yAxis.type = @"value";
    option.yAxis = [[NSMutableArray alloc] initWithObjects:yAxis, nil];
    NSMutableArray *serieses = [[NSMutableArray alloc] init];
    PYCartesianSeries *series1 = [[PYCartesianSeries alloc] init];
    series1.name = @"邮件营销";
    series1.type = PYSeriesTypeLine;
    series1.stack = @"总量";
    series1.itemStyle = [[PYItemStyle alloc] init];
    series1.itemStyle.normal = [[PYItemStyleProp alloc] init];
    series1.itemStyle.normal.areaStyle = [[PYAreaStyle alloc] init];
    series1.itemStyle.normal.areaStyle.color = @" (function (){var zrColor = require('zrender/tool/color');return zrColor.getLinearGradient(0, 200, 0, 400,[[0, 'rgba(255,0,0,0.8)'],[0.8, 'rgba(255,255,255,0.1)']])})()";
    series1.data = @[@(120),@(132),@(101),@(134),@{@"value":@(90), @"symbol":@"droplet", @"symbolSize":@(5)},@(230),@(210)];
    [serieses addObject:series1];
    PYCartesianSeries *series2 = [[PYCartesianSeries alloc] init];
    series2.name = @"联盟广告";
    series2.type = PYSeriesTypeLine;
    series2.stack = @"总量";
    series2.smooth = YES;
    series2.symbol = @"image://../asset/ico/favicon.png";
    series2.symbolSize = @(8);
    series2.itemStyle = [[PYItemStyle alloc] init];
    series2.itemStyle.normal = [[PYItemStyleProp alloc] init];
    series2.itemStyle.normal.areaStyle = [[PYAreaStyle alloc] init];
    series2.itemStyle.normal.areaStyle.type = @"default";
    series2.data = @[@(120), @(82), @{@"value":@(201), @"symbol":@"start", @"symbolSize":@(15),@"itemStyle":@{@"normal":@{@"label":@{@"show":@(YES),@"textStyle":@{@"fontSize":@(20),@"fontFamily":@"微软雅黑",@"fontWeight":@"bold"}}}}}, @{@"value":@(134),@"symbol":@"none"}, @(190), @{@"value":@(230),@"symbol":@"emptypin",@"symbolSize":@(8)}, @(110)];
    [serieses addObject:series2];
    PYCartesianSeries *series4 = [[PYCartesianSeries alloc] init];
    series4.name = @"直接访问";
    series4.type = PYSeriesTypeLine;
    series4.stack = @"总量";
    series4.symbol = @"arrow";
    series4.symbolSize = @(6);
    series4.symbolRotate = @(-45);
    series4.itemStyle = [[PYItemStyle alloc] init];
    series4.itemStyle.normal = [[PYItemStyleProp alloc] init];
    series4.itemStyle.normal.color = PYRGBA(255, 0, 0, 1);
    series4.itemStyle.normal.lineStyle = [[PYLineStyle alloc] init];
    series4.itemStyle.normal.lineStyle.width = @(2);
    series4.itemStyle.normal.lineStyle.type = @"dashed";
    series4.itemStyle.emphasis = [[PYItemStyleProp alloc] init];
    series4.itemStyle.emphasis.color = PYRGBA(0, 0, 255, 1);
    series4.data = @[@(320), @(332), @"-", @(334), @{@"value":@(390),@"symbol":@"star6",@"symbolSize":@(20),@"symbolRotate":@(10),@"itemStyle":@{@"normal":@{@"color":@"yellowgreen"},@"emphasis":@{@"color":@"orange",@"lable":@{@"show":@(YES),@"position":@"inside",@"textStyle":@{@"fontSize":@(20)}}}}}, @(330), @(320)];
    [serieses addObject:series4];
    PYCartesianSeries *series5 = [[PYCartesianSeries alloc] init];
    series5.name = @"搜索引擎";
    series5.type = PYSeriesTypeLine;
    series5.stack = @"总量";
    series5.symbol = @"emptyCircle";
    series5.itemStyle = [[PYItemStyle alloc] init];
    series5.itemStyle.normal = [[PYItemStyleProp alloc] init];
    series5.itemStyle.normal.lineStyle = [[PYLineStyle alloc] init];
    series5.itemStyle.normal.lineStyle.width = @(2);
    series5.itemStyle.normal.lineStyle.color = @"(function (){var zrColor = require('zrender/tool/color');return zrColor.getLinearGradient(0, 0, 1000, 0,[[0, 'rgba(255,0,0,0.8)'],[0.8, 'rgba(255,255,0,0.8)']])})()";
    series5.itemStyle.normal.lineStyle.shadowColor = PYRGBA(0, 0, 0, .5);
    series5.itemStyle.normal.lineStyle.shadowBlur = @(10);
    series5.itemStyle.normal.lineStyle.shadowOffsetX = @(8);
    series5.itemStyle.normal.lineStyle.shadowOffsetY = @(8);
    series5.itemStyle.emphasis = [[PYItemStyleProp alloc] init];
    series5.itemStyle.emphasis.label = [[PYLabel alloc] init];
    series5.itemStyle.emphasis.label.show = YES;
    series5.data = @[@(620), @(732), @(791), @{@"value":@(734),@"symbol":@"emptyHeart",@"symbolSize":@(10)}, @(890), @(930), @(820)];
    [serieses addObject:series5];
    [option setSeries:serieses];
    [_kEchartView setOption:option];
}

- (void)showIrregularLine2Demo {
    PYOption *option = [[PYOption alloc] init];
    option.title = [[PYTitle alloc] init];
    option.title.text = @"时间坐标折线图";
    option.title.subtext = @"dataZoom支持";
    PYGrid *grid = [[PYGrid alloc] init];
    grid.x = @(40);
    grid.x2 = @(50);
    option.grid = grid;
    option.tooltip = [[PYTooltip alloc] init];
    option.tooltip.trigger = @"item";
    option.tooltip.formatter = @"(function(params){var date = new Date(params.value[0]);data = date.getFullYear() + '-' + (date.getMonth() + 1) + '-' + date.getDate() + ' ' + date.getHours() + ':' + date.getMinutes(); return data + '<br/>' + params.value[1] + ',' + params.value[2]})";
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
    option.dataZoom = [[PYDataZoom alloc] init];
    option.dataZoom.show = YES;
    option.dataZoom.start = @(70);
    option.legend = [[PYLegend alloc] init];
    option.legend.data = @[@"series1"];
    option.grid = [[PYGrid alloc] init];
    option.grid.y2 = @(80);
    PYAxis *xAxis = [[PYAxis alloc] init];
    xAxis.type = PYAxisTypeTime;
    xAxis.splitNumber = @(10);
    option.xAxis = [[NSMutableArray alloc] initWithObjects:xAxis, nil];
    PYAxis *yAxis = [[PYAxis alloc] init];
    yAxis.type = PYAxisTypeValue;
    option.yAxis = [[NSMutableArray alloc] initWithObjects:yAxis, nil];
    PYCartesianSeries *series = [[PYCartesianSeries alloc] init];
    series.name = @"series1";
    series.type = PYSeriesTypeLine;
    series.showAllSymbol = YES;
    series.symbolSize = @"(function(value) {return Math.round(value[2]/100) + 2;})";
    series.data = @"(function () {var d = [];var len = 0;var now = new Date();var value;while (len++ < 200) {d.push([new Date(2014, 9, 1, 0, len * 10000),(Math.random()*30).toFixed(2) - 0,(Math.random()*100).toFixed(2) - 0]);}return d;})()";
    option.series = [[NSMutableArray alloc] initWithObjects:series, nil];
    [_kEchartView setOption:option];
}

- (void)showIrregularLineDemo {
    PYOption *option = [[PYOption alloc] init];
    option.title = [[PYTitle alloc] init];
    option.title.text = @"双数值轴折线";
    option.title.subtext = @"纯属虚构";
    PYGrid *grid = [[PYGrid alloc] init];
    grid.x = @(40);
    grid.x2 = @(50);
    option.grid = grid;
    option.tooltip = [[PYTooltip alloc] init];
    option.tooltip.trigger = @"axis";
    option.tooltip.axisPointer = [[PYAxisPointer alloc] init];
    option.tooltip.axisPointer.show = YES;
    option.tooltip.axisPointer.type = @"cross";
    option.tooltip.axisPointer.lineStyle = [[PYLineStyle alloc] init];
    option.tooltip.axisPointer.lineStyle.type = @"dashed";
    option.tooltip.axisPointer.lineStyle.width = @(1);
    option.tooltip.formatter = @"(function(params){return params.seriesName + ':[' + params.value[0] + ',' + params.value[1] + ']'})";
    option.legend = [[PYLegend alloc] init];
    option.legend.data = @[@"数据1",@"数据2"];
    option.toolbox = [[PYToolbox alloc] init];
    option.toolbox.show = YES;
    option.toolbox.feature = [[PYToolboxFeature alloc] init];
    option.toolbox.feature.mark = [[PYToolboxFeatureMark alloc] init];
    option.toolbox.feature.mark.show = YES;
    option.toolbox.feature.dataView = [[PYToolboxFeatureDataView alloc] init];
    option.toolbox.feature.dataView.show = YES;
    option.toolbox.feature.dataView.readOnly = NO;
    option.toolbox.feature.magicType = [[PYToolboxFeatureMagicType alloc] init];
    option.toolbox.feature.magicType.show = YES;
    option.toolbox.feature.magicType.type = @[PYSeriesTypeLine, @"bar"];
    option.toolbox.feature.restore = [[PYToolboxFeatureRestore alloc] init];
    option.toolbox.feature.restore.show = YES;
    option.calculable = YES;
    PYAxis *xAxis = [[PYAxis alloc] init];
    xAxis.type = @"value";
    option.xAxis = [[NSMutableArray alloc] initWithObjects:xAxis, nil];
    PYAxis *yAxis = [[PYAxis alloc] init];
    yAxis.type = @"value";
    yAxis.axisLine = [[PYAxisLine alloc] init];
    yAxis.axisLine.lineStyle = [[PYLineStyle alloc] init];
    yAxis.axisLine.lineStyle.color = PYRGBA(220, 20, 60, 1);
    option.yAxis = [[NSMutableArray alloc] initWithObjects:yAxis, nil];
    NSMutableArray *serieses = [[NSMutableArray alloc] init];
    PYCartesianSeries *series1 = [[PYCartesianSeries alloc] init];
    series1.name = @"数据1";
    series1.smooth = YES;
    series1.type = PYSeriesTypeLine;
    series1.itemStyle = [[PYItemStyle alloc] init];
    series1.itemStyle.normal = [[PYItemStyleProp alloc] init];
    series1.itemStyle.normal.areaStyle = [[PYAreaStyle alloc] init];
    series1.itemStyle.normal.areaStyle.type = @"default";
    series1.data = @[@[@(1.5), @(10)],@[@(5), @(7)],@[@(8),@(8)],@[@(12),@(6)],@[@(11),@(12)],@[@(16),@(9)],@[@(17),@(4)],@[@(19),@(9)]];
    series1.markPoint = [[PYMarkPoint alloc] init];
    series1.markPoint.data = @[
                               // 纵轴，默认
                               @{@"type" : @"max", @"name": @"最大值",@"symbol": @"emptyCircle", @"itemStyle":@{@"normal":@{@"color":@"#dc143c",@"label":@{@"position":@"top"}}}},
                               @{@"type" : @"min", @"name": @"最小值",@"symbol": @"emptyCircle", @"itemStyle":@{@"normal":@{@"color":@"#dc143c",@"label":@{@"position":@"bottom"}}}},
                               // 横轴
                               @{@"type" : @"max", @"name": @"最大值", @"valueIndex" : @(0),@"symbol": @"emptyCircle", @"itemStyle":@{@"normal":@{@"color":@"#1e90ff",@"label":@{@"position":@"right"}}}},
                               @{@"type" : @"min", @"name": @"最小值", @"valueIndex" : @(0),@"symbol": @"emptyCircle", @"itemStyle":@{@"normal":@{@"color":@"#1e90ff",@"label":@{@"position":@"left"}}}}
                               ];
    series1.markLine = [[PYMarkLine alloc] init];
    series1.markLine.data = @[
                              // 纵轴，默认
                              @{@"type" : @"max", @"name": @"最大值", @"itemStyle":@{@"normal":@{@"color":@"#dc143c"}}},
                              @{@"type" : @"min", @"name": @"最小值", @"itemStyle":@{@"normal":@{@"color":@"#dc143c"}}},
                              @{@"type" : @"average", @"name" : @"平均值", @"itemStyle":@{@"normal":@{@"color":@"#dc143c"}}},
                              // 横轴
                              @{@"type" : @"max", @"name": @"最大值", @"valueIndex": @(0), @"itemStyle":@{@"normal":@{@"color":@"#1e90ff"}}},
                              @{@"type" : @"min", @"name": @"最小值", @"valueIndex": @(0), @"itemStyle":@{@"normal":@{@"color":@"#1e90ff"}}},
                              @{@"type" : @"average", @"name" : @"平均值", @"valueIndex": @(0), @"itemStyle":@{@"normal":@{@"color":@"#1e90ff"}}}
                              ];
    [serieses addObject:series1];
    PYCartesianSeries *series2 = [[PYCartesianSeries alloc] init];
    series2.name = @"数据2";
    series2.smooth = YES;
    series2.type = PYSeriesTypeLine;
    series2.data = @[@[@(1),@(2)],@[@(2),@(3)],@[@(4),@(2)],@[@(7), @(5)],@[@(11), @(2)],@[@(18), @(3)]];
    [serieses addObject:series2];
    [option setSeries:serieses];
    [_kEchartView setOption:option];
}

- (void)showStackedAreaDemo {
    PYOption *option = [[PYOption alloc] init];
    option.tooltip = [[PYTooltip alloc] init];
    option.tooltip.trigger = PYTooltipTriggerAxis;
    option.legend = [[PYLegend alloc] init];
    option.legend.data = @[@"邮件营销",@"联盟广告",@"视频广告",@"直接访问",@"搜索引擎"];
    PYGrid *grid = [[PYGrid alloc] init];
    grid.x = @(40);
    grid.x2 = @(50);
    option.grid = grid;
    option.toolbox = [[PYToolbox alloc] init];
    option.toolbox.show = YES;
    option.toolbox.feature = [[PYToolboxFeature alloc] init];
    option.toolbox.feature.mark = [[PYToolboxFeatureMark alloc] init];
    option.toolbox.feature.mark.show = YES;
    option.toolbox.feature.dataView = [[PYToolboxFeatureDataView alloc] init];
    option.toolbox.feature.dataView.show = YES;
    option.toolbox.feature.dataView.readOnly = NO;
    option.toolbox.feature.magicType = [[PYToolboxFeatureMagicType alloc] init];
    option.toolbox.feature.magicType.show = YES;
    option.toolbox.feature.magicType.type = @[PYSeriesTypeLine, @"bar", @"stack", @"tiled"];
    option.toolbox.feature.restore = [[PYToolboxFeatureRestore alloc] init];
    option.toolbox.feature.restore.show = YES;
    option.calculable = YES;
    PYAxis *xAxis = [[PYAxis alloc] init];
    xAxis.type = PYAxisTypeCategory;
    xAxis.boundaryGap = @(NO);
    xAxis.data = @[@"周一",@"周二",@"周三",@"周四",@"周五",@"周六",@"周日"];
    option.xAxis = [[NSMutableArray alloc] initWithObjects:xAxis, nil];
    PYAxis *yAxis = [[PYAxis alloc] init];
    yAxis.type = @"value";
    option.yAxis = [[NSMutableArray alloc] initWithObjects:yAxis, nil];
    NSMutableArray *serieses = [[NSMutableArray alloc] init];
    PYCartesianSeries *series1 = [[PYCartesianSeries alloc] init];
    series1.name = @"邮件营销";
    series1.type = PYSeriesTypeLine;
    series1.stack = @"总量";
    series1.itemStyle = [[PYItemStyle alloc] init];
    series1.itemStyle.normal = [[PYItemStyleProp alloc] init];
    series1.itemStyle.normal.areaStyle = [[PYAreaStyle alloc] init];
    series1.itemStyle.normal.areaStyle.type = @"default";
    series1.data = @[@(120),@(132),@(101),@(134),@(90),@(230),@(210)];
    [serieses addObject:series1];
    PYCartesianSeries *series2 = [[PYCartesianSeries alloc] init];
    series2.name = @"联盟广告";
    series2.type = PYSeriesTypeLine;
    series2.stack = @"总量";
    series2.itemStyle = [[PYItemStyle alloc] init];
    series2.itemStyle.normal = [[PYItemStyleProp alloc] init];
    series2.itemStyle.normal.areaStyle = [[PYAreaStyle alloc] init];
    series2.itemStyle.normal.areaStyle.type = @"default";
    series2.data = @[@(220), @(182), @(191), @(234), @(290), @(330), @(310)];
    [serieses addObject:series2];
    PYCartesianSeries *series3 = [[PYCartesianSeries alloc] init];
    series3.name = @"视频广告";
    series3.type = PYSeriesTypeLine;
    series3.stack = @"总量";
    series3.itemStyle = [[PYItemStyle alloc] init];
    series3.itemStyle.normal = [[PYItemStyleProp alloc] init];
    series3.itemStyle.normal.areaStyle = [[PYAreaStyle alloc] init];
    series3.itemStyle.normal.areaStyle.type = @"default";
    series3.data = @[@(150), @(232), @(201), @(153), @(190), @(330), @(410)];
    [serieses addObject:series3];
    PYCartesianSeries *series4 = [[PYCartesianSeries alloc] init];
    series4.name = @"直接访问";
    series4.type = PYSeriesTypeLine;
    series4.stack = @"总量";
    series4.itemStyle = [[PYItemStyle alloc] init];
    series4.itemStyle.normal = [[PYItemStyleProp alloc] init];
    series4.itemStyle.normal.areaStyle = [[PYAreaStyle alloc] init];
    series4.itemStyle.normal.areaStyle.type = @"default";
    series4.data = @[@(320), @(332), @(301), @(334), @(390), @(330), @(320)];
    [serieses addObject:series4];
    PYCartesianSeries *series5 = [[PYCartesianSeries alloc] init];
    series5.name = @"搜索引擎";
    series5.type = PYSeriesTypeLine;
    series5.stack = @"总量";
    series5.itemStyle = [[PYItemStyle alloc] init];
    series5.itemStyle.normal = [[PYItemStyleProp alloc] init];
    series5.itemStyle.normal.areaStyle = [[PYAreaStyle alloc] init];
    series5.itemStyle.normal.areaStyle.type = @"default";
    series5.data = @[@(820), @(932), @(901), @(934), @(1290), @(1330), @(1320)];
    [serieses addObject:series5];
    [option setSeries:serieses];
    [_kEchartView setOption:option];
}

- (void)showBasicAreaDemo {
    PYOption *option = [[PYOption alloc] init];
    option.title = [[PYTitle alloc] init];
    option.title.text = @"某楼盘销售情况";
    option.title.subtext = @"纯属虚构";
    PYGrid *grid = [[PYGrid alloc] init];
    grid.x = @(40);
    grid.x2 = @(50);
    option.grid = grid;
    option.tooltip = [[PYTooltip alloc] init];
    option.tooltip.trigger = @"axis";
    option.legend = [[PYLegend alloc] init];
    option.legend.data = @[@"意向",@"预购",@"成交"];
    option.toolbox = [[PYToolbox alloc] init];
    option.toolbox.show = YES;
    option.toolbox.feature = [[PYToolboxFeature alloc] init];
    option.toolbox.feature.mark = [[PYToolboxFeatureMark alloc] init];
    option.toolbox.feature.mark.show = YES;
    option.toolbox.feature.dataView = [[PYToolboxFeatureDataView alloc] init];
    option.toolbox.feature.dataView.show = YES;
    option.toolbox.feature.dataView.readOnly = NO;
    option.toolbox.feature.magicType = [[PYToolboxFeatureMagicType alloc] init];
    option.toolbox.feature.magicType.show = YES;
    option.toolbox.feature.magicType.type = @[PYSeriesTypeLine, @"bar", @"stack", @"tiled"];
    option.toolbox.feature.restore = [[PYToolboxFeatureRestore alloc] init];
    option.toolbox.feature.restore.show = YES;
    option.calculable = YES;
    PYAxis *xAxis = [[PYAxis alloc] init];
    xAxis.type = @"category";
    xAxis.boundaryGap = @(NO);
    xAxis.data = @[@"周一",@"周二",@"周三",@"周四",@"周五",@"周六",@"周日"];
    option.xAxis = [[NSMutableArray alloc] initWithObjects:xAxis, nil];
    PYAxis *yAxis = [[PYAxis alloc] init];
    yAxis.type = @"value";
    option.yAxis = [[NSMutableArray alloc] initWithObjects:yAxis, nil];
    NSMutableArray *serieses = [[NSMutableArray alloc] init];
    PYCartesianSeries *series1 = [[PYCartesianSeries alloc] init];
    series1.name = @"成交";
    series1.type = PYSeriesTypeLine;
    series1.smooth = YES;
    series1.itemStyle = [[PYItemStyle alloc] init];
    series1.itemStyle.normal = [[PYItemStyleProp alloc] init];
    series1.itemStyle.normal.areaStyle = [[PYAreaStyle alloc] init];
    series1.itemStyle.normal.areaStyle.type = @"default";
    series1.data = @[@(10),@(12),@(21),@(54),@(260),@(830),@(710)];
    [serieses addObject:series1];
    PYCartesianSeries *series2 = [[PYCartesianSeries alloc] init];
    series2.name = @"预购";
    series2.type = PYSeriesTypeLine;
    series2.smooth = YES;
    series2.itemStyle = [[PYItemStyle alloc] init];
    series2.itemStyle.normal = [[PYItemStyleProp alloc] init];
    series2.itemStyle.normal.areaStyle = [[PYAreaStyle alloc] init];
    series2.itemStyle.normal.areaStyle.type = @"default";
    series2.data = @[@(30),@(182),@(434),@(791),@(390),@(30),@(10)];
    [serieses addObject:series2];
    PYCartesianSeries *series3 = [[PYCartesianSeries alloc] init];
    series3.name = @"意向";
    series3.type = PYSeriesTypeLine;
    series3.smooth = YES;
    series3.itemStyle = [[PYItemStyle alloc] init];
    series3.itemStyle.normal = [[PYItemStyleProp alloc] init];
    series3.itemStyle.normal.areaStyle = [[PYAreaStyle alloc] init];
    series3.itemStyle.normal.areaStyle.type = @"default";
    series3.data = @[@(1320),@(1132),@(601),@(234),@(120),@(90),@(20)];
    [serieses addObject:series3];
    [option setSeries:serieses];
    [_kEchartView setOption:option];
}

- (void)showBasicLindeDemo {
    PYOption *option = [[PYOption alloc] init];
    option.legend = [[PYLegend alloc] init];
    option.legend.data = @[@"高度(km)与气温(°C)变化关系"];
    PYGrid *grid = [[PYGrid alloc] init];
    grid.x = @(40);
    grid.x2 = @(50);
    option.grid = grid;
    option.toolbox = [[PYToolbox alloc] init];
    option.toolbox.show = YES;
    option.toolbox.feature = [[PYToolboxFeature alloc] init];
    option.toolbox.feature.mark = [[PYToolboxFeatureMark alloc] init];
    option.toolbox.feature.mark.show = YES;
    option.toolbox.feature.dataView = [[PYToolboxFeatureDataView alloc] init];
    option.toolbox.feature.dataView.show = YES;
    option.toolbox.feature.dataView.readOnly = NO;
    option.toolbox.feature.magicType = [[PYToolboxFeatureMagicType alloc] init];
    option.toolbox.feature.magicType.show = YES;
    option.toolbox.feature.magicType.type = @[PYSeriesTypeLine, @"bar"];
    option.toolbox.feature.restore = [[PYToolboxFeatureRestore alloc] init];
    option.toolbox.feature.restore.show = YES;
    option.calculable = YES;
    option.tooltip = [[PYTooltip alloc] init];
    option.tooltip.trigger = @"axis";
    option.tooltip.formatter = @"Temperature : <br/>{b}km : {c}°C";
    PYAxis *xAxis = [[PYAxis alloc] init];
    xAxis.type = @"value";
    xAxis.axisLabel = [[PYAxisLabel alloc] init];
    xAxis.axisLabel.formatter = @"{value} °C";
    option.xAxis = [[NSMutableArray alloc] initWithObjects:xAxis, nil];
    PYAxis *yAxis = [[PYAxis alloc] init];
    yAxis.type = @"category";
    yAxis.axisLine = [[PYAxisLine alloc] init];
    yAxis.axisLine.onZero = NO;
    yAxis.boundaryGap = @(NO);
    yAxis.data = @[@"0", @"10", @"20", @"30", @"40", @"50", @"60", @"70", @"80"];
    option.yAxis = [[NSMutableArray alloc] initWithObjects:yAxis, nil];
    NSMutableArray *serieses = [[NSMutableArray alloc] init];
    PYCartesianSeries *series1 = [[PYCartesianSeries alloc] init];
    series1.name = @"高度(km)与气温(°C)变化关系";
    series1.type = PYSeriesTypeLine;
    series1.smooth = YES;
    series1.itemStyle = [[PYItemStyle alloc] init];
    series1.itemStyle.normal = [[PYItemStyleProp alloc] init];
    series1.itemStyle.normal.lineStyle = [[PYLineStyle alloc] init];
    series1.itemStyle.normal.lineStyle.shadowColor = PYRGBA(0, 0, 0, .4);
    series1.data = @[@(15),@(-50),@(-56.5f),@(-46.5),@(-22.1),@(-2.5),@(-27.7),@(-55.7), @(-76.5)];
    [serieses addObject:series1];
    [option setSeries:serieses];
    [_kEchartView setOption:option];
}

- (void)showStackedLineDemo {
    PYOption *option = [[PYOption alloc] init];
    option.tooltip = [[PYTooltip alloc] init];
    option.tooltip.trigger = @"axis";
    option.legend = [[PYLegend alloc] init];
    option.legend.data = @[@"邮件营销",@"联盟广告",@"视频广告",@"直接访问",@"搜索引擎"];
    PYGrid *grid = [[PYGrid alloc] init];
    grid.x = @(40);
    grid.x2 = @(50);
    option.grid = grid;
    option.toolbox = [[PYToolbox alloc] init];
    option.toolbox.show = YES;
    option.toolbox.feature = [[PYToolboxFeature alloc] init];
    option.toolbox.feature.mark = [[PYToolboxFeatureMark alloc] init];
    option.toolbox.feature.mark.show = YES;
    option.toolbox.feature.dataView = [[PYToolboxFeatureDataView alloc] init];
    option.toolbox.feature.dataView.show = YES;
    option.toolbox.feature.dataView.readOnly = NO;
    option.toolbox.feature.magicType = [[PYToolboxFeatureMagicType alloc] init];
    option.toolbox.feature.magicType.show = YES;
    option.toolbox.feature.magicType.type = @[PYSeriesTypeLine, @"bar", @"stack", @"tiled"];
    option.toolbox.feature.restore = [[PYToolboxFeatureRestore alloc] init];
    option.toolbox.feature.restore.show = YES;
    option.calculable = YES;
    PYAxis *xAxis = [[PYAxis alloc] init];
    xAxis.type = @"category";
    xAxis.boundaryGap = @(NO);
    xAxis.data = @[@"周一",@"周二",@"周三",@"周四",@"周五",@"周六",@"周日"];
    option.xAxis = [[NSMutableArray alloc] initWithObjects:xAxis, nil];
    PYAxis *yAxis = [[PYAxis alloc] init];
    yAxis.type = @"value";
    option.yAxis = [[NSMutableArray alloc] initWithObjects:yAxis, nil];
    NSMutableArray *serieses = [[NSMutableArray alloc] init];
    PYCartesianSeries *series1 = [[PYCartesianSeries alloc] init];
    series1.name = @"邮件营销";
    series1.type = PYSeriesTypeLine;
    series1.stack = @"总量";
    series1.data = @[@(120),@(132),@(101),@(134),@(90),@(230),@(210)];
    [serieses addObject:series1];
    PYCartesianSeries *series2 = [[PYCartesianSeries alloc] init];
    series2.name = @"联盟广告";
    series2.type = PYSeriesTypeLine;
    series2.stack = @"总量";
    series2.data = @[@(220), @(182), @(191), @(234), @(290), @(330), @(310)];
    [serieses addObject:series2];
    PYCartesianSeries *series3 = [[PYCartesianSeries alloc] init];
    series3.name = @"视频广告";
    series3.type = PYSeriesTypeLine;
    series3.stack = @"总量";
    series3.data = @[@(150), @(232), @(201), @(153), @(190), @(330), @(410)];
    [serieses addObject:series3];
    PYCartesianSeries *series4 = [[PYCartesianSeries alloc] init];
    series4.name = @"直接访问";
    series4.type = PYSeriesTypeLine;
    series4.stack = @"总量";
    series4.data = @[@(320), @(332), @(301), @(334), @(390), @(330), @(320)];
    [serieses addObject:series4];
    PYCartesianSeries *series5 = [[PYCartesianSeries alloc] init];
    series5.name = @"搜索引擎";
    series5.type = PYSeriesTypeLine;
    series5.stack = @"总量";
    series5.data = @[@(820), @(932), @(901), @(934), @(1290), @(1330), @(1320)];
    [serieses addObject:series5];
    [option setSeries:serieses];
    [_kEchartView setOption:option];
}

/**
 *  标准折线图
 */
- (void)showStandardLineDemo {
    PYOption *option = [[PYOption alloc] init];
    PYTitle *title = [[PYTitle alloc] init];
    title.text = @"未来一周气温变化";
    title.subtext = @"纯属虚构";
    option.title = title;
    PYTooltip *tooltip = [[PYTooltip alloc] init];
    tooltip.trigger = @"axis";
    option.tooltip = tooltip;
    PYGrid *grid = [[PYGrid alloc] init];
    grid.x = @(40);
    grid.x2 = @(50);
    option.grid = grid;
    PYLegend *legend = [[PYLegend alloc] init];
    legend.data = @[@"最高温度",@"最低温度"];
    option.legend = legend;
    PYToolbox *toolbox = [[PYToolbox alloc] init];
    toolbox.show = YES;
    toolbox.x = @"right";
    toolbox.y = @"top";
    toolbox.z = @(100);
    toolbox.feature.mark.show = YES;
    toolbox.feature.dataView.show = YES;
    toolbox.feature.dataView.readOnly = NO;
    toolbox.feature.magicType.show = YES;
    toolbox.feature.magicType.type = @[PYSeriesTypeLine, PYSeriesTypeBar];
    toolbox.feature.restore.show = YES;
    option.toolbox = toolbox;
    option.calculable = YES;
    PYAxis *xAxis = [[PYAxis  alloc] init];
    xAxis.type = @"category";
    xAxis.boundaryGap = @(NO);
    xAxis.data = @[@"周一",@"周二",@"周三",@"周四",@"周五",@"周六",@"周日"];
    option.xAxis = [[NSMutableArray alloc] initWithObjects:xAxis, nil];
    PYAxis *yAxis = [[PYAxis alloc] init];
    yAxis.type = @"value";
    yAxis.axisLabel.formatter = @"{value} ℃";
    option.yAxis = [[NSMutableArray alloc] initWithObjects:yAxis, nil];
    PYSeries *series1 = [[PYSeries alloc] init];
    series1.name = @"最高温度";
    series1.type = PYSeriesTypeLine;
    series1.data = @[@(11),@(11),@(15),@(13),@(12),@(13),@(10)];
    PYMarkPoint *markPoint = [[PYMarkPoint alloc] init];
    markPoint.data = @[@{@"type" : @"max", @"name": @"最大值"},@{@"type" : @"min", @"name": @"最小值"}];
    series1.markPoint = markPoint;
    PYMarkLine *markLine = [[PYMarkLine alloc] init];
    markLine.data = @[@{@"type" : @"average", @"name": @"平均值"}];
    series1.markLine = markLine;
    PYSeries *series2 = [[PYSeries alloc] init];
    series2.name = @"最低温度";
    series2.type = PYSeriesTypeLine;
    series2.data = @[@(1),@(-2),@(2),@(5),@(3),@(2),@(0)];
    PYMarkPoint *markPoint2 = [[PYMarkPoint alloc] init];
    markPoint2.data = @[@{@"value" : @(2), @"name": @"周最低", @"xAxis":@(1), @"yAxis" : @(-1.5)}];
    series2.markPoint = markPoint2;
    PYMarkLine *markLine2 = [[PYMarkLine alloc] init];
    markLine2.data = @[@{@"type" : @"average", @"name": @"平均值"}];
    series2.markLine = markLine2;
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
