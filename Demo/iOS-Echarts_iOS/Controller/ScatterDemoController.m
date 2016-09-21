//
//  ScatterDemoController.m
//  iOS-Echarts
//
//  Created by Pluto-Y on 15/11/23.
//  Copyright © 2015年 pluto-y. All rights reserved.
//

#import "ScatterDemoController.h"

typedef NS_ENUM(NSInteger, ScatterDemoTypeBtnTag) {
    ScatterDemoTypeBtnTagBasicScatter = 300001,
    ScatterDemoTypeBtnTagBasicBubble = 300002,
    ScatterDemoTypeBtnTagLargeScaleScatter = 300003,
    ScatterDemoTypeBtnTagCategoryScatter = 300004,
    ScatterDemoTypeBtnTagTimeData = 300005,
    ScatterDemoTypeBtnTagTimeLine = 300006,
    ScatterDemoTypeBtnTagScaleRoaming = 300007,
    ScatterDemoTypeBtnTagScatter = 300008
};

@interface ScatterDemoController ()

@end

@implementation ScatterDemoController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self initAll];
}

#pragma mark - custom functions
/**
 *  初始化
 */
- (void)initAll {
    self.title = @"散点图";
    [_kEchartView setOption:[PYScatterDemoOptions basicScatterOption]];
    [_kEchartView loadEcharts];
}

/**
 *  按钮点击事件
 */
- (IBAction)kDemoBtnClick:(id)sender {
    UIButton *btn = (UIButton *)sender;
    PYOption *option;
    switch (btn.tag) {
        case ScatterDemoTypeBtnTagBasicScatter:
            option = [PYScatterDemoOptions basicScatterOption];
            break;
        case ScatterDemoTypeBtnTagBasicBubble:
            option = [PYScatterDemoOptions basicBubbleOption];
            break;
        case ScatterDemoTypeBtnTagLargeScaleScatter:
            option = [PYScatterDemoOptions largeScaleScatterOption];
            break;
        case ScatterDemoTypeBtnTagCategoryScatter:
            option = [PYScatterDemoOptions categoryScatterOption];
            break;
        case ScatterDemoTypeBtnTagTimeData:
            option = [PYScatterDemoOptions timeDataOption];
            break;
        case ScatterDemoTypeBtnTagTimeLine:
            option = [PYScatterDemoOptions timeLineOption];
            break;
        case ScatterDemoTypeBtnTagScaleRoaming:
            option = [PYScatterDemoOptions scaleRoamingOption];
            break;
        case ScatterDemoTypeBtnTagScatter:
            option = [PYScatterDemoOptions scatterOption];
            break;
        default:
            break;
    }
    if (option != nil) {
        [_kEchartView setOption:option];
    }
    [_kEchartView loadEcharts];
}

@end
