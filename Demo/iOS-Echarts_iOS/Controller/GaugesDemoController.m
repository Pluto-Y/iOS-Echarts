//
//  GaugesDemoController.m
//  iOS-Echarts
//
//  Created by Pluto Y on 8/18/16.
//  Copyright © 2016 pluto-y. All rights reserved.
//

#import "GaugesDemoController.h"

typedef NS_ENUM(NSInteger, GaugesDemoTypeTag) {
    GaugesDemoTypeTagBasicAngularGauge1         = 40001,
    GaugesDemoTypeTagBasicAngularGauge2         = 40002,
    GaugesDemoTypeTagBasicAngularGauge3         = 40003,
    GaugesDemoTypeTagMultipleAngularGauges1     = 40004,
    GaugesDemoTypeTagMultipleAngularGauges2     = 40005,
    GaugesDemoTypeTagBasicAngularGauge4         = 40006
};

@interface GaugesDemoController ()

@property (weak, nonatomic) IBOutlet PYEchartsView *echartsView;
@property (nonatomic, strong) NSTimer *timer;
@property (nonatomic, strong) PYOption *option;

@end

@implementation GaugesDemoController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self initAll];
}

- (void)initAll {
    self.title = @"仪表盘";
    _option = [PYGaugesDemoOptions basicAngularGauge1Option];
    [_echartsView setOption:_option];
    [_echartsView loadEcharts];
    _timer = [NSTimer scheduledTimerWithTimeInterval:2 target:self selector:@selector(basicAngularGaugeTimerTicket) userInfo:nil repeats:YES];
}

- (IBAction)demoBtnClick:(id)sender {
    UIButton *btn = (UIButton *)sender;
    if (_timer != nil) {
        [_timer invalidate];
        _timer = nil;
    }
    PYOption *option;
    switch (btn.tag) {
        case GaugesDemoTypeTagBasicAngularGauge1:
            option = [PYGaugesDemoOptions basicAngularGauge1Option];
            _option = option;
            _timer = [NSTimer scheduledTimerWithTimeInterval:2 target:self selector:@selector(basicAngularGaugeTimerTicket) userInfo:nil repeats:YES];
            break;
        case GaugesDemoTypeTagBasicAngularGauge2:
            option = [PYGaugesDemoOptions basicAngularGauge2Option];
            _option = option;
            _timer = [NSTimer scheduledTimerWithTimeInterval:2 target:self selector:@selector(basicAngularGaugeTimerTicket) userInfo:nil repeats:YES];
            break;
        case GaugesDemoTypeTagBasicAngularGauge3:
            option = [PYGaugesDemoOptions basicAngularGauge3Option];
            _option = option;
            _timer = [NSTimer scheduledTimerWithTimeInterval:2 target:self selector:@selector(basicAngularGaugeTimerTicket) userInfo:nil repeats:YES];
            break;
        case GaugesDemoTypeTagMultipleAngularGauges1:
            [self showMultipleAngularGauges1Demo];
            break;
        case GaugesDemoTypeTagMultipleAngularGauges2:
            [self showMultipleAngularGauges2Demo];
            break;
        case GaugesDemoTypeTagBasicAngularGauge4:
            [self showBasicAngularGauge4Demo];
            break;
        default:
            break;
    }
    if(option != nil) {
        
        [_echartsView setOption:_option];
    }
    [_echartsView loadEcharts];
}

- (void)basicAngularGaugeTimerTicket {
    PYGaugeSeries *series = (PYGaugeSeries *)_option.series[0];
    NSMutableDictionary *dataDic = [[NSMutableDictionary alloc] initWithDictionary:series.data[0]];
    float value = arc4random_uniform(10000)/100.0;
    dataDic[@"value"] = @(value);
    series.data = @[dataDic];
    _option.series = [[NSMutableArray alloc] initWithObjects:series, nil];
    [_echartsView refreshEchartsWithOption:_option];
}

