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
    [self showBasicAngularGauge1Demo];
    [_echartsView loadEcharts];
}

- (IBAction)demoBtnClick:(id)sender {
    UIButton *btn = (UIButton *)sender;
    if (_timer != nil) {
        [_timer invalidate];
        _timer = nil;
    }
    switch (btn.tag) {
        case GaugesDemoTypeTagBasicAngularGauge1:
            [self showBasicAngularGauge1Demo];
            break;
        case GaugesDemoTypeTagBasicAngularGauge2:
            [self showBasicAngularGauge2Demo];
            break;
        case GaugesDemoTypeTagBasicAngularGauge3:
            [self showBasicAngularGauge3Demo];
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
    [_echartsView loadEcharts];
}

- (void)showBasicAngularGauge1Demo {
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
    series.name = @"业务指标";
    series.type = PYSeriesTypeGauge;
    series.detail = [[PYGaugeDetail alloc] init];
    series.detail.formatter = @"{value}%";
    series.data = @[@{@"value":@50, @"name":@"完成率"}];
    // 调整仪表的宽度
    series.axisLine = [[PYAxisLine alloc] init];
    series.axisLine.lineStyle = [[PYLineStyle alloc] init];
    series.axisLine.lineStyle.width = @10;
    series.axisTick = [[PYAxisTick alloc] init];
    series.axisTick.show = YES;
    series.axisTick.splitNumber = @5;
    series.axisTick.length = @15;
    series.axisTick.lineStyle = [[PYLineStyle alloc] init];
    series.axisTick.lineStyle.color = [PYColor colorWithHexString:@"#eee"];
    series.axisTick.lineStyle.width = @1;
    series.axisTick.lineStyle.type = PYLineStyleTypeSolid;
    series.splitLine = [[PYGaugeSpliteLine alloc] init];
    series.splitLine.length = @20;
    
    option.series = [[NSMutableArray alloc] initWithObjects:series, nil];
    _option = option;
    [_echartsView setOption:_option];

    _timer = [NSTimer scheduledTimerWithTimeInterval:2 target:self selector:@selector(angularGauge1DemoTimerTicket) userInfo:nil repeats:YES];
}

- (void)angularGauge1DemoTimerTicket {
    PYGaugeSeries *series = _option.series[0];
    NSMutableDictionary *dataDic = [[NSMutableDictionary alloc] initWithDictionary:series.data[0]];
    float value = arc4random_uniform(10000)/100.0;
    dataDic[@"value"] = @(value);
    series.data = @[dataDic];
    _option.series = [[NSMutableArray alloc] initWithObjects:series, nil];
    [_echartsView refreshEchartsWithOption:_option];
}

- (void)showBasicAngularGauge2Demo {
    
}

- (void)showBasicAngularGauge3Demo {
    
}

- (void)showMultipleAngularGauges1Demo {
    
}

- (void)showMultipleAngularGauges2Demo {
    
}

- (void)showBasicAngularGauge4Demo {
    
}

@end
