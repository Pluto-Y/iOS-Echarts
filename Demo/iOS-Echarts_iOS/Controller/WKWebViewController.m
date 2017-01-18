//
//  WKWebViewController.m
//  iOS-Echarts
//
//  Created by Pluto-Y on 30/12/2016.
//  Copyright © 2016 pluto-y. All rights reserved.
//

#import "WKWebViewController.h"
#import "WKEchartsView.h"
#import "PYLineDemoOptions.h"

@interface WKWebViewController () {
    NSArray *_allSupportThemes;
    NSArray *_allSupportLoadingEffects;
    PYOption *option;
    NSTimer *loadingTimer;
}

@property (nonatomic, strong) WKEchartsView *echartsView;
@property (weak, nonatomic) IBOutlet UIImageView *imageView;

@end

@implementation WKWebViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    loadingTimer = [NSTimer scheduledTimerWithTimeInterval:10 target:self selector:@selector(clearLoading) userInfo:nil repeats:YES];
    loadingTimer.fireDate = [NSDate distantFuture];
}

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    
    _allSupportThemes = @[PYEchartThemeMacarons, PYEchartThemeInfographic, PYEchartThemeShine, PYEchartThemeDark, PYEchartThemeBlue, PYEchartThemeGreen, PYEchartThemeRed, PYEchartThemeGray, PYEchartThemeHelianthus, PYEchartThemeRoma, PYEchartThemeMint, PYEchartThemeMacarons2, PYEchartThemeSakura, PYEchartThemeDefault];
    _allSupportLoadingEffects = @[PYLoadingOptionEffectSpin, PYLoadingOptionEffectBar, PYLoadingOptionEffectRing, PYLoadingOptionEffectWhirling, PYLoadingOptionEffectDynamicLine, PYLoadingOptionEffectBubble];
    
    _echartsView = [[WKEchartsView alloc] initWithFrame:CGRectMake(0, self.view.bounds.size.height - 320, self.view.bounds.size.width, 300)];
    [self.view addSubview:_echartsView];
    [_echartsView addHandlerForAction:PYEchartActionClick withBlock:^(NSDictionary *params) {
        NSLog(@"The params from Echarts:\n%@", params);
    }];
    option = [PYLineDemoOptions standardLineOption];
    [_echartsView setOption:option];
    [_echartsView loadEcharts];
}

- (void)clearLoading {
    [_echartsView hideLoading];
    [_echartsView loadEcharts];
    loadingTimer.fireDate = [NSDate distantFuture];
}

- (IBAction)changeThemes:(id)sender {
    [_echartsView clearEcharts];
    int randomIndex = arc4random() % _allSupportThemes.count;
    PYEchartTheme theme = _allSupportThemes[randomIndex];
    [_echartsView setTheme:theme];
    [_echartsView setOption:option];
    [_echartsView refreshEcharts];
}

- (IBAction)changeDatas:(id)sender {
    NSArray *maxDatas = @[@(arc4random() % 10 + 10), @(arc4random() % 10 + 10), @(arc4random() % 10 + 10), @(arc4random() % 10 + 10), @(arc4random() % 10 + 10), @(arc4random() % 10 + 10), @(arc4random() % 10 + 10)];
    option.series[0].dataEqual(maxDatas);
    NSArray *minDatas = @[@(arc4random() % 10), @(arc4random() % 10), @(arc4random() % 10), @(arc4random() % 10), @(arc4random() % 10), @(arc4random() % 10), @(arc4random() % 10)];
    option.series[1].dataEqual(minDatas);
    [_echartsView refreshEchartsWithOption:option];
}

- (IBAction)obtainDumpscreen:(id)sender {
    __weak __typeof(self) weakSelf = self;
    [_echartsView obtainEchartsImageWithType:PYEchartsViewImageTypeJEPG completed:^(UIImage *image) {
        weakSelf.imageView.image = image;
    }];
}

- (IBAction)showLoadingOption:(id)sender {
    [_echartsView clearEcharts];
    loadingTimer.fireDate = [NSDate dateWithTimeIntervalSinceNow:2];
    int effectIndex = arc4random() % (int)_allSupportLoadingEffects.count;
    PYLoadingOption *loadingOption = [[PYLoadingOption alloc] init];
    loadingOption.text = _allSupportLoadingEffects[effectIndex];
    loadingOption.effect = _allSupportLoadingEffects[effectIndex];
    [_echartsView showLoading:loadingOption];
}

- (IBAction)showNoData:(id)sender {
    PYNoDataLoadingOption *noDataLoadingOption = [[PYNoDataLoadingOption alloc] init];
    noDataLoadingOption.text = @"暂无数据......Pluto Y";
    noDataLoadingOption.effect = @"whirling";
    _echartsView.noDataLoadingOption = noDataLoadingOption;
    PYOption *noDataOption = [[PYOption alloc] init];
    noDataOption.legend = [[PYLegend alloc] init];
    noDataOption.legend.data = @[@"高度(km)与气温(°C)变化关系"];
    PYGrid *grid = [[PYGrid alloc] init];
    grid.x = @(40);
    grid.x2 = @(50);
    noDataOption.grid = grid;
    noDataOption.toolbox = [[PYToolbox alloc] init];
    noDataOption.toolbox.show = YES;
    noDataOption.toolbox.feature = [[PYToolboxFeature alloc] init];
    noDataOption.toolbox.feature.mark = [[PYToolboxFeatureMark alloc] init];
    noDataOption.toolbox.feature.mark.show = YES;
    noDataOption.toolbox.feature.dataView = [[PYToolboxFeatureDataView alloc] init];
    noDataOption.toolbox.feature.dataView.show = YES;
    noDataOption.toolbox.feature.dataView.readOnly = NO;
    noDataOption.toolbox.feature.magicType = [[PYToolboxFeatureMagicType alloc] init];
    noDataOption.toolbox.feature.magicType.show = YES;
    noDataOption.toolbox.feature.magicType.type = @[@"line", @"bar"];
    noDataOption.toolbox.feature.restore = [[PYToolboxFeatureRestore alloc] init];
    noDataOption.toolbox.feature.restore.show = YES;
    noDataOption.calculable = YES;
    noDataOption.tooltip = [[PYTooltip alloc] init];
    noDataOption.tooltip.trigger = @"axis";
    noDataOption.tooltip.formatter = @"Temperature : <br/>{b}km : {c}°C";
    PYAxis *xAxis = [[PYAxis alloc] init];
    xAxis.type = @"value";
    xAxis.axisLabel = [[PYAxisLabel alloc] init];
    xAxis.axisLabel.formatter = @"{value} °C";
    noDataOption.xAxis = [[NSMutableArray alloc] initWithObjects:xAxis, nil];
    PYAxis *yAxis = [[PYAxis alloc] init];
    yAxis.type = @"category";
    yAxis.axisLine = [[PYAxisLine alloc] init];
    yAxis.axisLine.onZero = NO;
    yAxis.boundaryGap = @(NO);
    yAxis.data = [[NSMutableArray alloc] initWithArray:@[@"0", @"10", @"20", @"30", @"40", @"50", @"60", @"70", @"80"]];
    noDataOption.yAxis = [[NSMutableArray alloc] initWithObjects:yAxis, nil];
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
    [noDataOption setSeries:serieses];
    [_echartsView setOption:noDataOption];
    [_echartsView loadEcharts];
}


@end
