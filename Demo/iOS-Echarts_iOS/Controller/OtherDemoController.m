//
//  OtherDemoController.m
//  iOS-Echarts
//
//  Created by Pluto Y on 16/4/15.
//  Copyright © 2016年 pluto-y. All rights reserved.
//

#import "OtherDemoController.h"
#import "PYLoadingOption.h"
#import "PYNoDataLoadingOption.h"
#import "MultiEchartsController.h"
#import "MultiEcharts2Controller.h"

static int effectIndex = 0;
static NSArray *effect;
@interface OtherDemoController () {
    NSTimer *loadingTimer;
}

@end

@implementation OtherDemoController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self initAll];
}

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    loadingTimer.fireDate = [NSDate dateWithTimeIntervalSinceNow:2];
    [self showLoadingDemo];
}

- (void)initAll {
    self.title = @"其他";
    effect = @[@"spin", @"bar", @"ring", @"whirling", @"dynamicLine", @"bubble"];
    loadingTimer = [NSTimer scheduledTimerWithTimeInterval:10 target:self selector:@selector(clearLoading) userInfo:nil repeats:YES];
    loadingTimer.fireDate = [NSDate distantFuture];
    [_yEchartsView loadEcharts];
}

- (IBAction)showOtherDemo:(id)sender {
    _yEchartsView.noDataLoadingOption = nil;
    UIButton *btn = (UIButton *)sender;
    switch (btn.tag) {
        case 90001:
            [_yEchartsView clearEcharts];
            loadingTimer.fireDate = [NSDate dateWithTimeIntervalSinceNow:2];
            [self showLoadingDemo];
            break;
        case 90002:
            [self showNoDataLoadingDemo];
            [_yEchartsView loadEcharts];
            break;
        case 90003: {
            MultiEchartsController *controller = [[MultiEchartsController alloc] init];
            [self.navigationController pushViewController:controller animated:YES];
            return;
        }
        case 90004: {
            __weak OtherDemoController *weakSelf = self;
            [_yEchartsView obtainEchartsImageWithType:PYEchartsViewImageTypePNG completed:[^(UIImage *image) {
                UIImageView *imgView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, weakSelf.yEchartsView.frame.size.width, weakSelf.yEchartsView.frame.size.height)];
                imgView.userInteractionEnabled = YES;
                imgView.image = image;
                UITapGestureRecognizer *tapRecognizer = [[UITapGestureRecognizer alloc] initWithTarget:imgView action:@selector(removeFromSuperview)];
                [imgView addGestureRecognizer:tapRecognizer];
                [weakSelf.view addSubview:imgView];
            } copy]];
            break;
        }
        case 90005: {
            MultiEcharts2Controller *controller = [[MultiEcharts2Controller alloc] init];
            [self.navigationController pushViewController:controller animated:YES];
            return;
        }
        default:
            break;
    }
}

- (void)clearLoading {
    [_yEchartsView hideLoading];
    [_yEchartsView loadEcharts];
    loadingTimer.fireDate = [NSDate distantFuture];
}

- (void)showLoadingDemo {
    effectIndex = (effectIndex + 1) % (int)effect.count;
    PYLoadingOption *loadingOption = [[PYLoadingOption alloc] init];
    loadingOption.text = effect[effectIndex];
    loadingOption.effect = effect[effectIndex];
    [_yEchartsView showLoading:loadingOption];
    NSString *basicColumnJson = @"{\"tooltip\":{\"trigger\":\"axis\"},\"toolbox\":{\"show\":true,\"feature\":{\"mark\":{\"show\":true},\"dataView\":{\"show\":true,\"readOnly\":false},\"magicType\":{\"show\":true,\"type\":[\"line\",\"bar\"]},\"restore\":{\"show\":true},\"saveAsImage\":{\"show\":true}}},\"legend\":{\"data\":[\"蒸发量\",\"降水量\"]},\"xAxis\":[{\"type\":\"category\",\"data\":[\"1月\",\"2月\",\"3月\",\"4月\",\"5月\",\"6月\",\"7月\",\"8月\",\"9月\",\"10月\",\"11月\",\"12月\"]}],\"yAxis\":[{\"type\":\"value\"}],\"series\":[{\"name\":\"蒸发量\",\"type\":\"bar\",\"data\":[2,4.9,7,23.2,25.6,76.7,135.6,162.2,32.6,20,6.4,3.3]},{\"name\":\"降水量\",\"type\":\"bar\",\"data\":[2.6,5.9,9,26.4,28.7,70.7,175.6,182.2,48.7,18.8,6,2.3]}]}";
    NSData *jsonData = [basicColumnJson dataUsingEncoding:NSUTF8StringEncoding];
    NSDictionary *jsonDic = [NSJSONSerialization JSONObjectWithData:jsonData options:NSJSONReadingAllowFragments error:nil];
    PYOption *option = [RMMapper objectWithClass:[PYOption class] fromDictionary:jsonDic];
    [_yEchartsView setOption:option];
}

