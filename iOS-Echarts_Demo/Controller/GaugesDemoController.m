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
    series.splitNumber = @10;
    series.axisLine = [[PYAxisLine alloc] init];
    series.axisLine.lineStyle = [[PYLineStyle alloc] init];
    series.axisLine.lineStyle.color = @[@[@0.2, [PYColor colorWithHexString:@"#228b22"], @[@0.8, [PYColor colorWithHexString:@"#48b"]], @[@1, [PYColor colorWithHexString:@"ff4500"]]]];
    series.axisLine.lineStyle.width = @8;
    
    series.axisTick = [[PYAxisTick alloc] init];
    series.axisTick.show = YES;
    series.axisTick.splitNumber = @10;
    series.axisTick.length = @12;
    series.axisTick.lineStyle = [[PYLineStyle alloc] init];
    series.axisTick.lineStyle.color = @"auto";
    series.axisTick.lineStyle.width = @1;
    series.axisTick.lineStyle.type = PYLineStyleTypeSolid;
    
    series.axisLabel = [[PYAxisLabel alloc] init];
    series.axisLabel.textStyle = [[PYTextStyle alloc] init];
    series.axisLabel.textStyle.color = @"auto";
    
    series.splitLine = [[PYGaugeSpliteLine alloc] init];
    series.splitLine.show = YES;
    series.splitLine.length = @20;
    series.splitLine.lineStyle = [[PYLineStyle alloc] init];
    series.splitLine.lineStyle.color = @"auto";
    
    series.title = [[PYGaugeTitle alloc] init];
    series.title.show = YES;
    series.title.offsetCenter = @[@0, @"-40%"];
    series.title.textStyle = [[PYTextStyle alloc] init];
    series.title.textStyle.fontWeight = PYTextStyleFontWeightBolder;
    
    
    series.detail = [[PYGaugeDetail alloc] init];
    series.detail.formatter = @"{value}%";
    series.detail.textStyle = [[PYTextStyle alloc] init];
    series.detail.textStyle.color = @"auto";
    series.detail.textStyle.fontWeight= PYTextStyleFontWeightBolder;
    
    series.data = @[@{@"value":@50, @"name":@"完成率"}];
    
    option.series = [[NSMutableArray alloc] initWithObjects:series, nil];
    _option = option;
    [_echartsView setOption:_option];
    
    _timer = [NSTimer scheduledTimerWithTimeInterval:2 target:self selector:@selector(angularGauge1DemoTimerTicket) userInfo:nil repeats:YES];
}

- (void)showBasicAngularGauge3Demo {
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
    series.startAngle = @180;
    series.endAngle = @0;
    series.center = @[@"50%", @"70%"];
    series.radius = @160;
    
    series.axisLine = [[PYAxisLine alloc] init];
    series.axisLine.lineStyle = [[PYLineStyle alloc] init];
    series.axisLine.lineStyle.width = @100;
    
    series.axisTick = [[PYAxisTick alloc] init];
    series.axisTick.splitNumber = @10;
    series.axisTick.length = @12;
    
    series.axisLabel = [[PYAxisLabel alloc] init];
    series.axisLabel.formatter = @"(function(v){\n                    switch (v+\'\'){\n                        case \'10\': return \'低\';\n                        case \'50\': return \'中\';\n                        case \'90\': return \'高\';\n                        default: return \'\';\n                    }\n                })";
    series.axisLabel.textStyle = [[PYTextStyle alloc] init];
    series.axisLabel.textStyle.color = [PYColor colorWithHexString:@"#fff"];
    series.axisLabel.textStyle.fontSize = @10;
    series.axisLabel.textStyle.fontWeight = PYTextStyleFontWeightBolder;
    
    series.pointer = @{@"width":@25, @"length":@"90%", @"color":@"rgba(255,255,255,0.8)"};
    series.title = [[PYGaugeTitle alloc] init];
    series.title.show = YES;
    series.title.offsetCenter = @[@0, @"-50%"];
    series.title.textStyle = [[PYTextStyle alloc] init];
    series.title.textStyle.color = [PYColor colorWithHexString:@"#fff"];
    series.title.textStyle.fontSize = @20;
    
    series.detail = [[PYGaugeDetail alloc] init];
    series.detail.show = YES;
    series.detail.backgroundColor = [PYColor colorWithHexString:@"#0000"];
    series.detail.borderWidth = @0;
    series.detail.borderColor = [PYColor colorWithHexString:@"#ccc"];
    series.detail.width = @75;
    series.detail.height = @40;
    series.detail.offsetCenter = @[@0, @(-20)];
    series.detail.formatter = @"{value}%";
    series.detail.textStyle = [[PYTextStyle alloc] init];
    series.detail.textStyle.fontSize = @20;
    
    series.data = @[@{@"value":@50, @"name":@"完成率"}];
    
    option.series = [[NSMutableArray alloc] initWithObjects:series, nil];
    _option = option;
    [_echartsView setOption:_option];
    
    _timer = [NSTimer scheduledTimerWithTimeInterval:2 target:self selector:@selector(angularGauge1DemoTimerTicket) userInfo:nil repeats:YES];
}

- (void)showMultipleAngularGauges1Demo {
    
}

- (void)showMultipleAngularGauges2Demo {
    
}

- (void)showBasicAngularGauge4Demo {
    
}

@end