- (void)showMultipleAngularGauges1Demo {
    PYOption *option = [[PYOption alloc] init];
    option.tooltip = [[PYTooltip alloc] init];
    option.tooltip.formatter = @"{a} <br/>{b} : {c}%";
    option.toolbox = [[PYToolbox alloc] init];
    option.toolbox.show = YES;
    option.toolbox.feature = [[PYToolboxFeature alloc] init];
    option.toolbox.feature.mark = [[PYToolboxFeatureMark alloc] init];
    option.toolbox.feature.mark.show = YES;
    option.toolbox.feature.restore = [[PYToolboxFeatureRestore alloc] init];
    option.toolbox.feature.restore.show = YES;
    
    PYGaugeSeries *series1 = [[PYGaugeSeries alloc] init];
    series1.name = @"速度";
    series1.type = PYSeriesTypeGauge;
    series1.z = @3;
    series1.min = @0;
    series1.max = @220;
    series1.radius = @"60%";
    series1.splitNumber = @11;
    series1.axisLine = [[PYAxisLine alloc] init];
    series1.axisLine.lineStyle = [[PYLineStyle alloc] init];
    series1.axisLine.lineStyle.width = @10;
    series1.axisTick = [[PYAxisTick alloc] init];
    series1.axisTick.length = @15;
    series1.axisTick.lineStyle = [[PYLineStyle alloc] init];
    series1.axisTick.lineStyle.color = @"auto";
    series1.splitLine = [[PYGaugeSpliteLine alloc] init];
    series1.splitLine.length = @20;
    series1.splitLine.lineStyle = [[PYLineStyle alloc] init];
    series1.title = [[PYGaugeTitle alloc] init];
    series1.title.textStyle = [[PYTextStyle alloc] init];
    series1.title.offsetCenter = @[@"0", @"-35%"];
    series1.title.textStyle.fontWeight = PYTextStyleFontWeightBolder;
    series1.title.textStyle.fontSize = @12;
    series1.title.textStyle.fontStyle = @"italic";
    series1.detail = [[PYGaugeDetail alloc] init];
    series1.detail.textStyle = [[PYTextStyle alloc] init];
    series1.detail.textStyle.fontWeight = PYTextStyleFontWeightBolder;
    series1.data = @[@{@"value":@40, @"name":@"km/h"}];
    
    PYGaugeSeries *series2 =[[PYGaugeSeries alloc] init];
    series2.name = @"转速";
    series2.type = PYSeriesTypeGauge;
    series2.center = @[@"15%", @"55%"];
    series2.radius = @"45%";
    series2.min = @0;
    series2.max = @7;
    series2.endAngle = @45;
    series2.splitNumber = @7;
    series2.axisLine = [[PYAxisLine alloc] init];
    series2.axisLine.lineStyle = [[PYLineStyle alloc] init];
    series2.axisLine.lineStyle.width = @8;
    series2.axisTick = [[PYAxisTick alloc] init];
    series2.axisTick.length = @12;
    series2.axisTick.lineStyle = [[PYLineStyle alloc] init];
    series2.axisTick.lineStyle.color = @"auto";
    series2.splitLine = [[PYGaugeSpliteLine alloc] init];
    series2.splitLine.length = @20;
    series2.splitLine.lineStyle = [[PYLineStyle alloc] init];
    series2.splitLine.lineStyle.color = @"auto";
    series2.pointer = [[PYGaugePointer alloc] init];
    series2.pointer.width = @5;
    series2.title = [[PYGaugeTitle alloc] init];
    series2.title.offsetCenter = @[@0, @"-20%"];
    series2.title.textStyle = [[PYTextStyle alloc] init];
    series2.title.textStyle.fontSize = @8;
    series2.detail = [[PYGaugeDetail alloc] init];
    series2.detail.textStyle = [[PYTextStyle alloc] init];
    series2.detail.textStyle.fontWeight = PYTextStyleFontWeightBolder;
    series2.data = @[@{@"value":@1.5, @"name":@"x1000 r/min"}];
    
    PYGaugeSeries *series3 =[[PYGaugeSeries alloc] init];
    series3.name = @"油表";
    series3.type = PYSeriesTypeGauge;
    series3.center = @[@"85%", @"50%"];
    series3.radius = @"45%";
    series3.min = @0;
    series3.max = @2;
    series3.startAngle = @135;
    series3.endAngle = @45;
    series3.splitNumber = @2;
    series3.axisLine = [[PYAxisLine alloc] init];
    series3.axisLine.lineStyle = [[PYLineStyle alloc] init];
    series3.axisLine.lineStyle.color = @[
                                         @[@0.2, [PYColor colorWithHexString:@"#ff4500"]],
                                         @[@0.8, [PYColor colorWithHexString:@"#48b"]],
                                         @[@1, [PYColor colorWithHexString:@"#228b22"]]
                                         ];
    series3.axisLine.lineStyle.width = @8;
    series3.axisTick = [[PYAxisTick alloc] init];
    series3.axisTick.splitNumber = @5;
    series3.axisTick.length = @10;
    series3.axisTick.lineStyle = [[PYLineStyle alloc] init];
    series3.axisTick.lineStyle.color = @"auto";
    series3.axisLabel = [[PYAxisLabel alloc] init];
    series3.axisLabel.formatter = @"(function(v){switch (v + \'\') {case \'0\' : return \'E\';case \'1\' : return \'Gas\';case \'2\' : return \'F\';}})";
    series3.splitLine = [[PYGaugeSpliteLine alloc] init];
    series3.splitLine.length = @15;
    series3.splitLine.lineStyle = [[PYLineStyle alloc] init];
    series3.splitLine.lineStyle.color = @"auto";
    series3.pointer = [[PYGaugePointer alloc] init];
    series3.pointer.width = @2;
    series3.title = [[PYGaugeTitle alloc] init];
    series3.title.show = NO;
    series3.detail = [[PYGaugeDetail alloc] init];
    series3.detail.show = NO;
    series3.data = @[@{@"value":@0.5, @"name":@"gas"}];
    
    
    PYGaugeSeries *series4 = [[PYGaugeSeries alloc] init];
    series4.name = @"水表";
    series4.type = PYSeriesTypeGauge;
    series4.center = @[@"85%", @"50%"];
    series4.radius = @"45%";
    series4.min = @0;
    series4.max = @2;
    series4.startAngle = @315;
    series4.endAngle = @225;
    series4.splitNumber = @2;
    series4.axisLine = [[PYAxisLine alloc] init];
    series4.axisLine.lineStyle = [[PYLineStyle alloc] init];
    series4.axisLine.lineStyle.color = @[
                                         @[@0.2, [PYColor colorWithHexString:@"#ff4500"]],
                                         @[@0.8, [PYColor colorWithHexString:@"#48b"]],
                                         @[@1, [PYColor colorWithHexString:@"#228b22"]]
                                         ];
    series4.axisLine.lineStyle.width = @8;
    series4.axisTick = [[PYAxisTick alloc] init];
    series4.axisTick.show = NO;
    series4.axisLabel = [[PYAxisLabel alloc] init];
    series4.axisLabel.formatter = @"(function(v){switch (v + \'\') {case \'0\' : return \'H\';case \'1\' : return \'Water\';case \'2\' : return \'C\';}})";
    series4.splitLine = [[PYGaugeSpliteLine alloc] init];
    series4.splitLine.length = @15;
    series4.splitLine.lineStyle = [[PYLineStyle alloc] init];
    series4.splitLine.lineStyle.color = @"auto";
    series4.pointer = [[PYGaugePointer alloc] init];
    series4.pointer.width = @2;
    series4.title = [[PYGaugeTitle alloc] init];
    series4.title.show = NO;
    series4.detail = [[PYGaugeDetail alloc] init];
    series4.detail.show = NO;
    series4.data = @[@{@"value":@0.5, @"name":@"gas"}];
    
    option.series = [[NSMutableArray alloc] initWithArray:@[series1, series2, series3, series4]];
    
    _option = option;
    [_echartsView setOption:_option];
    
    _timer = [NSTimer scheduledTimerWithTimeInterval:2 target:self selector:@selector(multipleAngularGaugesTimerTick) userInfo:nil repeats:YES];
}

