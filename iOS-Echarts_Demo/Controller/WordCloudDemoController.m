//
//  WordCloudDemoController.m
//  iOS-Echarts
//
//  Created by Pluto Y on 8/10/16.
//  Copyright © 2016 pluto-y. All rights reserved.
//

#import "WordCloudDemoController.h"

@interface WordCloudDemoController ()

@property (weak, nonatomic) IBOutlet PYEchartsView *kEcharts;

@end

@implementation WordCloudDemoController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self initAll];
}

- (void)initAll {
    self.title = @"字符云";
    [self showWordCloudDemo];
    [_kEcharts loadEcharts];
}

- (void)showWordCloudDemo {
    PYOption *option = [[PYOption alloc] init];
    option.title = [[PYTitle alloc] init];
    option.title.text = @"Google Trends";
    option.title.link = @"http://www.google.com/trends/hottrends";
    option.tooltip = [[PYTooltip alloc] init];
    option.tooltip.show = YES;
    PYWordCloudSeries *series = [[PYWordCloudSeries alloc] init];
    series.name = @"Google Trends";
    series.type = PYSeriesTypeWordCloud;
    series.size = @[@"80%", @"80%"];
    series.textRotation = @[@0, @45, @90, @(-45)];
    series.textPadding = @0;
    series.autoSize = @{@"enable":@YES, @"minSize":@14};
    series.data = @[@{@"name":@"Sam S Club", @"value":@10000, @"itemStyle":@{@"normal":@{@"color":@"black"}}}, @{@"name":@"Macys", @"value":@6181, @"itemStyle":[self createRandomItemStyle]}, @{@"name":@"Amy Schumer", @"value":@4386, @"itemStyle":[self createRandomItemStyle]}, @{@"name":@"Jurassic World", @"value":@4055, @"itemStyle":[self createRandomItemStyle]}, @{@"name":@"Charter Communications", @"value":@2467, @"itemStyle":[self createRandomItemStyle]}, @{@"name":@"Chick Fil A", @"value":@2244, @"itemStyle":[self createRandomItemStyle]}, @{@"name":@"Planet Fitness", @"value":@1898, @"itemStyle":[self createRandomItemStyle]}, @{@"name":@"Pitch Perfect", @"value":@1484, @"itemStyle":[self createRandomItemStyle]}, @{@"name":@"Express", @"value":@1112, @"itemStyle":[self createRandomItemStyle]}, @{@"name":@"Home", @"value":@965, @"itemStyle":[self createRandomItemStyle]}, @{@"name":@"Johnny Depp", @"value":@847, @"itemStyle":[self createRandomItemStyle]}, @{@"name":@"Lena Dunham", @"value":@582, @"itemStyle":[self createRandomItemStyle]}, @{@"name":@"Lewis Hamilton", @"value":@555, @"itemStyle":[self createRandomItemStyle]}, @{@"name":@"KXAN", @"value":@550, @"itemStyle":[self createRandomItemStyle]}, @{@"name":@"Mary Ellen Mark", @"value":@462, @"itemStyle":[self createRandomItemStyle]}, @{@"name":@"Farrah Abraham", @"value":@366, @"itemStyle":[self createRandomItemStyle]}, @{@"name":@"Rita Ora", @"value":@360, @"itemStyle":[self createRandomItemStyle]}, @{@"name":@"Serena Williams", @"value":@282, @"itemStyle":[self createRandomItemStyle]}, @{@"name":@"NCAA baseball tournament", @"value":@273, @"itemStyle":[self createRandomItemStyle]}, @{@"name":@"Point Break", @"value":@265, @"itemStyle":[self createRandomItemStyle]}];
    option.series = [[NSMutableArray alloc] initWithArray:@[series]];
    [_kEcharts setOption:option];
}

-(NSDictionary *)createRandomItemStyle {
    return @{@"normal":@{@"color":PYRGBA((arc4random() % 256)*160.0/256, (arc4random() % 256)*160.0/256, (arc4random() % 256)*160.0/256, 1.0)}};
}

@end
