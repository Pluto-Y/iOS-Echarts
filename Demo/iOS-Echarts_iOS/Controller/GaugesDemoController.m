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
            option = [PYGaugesDemoOptions basicAngularGauge4Option];
            _option = option;
            _timer = [NSTimer scheduledTimerWithTimeInterval:2 target:self selector:@selector(basicAngularGaugeTimerTicket) userInfo:nil repeats:YES];
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

@end
