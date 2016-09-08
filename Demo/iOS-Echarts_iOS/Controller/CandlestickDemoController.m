//
//  CandlestickDemoController.m
//  iOS-Echarts
//
//  Created by Pluto-Y on 15/11/23.
//  Copyright © 2015年 pluto-y. All rights reserved.
//

#import "CandlestickDemoController.h"
#import "PYDemoOptions.h"

typedef NS_ENUM(NSInteger, CandlesticDemoTypeBtnTag) {
    CandlesticDemoTypeBtnTag1 = 300001,
    CandlesticDemoTypeBtnTag2 = 300002
};

@interface CandlestickDemoController ()

@end

@implementation CandlestickDemoController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self initAll];
}

#pragma mark - custom functions
/**
 *  初始化
 */
- (void)initAll {
    self.title = @"K线图";
    PYOption *option = [PYCandlestickDemoOptions candlestick1Option];
    [_kEchartView setOption:option];
    [_kEchartView loadEcharts];
}

/**
 *  按钮的点击事件
 */
- (IBAction)kDemosClick:(id)sender {
    UIButton *btn = (UIButton *)sender;
    PYOption *option;
    switch (btn.tag) {
        case CandlesticDemoTypeBtnTag1:
            option = [PYCandlestickDemoOptions candlestick1Option];
            break;
        case CandlesticDemoTypeBtnTag2:
            option = [PYCandlestickDemoOptions candlestick2Option];
            break;
    }
    if (option != nil) {
        [_kEchartView setOption:option];
    }
    [_kEchartView loadEcharts];
}

@end