- (void)multipleAngularGaugesTimerTick {
    PYGaugeSeries *series1 = (PYGaugeSeries *)_option.series[0];
    NSMutableDictionary *dataDic1 = [[NSMutableDictionary alloc] initWithDictionary:series1.data[0]];
    float value1 = arc4random_uniform(10000)/100.0;
    dataDic1[@"value"] = @(value1);
    series1.data = @[dataDic1];
    
    PYGaugeSeries *series2 = (PYGaugeSeries *)_option.series[1];
    NSMutableDictionary *dataDic2 = [[NSMutableDictionary alloc] initWithDictionary:series2.data[0]];
    float value2 = arc4random_uniform(700)/100.0;
    dataDic2[@"value"] = @(value2);
    series2.data = @[dataDic2];
    
    PYGaugeSeries *series3 = (PYGaugeSeries *)_option.series[2];
    NSMutableDictionary *dataDic3 = [[NSMutableDictionary alloc] initWithDictionary:series3.data[0]];
    float value3 = arc4random_uniform(200)/100.0;
    dataDic3[@"value"] = @(value3);
    series3.data = @[dataDic3];
    
    PYGaugeSeries *series4 = (PYGaugeSeries *)_option.series[3];
    NSMutableDictionary *dataDic4 = [[NSMutableDictionary alloc] initWithDictionary:series4.data[0]];
    float value4 = arc4random_uniform(200)/100.0;
    dataDic4[@"value"] = @(value4);
    series4.data = @[dataDic4];
    
    _option.series = [[NSMutableArray alloc] initWithArray:@[series1, series2, series3, series4]];
    [_echartsView refreshEchartsWithOption:_option];
}

