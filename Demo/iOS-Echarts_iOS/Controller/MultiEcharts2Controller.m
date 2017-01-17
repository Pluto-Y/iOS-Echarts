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
@property (weak, nonatomic) IBOutlet PYEchartsView *echartsView3;
@property (weak, nonatomic) IBOutlet PYEchartsView *echartsView4;
@property (weak, nonatomic) IBOutlet PYEchartsView *echartsView5;

@property (weak, nonatomic) IBOutlet PYEchartsView *echartsView6;
@property (weak, nonatomic) IBOutlet PYEchartsView *echartsView7;
@property (weak, nonatomic) IBOutlet PYEchartsView *echartsView8;
@property (weak, nonatomic) IBOutlet PYEchartsView *echartsView9;
@property (weak, nonatomic) IBOutlet PYEchartsView *echartsView10;
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
    
    [_echartsView3 setOption:[PYBarDemoOptions stackedBarOption]];
    [_echartsView3 loadEcharts];
    
    [_echartsView4 setOption:[PYTreemapDemoOptions treemap1Option]];
    [_echartsView4 loadEcharts];
    
    [_echartsView5 setOption:[PYEventRiverDemoOptions eventRiver1Option]];
    [_echartsView5 loadEcharts];
    
    [_echartsView6 setOption:[PYScatterDemoOptions timeDataOption]];
    [_echartsView6 loadEcharts];
    
    [_echartsView7 setOption:[PYTreeDemoOptions tree2Option]];
    [_echartsView7 loadEcharts];
    
    [_echartsView8 setOption:[PYVennDemoOptions vennOption]];
    [_echartsView8 loadEcharts];
    
    [_echartsView9 setOption:[PYWorldCloudDemoOptions worldCloudOption]];
    [_echartsView9 loadEcharts];
    
    [_echartsView10 setOption:[PYCandlestickDemoOptions candlestick2Option]];
    [_echartsView10 loadEcharts];
}

@end
