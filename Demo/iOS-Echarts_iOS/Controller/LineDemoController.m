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
    [_kEchartView setOption:[PYLineDemoOptions standardLineOption]];
    [_kEchartView loadEcharts];
}

- (IBAction)kDemosClick:(id)sender {
    UIButton *btn = (UIButton *)sender;
    PYOption *option = nil;
    switch (btn.tag) {
        case LineDemoTypeBtnTagStandardLine:
            option = [PYLineDemoOptions standardLineOption];
            break;
        case LineDemoTypeBtnTagStackedLine:
            option = [PYLineDemoOptions stackedLineOption];
            break;
        case LineDemoTypeBtnTagBasicLine:
            option = [PYLineDemoOptions basicLineOption];
            break;
        case LindDemoTypeBtnTagBasicArea:
            option = [PYLineDemoOptions basicAreaOption];
            break;
        case LindDemoTypeBtnTagStackedArea:
            option = [PYLineDemoOptions stackedAreaOption];
            break;
        case LindDemoTypeBtnTagIrregularLine:
            option = [PYLineDemoOptions irregularLineOption];
            break;
        case LineDemoTypeBtnTagIrregularLine2:
            option = [PYLineDemoOptions irregularLine2Option];
            break;
        case LineDemoTypeBtnTagLine:
            option = [PYLineDemoOptions lineOption];
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

@end