- (void)showMultipleAngularGauges2Demo {
    PYOption *option = [[PYOption alloc] init];
    option.backgroundColor = [PYColor colorWithHexString:@"#1b1b1b"];
    option.tooltip = [[PYTooltip alloc] init];
    option.tooltip.formatter = @"{a} <br/>{b} : {c}%";
    option.toolbox = [[PYToolbox alloc] init];
    option.toolbox.show = YES;
    option.toolbox.feature = [[PYToolboxFeature alloc] init];
    option.toolbox.feature.mark = [[PYToolboxFeatureMark alloc] init];
    option.toolbox.feature.mark.show = YES;
    option.toolbox.feature.restore = [[PYToolboxFeatureRestore alloc] init];
    option.toolbox.feature.restore.show = YES;
    
    PYGaugeSeries *series1 = [[PYGaugeSeries alloc] init];
    series1.name = @"速度";
    series1.type = PYSeriesTypeGauge;
    series1.min = @0;
    series1.max = @220;
    series1.radius = @"60%";
    series1.splitNumber = @11;
    series1.axisLine = [[PYAxisLine alloc] init];
    series1.axisLine.lineStyle = [[PYLineStyle alloc] init];
    series1.axisLine.lineStyle.color = @[
                                         @[@0.09, @"lime"],
                                         @[@0.82, [PYColor colorWithHexString:@"#1e90ff"]],
                                         @[@1, [PYColor colorWithHexString:@"ff4500"]]
                                         ];
    series1.axisLine.lineStyle.width = @3;
    series1.axisLine.lineStyle.shadowColor = [PYColor colorWithHexString:@"#fff"];
    series1.axisLine.lineStyle.shadowBlur = @10;
    series1.axisLabel = [[PYAxisLabel alloc] init];
    series1.axisLabel.textStyle = [[PYTextStyle alloc] init];
    series1.axisLabel.textStyle.fontWeight = PYTextStyleFontWeightBolder;
    series1.axisLabel.textStyle.color = [PYColor colorWithHexString:@"#fff"];
    series1.axisTick = [[PYAxisTick alloc] init];
    series1.axisTick.length = @8;
    series1.axisTick.lineStyle = [[PYLineStyle alloc] init];
    series1.axisTick.lineStyle.color = @"auto";
    series1.axisTick.lineStyle.shadowColor = [PYColor colorWithHexString:@"#fff"];
    series1.axisTick.lineStyle.shadowBlur = @10;
    series1.splitLine = [[PYGaugeSpliteLine alloc] init];
    series1.splitLine.length = @10;
    series1.splitLine.lineStyle = [[PYLineStyle alloc] init];
    series1.splitLine.lineStyle.width = @3;
    series1.splitLine.lineStyle.color = [PYColor colorWithHexString:@"#fff"];
    series1.splitLine.lineStyle.shadowColor = [PYColor colorWithHexString:@"#fff"];
    series1.splitLine.lineStyle.shadowBlur = @10;
    series1.pointer = [[PYGaugePointer alloc] init];
    series1.pointer.shadowColor = [PYColor colorWithHexString:@"#fff"];
    series1.pointer.shadowBlur = @5;
    series1.title = [[PYGaugeTitle alloc] init];
    series1.title.textStyle = [[PYTextStyle alloc] init];
    series1.title.offsetCenter = @[@"0", @"-35%"];
    series1.title.textStyle.fontWeight = PYTextStyleFontWeightBolder;
    series1.title.textStyle.fontSize = @12;
    series1.title.textStyle.fontStyle = @"italic";
    series1.title.textStyle.color = [PYColor colorWithHexString:@"#fff"];
    series1.title.textStyle.shadowColor = [PYColor colorWithHexString:@"#fff"];
    series1.title.textStyle.shadowBlur = @10;
    series1.detail = [[PYGaugeDetail alloc] init];
    series1.detail.backgroundColor = PYRGBA(30, 144, 255, 0.8);
    series1.detail.borderWidth = @1;
    series1.detail.borderColor = [PYColor colorWithHexString:@"#fff"];
    series1.detail.shadowColor = [PYColor colorWithHexString:@"#fff"];
    series1.detail.shadowBlur = @5;
    series1.detail.width = @40;
    series1.detail.height = @15;
    series1.detail.textStyle = [[PYTextStyle alloc] init];
    series1.detail.textStyle.fontWeight = PYTextStyleFontWeightBolder;
    series1.detail.textStyle.color = [PYColor colorWithHexString:@"#fff"];
    series1.data = @[@{@"value":@40, @"name":@"km/h"}];
    
    PYGaugeSeries *series2 =[[PYGaugeSeries alloc] init];
    series2.name = @"转速";
    series2.type = PYSeriesTypeGauge;
    series2.center = @[@"15%", @"55%"];
    series2.radius = @"45%";
    series2.min = @0;
    series2.max = @7;
    series2.endAngle = @45;
    series2.splitNumber = @7;
    series2.axisLine = [[PYAxisLine alloc] init];
    series2.axisLine.lineStyle = [[PYLineStyle alloc] init];
    series2.axisLine.lineStyle.color = @[
                                         @[@0.09, @"lime"],
                                         @[@0.82, [PYColor colorWithHexString:@"#1e90ff"]],
                                         @[@1, [PYColor colorWithHexString:@"ff4500"]]
                                         ];
    series2.axisLine.lineStyle.width = @2;
    series2.axisLine.lineStyle.shadowColor = [PYColor colorWithHexString:@"#fff"];
    series2.axisLine.lineStyle.shadowBlur = @10;
    series2.axisLabel = [[PYAxisLabel alloc] init];
    series2.axisLabel.textStyle = [[PYTextStyle alloc] init];
    series2.axisLabel.textStyle.fontWeight = PYTextStyleFontWeightBolder;
    series2.axisLabel.textStyle.color = [PYColor colorWithHexString:@"#fff"];
    series2.axisTick = [[PYAxisTick alloc] init];
    series2.axisTick.length = @12;
    series2.axisTick.lineStyle = [[PYLineStyle alloc] init];
    series2.axisTick.lineStyle.color = @"auto";
    series2.axisTick.lineStyle.shadowColor = [PYColor colorWithHexString:@"#fff"];
    series2.axisTick.lineStyle.shadowBlur = @10;
    series2.splitLine = [[PYGaugeSpliteLine alloc] init];
    series2.splitLine.length = @10;
    series2.splitLine.lineStyle = [[PYLineStyle alloc] init];
    series2.splitLine.lineStyle.width = @3;
    series2.splitLine.lineStyle.color = [PYColor colorWithHexString:@"#fff"];
    series2.splitLine.lineStyle.shadowColor = [PYColor colorWithHexString:@"#fff"];
    series2.splitLine.lineStyle.shadowBlur = @10;
    series2.pointer = [[PYGaugePointer alloc] init];
    series2.pointer.width = @5;
    series2.pointer.shadowColor = [PYColor colorWithHexString:@"#fff"];
    series2.pointer.shadowBlur = @5;
    series2.title = [[PYGaugeTitle alloc] init];
    series2.title.offsetCenter = @[@0, @"-20%"];
    series2.title.textStyle = [[PYTextStyle alloc] init];
    series2.title.textStyle.fontSize = @8;
    series2.title.textStyle.fontStyle = @"italic";
    series2.title.textStyle.color = [PYColor colorWithHexString:@"#fff"];
    series2.title.textStyle.shadowColor = [PYColor colorWithHexString:@"#fff"];
    series2.title.textStyle.shadowBlur = @10;
    series2.detail = [[PYGaugeDetail alloc] init];
    series2.detail.borderColor = [PYColor colorWithHexString:@"#fff"];
    series2.detail.shadowColor = [PYColor colorWithHexString:@"#fff"];
    series2.detail.shadowBlur = @5;
    series2.detail.width = @80;
    series2.detail.height = @30;
    series2.detail.textStyle = [[PYTextStyle alloc] init];
    series2.detail.textStyle.fontWeight = PYTextStyleFontWeightBolder;
    series2.detail.textStyle.color = [PYColor colorWithHexString:@"#fff"];
    series2.data = @[@{@"value":@1.5, @"name":@"x1000 r/min"}];
    
    PYGaugeSeries *series3 =[[PYGaugeSeries alloc] init];
    series3.name = @"油表";
    series3.type = PYSeriesTypeGauge;
    series3.center = @[@"85%", @"50%"];
    series3.radius = @"45%";
    series3.min = @0;
    series3.max = @2;
    series3.startAngle = @135;
    series3.endAngle = @45;
    series3.splitNumber = @2;
    series3.axisLine = [[PYAxisLine alloc] init];
    series3.axisLine.lineStyle = [[PYLineStyle alloc] init];
    series3.axisLine.lineStyle.color = @[
                                         @[@0.09, @"lime"],
                                         @[@0.82, [PYColor colorWithHexString:@"#1e90ff"]],
                                         @[@1, [PYColor colorWithHexString:@"ff4500"]]
                                         ];
    series3.axisLine.lineStyle.width = @2;
    series3.axisLine.lineStyle.shadowColor = [PYColor colorWithHexString:@"#fff"];
    series3.axisLine.lineStyle.shadowBlur = @10;
    series3.axisTick = [[PYAxisTick alloc] init];
    series3.axisTick.length = @12;
    series3.axisTick.lineStyle = [[PYLineStyle alloc] init];
    series3.axisTick.lineStyle.color = @"auto";
    series3.axisTick.lineStyle.shadowColor = [PYColor colorWithHexString:@"#fff"];
    series3.axisTick.lineStyle.shadowBlur = @10;
    series3.axisLabel = [[PYAxisLabel alloc] init];
    series3.axisLabel.formatter = @"(function(v){switch (v + \'\') {case \'0\' : return \'E\';case \'1\' : return \'Gas\';case \'2\' : return \'F\';}})";
    series3.axisLabel.textStyle = [[PYTextStyle alloc] init];
    series3.axisLabel.textStyle.fontWeight = PYTextStyleFontWeightBolder;
    series3.axisLabel.textStyle.color = [PYColor colorWithHexString:@"#fff"];
    series3.splitLine = [[PYGaugeSpliteLine alloc] init];
    series3.splitLine.length = @15;
    series3.splitLine.lineStyle = [[PYLineStyle alloc] init];
    series3.splitLine.lineStyle.width = @3;
    series3.splitLine.lineStyle.color = [PYColor colorWithHexString:@"#fff"];
    series3.splitLine.lineStyle.shadowColor = [PYColor colorWithHexString:@"#fff"];
    series3.splitLine.lineStyle.shadowBlur = @10;
    series3.pointer = [[PYGaugePointer alloc] init];
    series3.pointer.width = @2;
    series3.pointer.shadowColor = [PYColor colorWithHexString:@"#fff"];
    series3.pointer.shadowBlur = @5;
    series3.title = [[PYGaugeTitle alloc] init];
    series3.title.show = NO;
    series3.detail = [[PYGaugeDetail alloc] init];
    series3.detail.show = NO;
    series3.data = @[@{@"value":@0.5, @"name":@"gas"}];
    
    
    PYGaugeSeries *series4 = [[PYGaugeSeries alloc] init];
    series4.name = @"水表";
    series4.type = PYSeriesTypeGauge;
    series4.center = @[@"85%", @"50%"];
    series4.radius = @"45%";
    series4.min = @0;
    series4.max = @2;
    series4.startAngle = @315;
    series4.endAngle = @225;
    series4.splitNumber = @2;
    series4.axisLine = [[PYAxisLine alloc] init];
    series4.axisLine.lineStyle = [[PYLineStyle alloc] init];
    series4.axisLine.lineStyle.color = @[
                                         @[@0.09, @"lime"],
                                         @[@0.82, [PYColor colorWithHexString:@"#1e90ff"]],
                                         @[@1, [PYColor colorWithHexString:@"ff4500"]]
                                         ];
    series4.axisLine.lineStyle.width = @2;
    series4.axisLine.lineStyle.shadowColor = [PYColor colorWithHexString:@"#fff"];
    series4.axisLine.lineStyle.shadowBlur = @10;
    series4.axisTick = [[PYAxisTick alloc] init];
    series4.axisTick.show = NO;
    series4.axisLabel = [[PYAxisLabel alloc] init];
    series4.axisLabel.formatter = @"(function(v){switch (v + \'\') {case \'0\' : return \'H\';case \'1\' : return \'Water\';case \'2\' : return \'C\';}})";
    series4.axisLabel.textStyle = [[PYTextStyle alloc] init];
    series4.axisLabel.textStyle.fontWeight = PYTextStyleFontWeightBolder;
    series4.axisLabel.textStyle.color = [PYColor colorWithHexString:@"#fff"];
    series4.splitLine = [[PYGaugeSpliteLine alloc] init];
    series4.splitLine.length = @10;
    series4.splitLine.lineStyle = [[PYLineStyle alloc] init];
    series4.splitLine.lineStyle.width = @3;
    series4.splitLine.lineStyle.color = [PYColor colorWithHexString:@"#fff"];
    series4.splitLine.lineStyle.shadowColor = [PYColor colorWithHexString:@"#fff"];
    series4.splitLine.lineStyle.shadowBlur = @10;
    series4.pointer = [[PYGaugePointer alloc] init];
    series4.pointer.width = @2;
    series4.pointer.shadowColor = [PYColor colorWithHexString:@"#fff"];
    series4.pointer.shadowBlur = @5;
    series4.title = [[PYGaugeTitle alloc] init];
    series4.title.show = NO;
    series4.detail = [[PYGaugeDetail alloc] init];
    series4.detail.show = NO;
    series4.data = @[@{@"value":@0.5, @"name":@"gas"}];
    
    option.series = [[NSMutableArray alloc] initWithArray:@[series1, series2, series3, series4]];
    
    _option = option;
    [_echartsView setOption:_option];
    
    _timer = [NSTimer scheduledTimerWithTimeInterval:2 target:self selector:@selector(multipleAngularGaugesTimerTick) userInfo:nil repeats:YES];
}

