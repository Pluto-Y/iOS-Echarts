//
//  MultiEcharts2Controller.m
//  iOS-Echarts
//
//  Created by Pluto Y on 22/09/2016.
//  Copyright © 2016 pluto-y. All rights reserved.
//

#import "MultiEcharts2Controller.h"

@interface MultiEcharts2Controller ()

@property (weak, nonatomic) IBOutlet PYEchartsView *echartsView1;
@property (weak, nonatomic) IBOutlet PYEchartsView *echartsView2;
@end

@implementation MultiEcharts2Controller

- (void)viewDidLoad {
    [super viewDidLoad];
    [self initAll];
}

- (void)initAll {
    self.title = @"多图表";
    [_echartsView1 setOption:[PYLineDemoOptions basicLineOption]];
    [_echartsView1 loadEcharts];
    
    [_echartsView2 setOption:[PYPieDemoOptions nightingalesRoseDiagramPieOption]];
    [_echartsView2 loadEcharts];
}

@end
