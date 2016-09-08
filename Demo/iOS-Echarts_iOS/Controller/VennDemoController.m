//
//  VennDemoController.m
//  iOS-Echarts
//
//  Created by Pluto Y on 8/14/16.
//  Copyright © 2016 pluto-y. All rights reserved.
//

#import "VennDemoController.h"
#import "PYDemoOptions.h"

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
    PYOption *option = [PYVennDemoOptions vennOption];
    [_yEchartView setOption:option];
    [_yEchartView loadEcharts];
}

@end