- (void)showBasicAngularGauge4Demo {
    PYOption *option = [[PYOption alloc] init];
    option.tooltip = [[PYTooltip alloc] init];
    option.tooltip.formatter = @"{a} <br/>{b} : {c}%";
    option.toolbox = [[PYToolbox alloc] init];
    option.toolbox.show = YES;
    option.toolbox.feature = [[PYToolboxFeature alloc] init];
    option.toolbox.feature.mark = [[PYToolboxFeatureMark alloc] init];
    option.toolbox.feature.mark.show = YES;
    option.toolbox.feature.restore = [[PYToolboxFeatureRestore alloc] init];
    option.toolbox.feature.restore.show = YES;
    
    PYGaugeSeries *series = [[PYGaugeSeries alloc] init];
    series.name = @"个性化仪表盘";
    series.type = PYSeriesTypeGauge;
    series.center = @[@"50%", @"50%"];
    series.radius = @[@0, @"75%"];
    series.startAngle = @140;
    series.endAngle = @(-140);
    series.min = @0;
    series.max = @100;
    series.splitNumber = @10;
    series.axisLine = [[PYAxisLine alloc] init];
    series.axisLine.show = YES;
    series.axisLine.lineStyle = [[PYLineStyle alloc] init];
    series.axisLine.lineStyle.color = @[
                                       @[@0.2, @"lightgreen"],
                                       @[@0.4, @"orange"],
                                       @[@0.8, @"skyblue"],
                                       @[@1, [PYColor colorWithHexString:@"ff4500"]]
                                       ];
    series.axisLine.lineStyle.width = @30;
    series.axisTick = [[PYAxisTick alloc] init];
    series.axisTick.show = YES;
    series.axisTick.splitNumber = @5;
    series.axisTick.length = @8;
    series.axisTick.lineStyle = [[PYLineStyle alloc] init];
    series.axisTick.lineStyle.color = [PYColor colorWithHexString:@"#eee"];
    series.axisTick.lineStyle.width = @1;
    series.axisTick.lineStyle.type = PYLineStyleTypeSolid;
    series.axisLabel = [[PYAxisLabel alloc] init];
    series.axisLabel.show = YES;
    series.axisLabel.formatter = @"(function(v){switch (v+\'\'){case \'10\': return \'弱\';case \'30\': return \'低\';case \'60\': return \'中\';case \'90\': return \'高\';default: return \'\';}})";
    series.axisLabel.textStyle = [[PYTextStyle alloc] init];
    series.axisLabel.textStyle.color = [PYColor colorWithHexString:@"#333"];
    series.splitLine = [[PYGaugeSpliteLine alloc] init];
    series.splitLine.show = YES;
    series.splitLine.length = @30;
    series.splitLine.lineStyle = [[PYLineStyle alloc] init];
    series.splitLine.lineStyle.color = [PYColor colorWithHexString:@"#eee"];
    series.splitLine.lineStyle.width = @2;
    series.splitLine.lineStyle.type = PYLineStyleTypeSolid;
    series.pointer = [[PYGaugePointer alloc] init];
    series.pointer.length = @"80%";
    series.pointer.width = @8;
    series.pointer.color = @"auto";
    series.title = [[PYGaugeTitle alloc] init];
    series.title.show = YES;
    series.title.offsetCenter = @[@"-65%", @(-10)];
    series.title.textStyle = [[PYTextStyle alloc] init];
    series.title.textStyle.color = [PYColor colorWithHexString:@"#333"];
    series.title.textStyle.fontSize = @15;
    series.detail = [[PYGaugeDetail alloc] init];
    series.detail.show = YES;
    series.detail.backgroundColor = PYRGBA(0, 0, 0, 0);
    series.detail.borderWidth = @0;
    series.detail.borderColor = [PYColor colorWithHexString:@"#ccc"];
    series.detail.width = @100;
    series.detail.height = @40;
    series.detail.offsetCenter = @[@"-60%", @0];
    series.detail.formatter = @"{value}%";
    series.detail.textStyle = [[PYTextStyle alloc] init];
    series.detail.textStyle.color = @"auto";
    series.detail.textStyle.fontSize = @30;
    series.data = @[@{@"value":@50, @"name":@"仪表盘"}];
    
    option.series = [[NSMutableArray alloc] initWithArray:@[series]];
    
    _option = option;
    [_echartsView setOption:_option];
    
    _timer = [NSTimer scheduledTimerWithTimeInterval:2 target:self selector:@selector(basicAngularGaugeTimerTicket) userInfo:nil repeats:YES];
}

@end