- (void)showNoDataLoadingDemo {
    PYNoDataLoadingOption *noDataLoadingOption = [[PYNoDataLoadingOption alloc] init];
    noDataLoadingOption.text = @"暂无数据......Pluto Y";
    noDataLoadingOption.effect = @"whirling";
    _yEchartsView.noDataLoadingOption = noDataLoadingOption;
    PYOption *option = [[PYOption alloc] init];
    option.legend = [[PYLegend alloc] init];
    option.legend.data = @[@"高度(km)与气温(°C)变化关系"];
    PYGrid *grid = [[PYGrid alloc] init];
    grid.x = @(40);
    grid.x2 = @(50);
    option.grid = grid;
    option.toolbox = [[PYToolbox alloc] init];
    option.toolbox.show = YES;
    option.toolbox.feature = [[PYToolboxFeature alloc] init];
    option.toolbox.feature.mark = [[PYToolboxFeatureMark alloc] init];
    option.toolbox.feature.mark.show = YES;
    option.toolbox.feature.dataView = [[PYToolboxFeatureDataView alloc] init];
    option.toolbox.feature.dataView.show = YES;
    option.toolbox.feature.dataView.readOnly = NO;
    option.toolbox.feature.magicType = [[PYToolboxFeatureMagicType alloc] init];
    option.toolbox.feature.magicType.show = YES;
    option.toolbox.feature.magicType.type = @[@"line", @"bar"];
    option.toolbox.feature.restore = [[PYToolboxFeatureRestore alloc] init];
    option.toolbox.feature.restore.show = YES;
    option.calculable = YES;
    option.tooltip = [[PYTooltip alloc] init];
    option.tooltip.trigger = @"axis";
    option.tooltip.formatter = @"Temperature : <br/>{b}km : {c}°C";
    PYAxis *xAxis = [[PYAxis alloc] init];
    xAxis.type = @"value";
    xAxis.axisLabel = [[PYAxisLabel alloc] init];
    xAxis.axisLabel.formatter = @"{value} °C";
    option.xAxis = [[NSMutableArray alloc] initWithObjects:xAxis, nil];
    PYAxis *yAxis = [[PYAxis alloc] init];
    yAxis.type = @"category";
    yAxis.axisLine = [[PYAxisLine alloc] init];
    yAxis.axisLine.onZero = NO;
    yAxis.boundaryGap = @(NO);
    yAxis.data = [[NSMutableArray alloc] initWithArray:@[@"0", @"10", @"20", @"30", @"40", @"50", @"60", @"70", @"80"]];
    option.yAxis = [[NSMutableArray alloc] initWithObjects:yAxis, nil];
    NSMutableArray *serieses = [[NSMutableArray alloc] init];
    PYCartesianSeries *series1 = [[PYCartesianSeries alloc] init];
    series1.name = @"高度(km)与气温(°C)变化关系";
    series1.type = @"line";
    series1.smooth = YES;
    series1.itemStyle = [[PYItemStyle alloc] init];
    series1.itemStyle.normal = [[PYItemStyleProp alloc] init];
    series1.itemStyle.normal.lineStyle = [[PYLineStyle alloc] init];
    series1.itemStyle.normal.lineStyle.shadowColor = PYRGBA(0, 0, 0, .4);
    series1.data = @[];//@[@(15),@(-50),@(-56.5f),@(-46.5),@(-22.1),@(-2.5),@(-27.7),@(-55.7), @(-76.5)];
    [serieses addObject:series1];
    [option setSeries:serieses];
    [_yEchartsView setOption:option];
}

@end
