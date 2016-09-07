//
//  BarDemoControllerViewController.m
//  iOS-Echarts
//
//  Created by Pluto-Y on 15/9/27.
//  Copyright © 2015年 pluto-y. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BarDemoController.h"

typedef NS_ENUM(NSInteger, BarDemoTypeTag) {
    BarDemoTypeTagBasicColumn = 20000,
    BarDemoTypeTagStackedColumn = 20001,
    BarDemoTypeTagTermometer = 20002,
    BarDemoTypeTagCompositiveWaterfall = 20003,
    BarDemoTypeTagChangeWaterfall = 20004,
    BarDemoTypeTagStackedAndClusteredColumn = 20005,
    BarDemoTypeTagBasicBar = 20006,
    BarDemoTypeTagStackedBar = 20007,
    BarDemoTypeTagStackedFloatingBar = 20008,
    BarDemoTypeTagTornado = 20009,
    BarDemoTypeTagTornado2 = 20010,
    BarDemoTypeTagIrrgularBar = 20011,
    BarDemoTypeTagTimeline = 20012,
    BarDemoTypeTagRainbowBar = 20013,
    BarDemoTypeTagMultipleSreiesRainbowBar = 20014,
    BarDemoTypeTagColumn = 20015
};

@interface BarDemoController ()

@end

@implementation BarDemoController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self initAll];
}

#pragma mark - custom functions
- (void)initAll {
    self.title = @"柱状图";
    PYOption *option = [PYBarDemoOptions basicColumnOption];
    [_kEchartView setOption:option];
    [_kEchartView loadEcharts];
}


- (IBAction)kDemosClick:(id)sender {
    UIButton *btn = (UIButton *)sender;
    PYOption *option;
    switch (btn.tag) {
        case BarDemoTypeTagBasicColumn:
            option = [PYBarDemoOptions basicColumnOption];
            break;
        case BarDemoTypeTagStackedColumn:
            option = [PYBarDemoOptions stackedColumnOption];
            break;
        case BarDemoTypeTagTermometer:
            option = [PYBarDemoOptions termometerOption];
            break;
        case BarDemoTypeTagCompositiveWaterfall:
            option = [PYBarDemoOptions compositiveWaterfallOption];
            break;
        case BarDemoTypeTagChangeWaterfall:
            option = [PYBarDemoOptions changeWaterfallOption];
            break;
        case BarDemoTypeTagStackedAndClusteredColumn:
            option = [PYBarDemoOptions stackedAndClusteredColumnOption];
            break;
        case BarDemoTypeTagBasicBar:
            option = [PYBarDemoOptions basicBarOption];
            break;
        case BarDemoTypeTagStackedBar:
            option = [PYBarDemoOptions stackedBarOption];
            break;
        case BarDemoTypeTagStackedFloatingBar:
            option = [PYBarDemoOptions stackedFloatingBarOption];
            break;
        case BarDemoTypeTagTornado:
            option = [PYBarDemoOptions tornadoOption];
            break;
        case BarDemoTypeTagTornado2:
            option = [PYBarDemoOptions tornado2Option];
            break;
        case BarDemoTypeTagIrrgularBar:
            option = [PYBarDemoOptions irrgularBarOption];
            break;
        case BarDemoTypeTagTimeline:
            break;
        case BarDemoTypeTagRainbowBar:
            break;
        case BarDemoTypeTagMultipleSreiesRainbowBar:
            break;
        case BarDemoTypeTagColumn:
            break;
        default:
            break;
    }
    if (option != nil) {
        [_kEchartView setOption:option];
    }
    [_kEchartView loadEcharts];
}

// 缺少搭配时间轴的测试
//- (void)showDemo {
//    NSString *Json = @"";
//}

// 缺少彩色柱形图
//- (void)showDemo {
//    NSString *Json = @"";
//}
@end
