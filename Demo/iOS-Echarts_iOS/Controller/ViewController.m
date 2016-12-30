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

// Line
#import "LineDemoController.h"
// Bar
#import "BarDemoController.h"
// Pie
#import "PieDemoController.h"
// Candlestick
#import "CandlestickDemoController.h"
// Scatter
#import "ScatterDemoController.h"
// Radar
#import "RadarDemoController.h"
// Map
#import "MapDemoController.h"
// Force
#import "ForceDemoController.h"
// Other Demo
#import "OtherDemoController.h"
// Word Cloud
#import "WordCloudDemoController.h"
// Venn
#import "VennDemoController.h"
// Treemap
#import "TreemapDemoController.h"
// Gauges
#import "GaugesDemoController.h"
// Funnel
#import "FunnelDemoController.h"
// Chord
#import "ChordDemoController.h"
// Tree
#import "TreeDemoController.h"
// Event River
#import "EventRiverController.h"
// WKWebView
#import "WKWebViewController.h"


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self initAll];
}

#pragma mark - custom functions
#pragma mark 初始化
/// 初始化
- (void)initAll {
    self.title = @"Demo目录";
}

- (IBAction)gotoDetailDemos:(id)sender {
    UIButton *btn = (UIButton *)sender;
    UIViewController *controller;
    switch (btn.tag) {
        case 10000: // 折线图
            controller = [[LineDemoController alloc] init];
            break;
        case 10001: // 柱状图
            controller = [[BarDemoController alloc] init];
            break;
        case 10002: // 饼图
            controller = [[PieDemoController alloc] init];
            break;
        case 10003: // K线图
            controller = [[CandlestickDemoController alloc] init];
            break;
        case 10004: // 散点图
            controller = [[ScatterDemoController alloc] init];
            break;
        case 10005: // 雷达图
            controller = [[RadarDemoController alloc] init];
            break;
        case 10006: // 地图
            controller = [[MapDemoController alloc] init];
            break;
        case 10007: // 力导向布局图
            controller = [[ForceDemoController alloc] init];
            break;
        case 10008: // 字符云
            controller = [[WordCloudDemoController alloc] init];
            break;
        case 10009: // 韦恩图
            controller = [[VennDemoController alloc] init];
            break;
        case 10010: // 矩形树图
            controller = [[TreemapDemoController alloc] init];
            break;
        case 10011: // 仪表盘
            controller = [[GaugesDemoController alloc] init];
            break;
        case 10012: // 漏斗图
            controller = [[FunnelDemoController alloc] init];
            break;
        case 10013: // 和弦图
            controller = [[ChordDemoController alloc] init];
            break;
        case 10014: // 树图
            controller = [[TreeDemoController alloc] init];
            break;
        case 10015: // 事件河流图
            controller = [[EventRiverController alloc] init];
            break;
        case 11000: // 其他
            controller = [[OtherDemoController alloc] init];
            break;
        case 11001: // WKWebView
            controller = [[WKWebViewController alloc] init];
            break;
        default:
            break;
    }
    if (controller != nil) {
        [self.navigationController pushViewController:controller animated:YES];
    }
    
}

@end
