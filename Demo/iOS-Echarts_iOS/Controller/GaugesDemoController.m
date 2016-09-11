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
            option = [PYGaugesDemoOptions multipleAngularGauges1Option];
            _option = option;
            _timer = [NSTimer scheduledTimerWithTimeInterval:2 target:self selector:@selector(multipleAngularGaugesTimerTick) userInfo:nil repeats:YES];
            break;
        case GaugesDemoTypeTagMultipleAngularGauges2:
            option = [PYGaugesDemoOptions multipleAngularGauges2Option];
            _option = option;
            _timer = [NSTimer scheduledTimerWithTimeInterval:2 target:self selector:@selector(multipleAngularGaugesTimerTick) userInfo:nil repeats:YES];
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
