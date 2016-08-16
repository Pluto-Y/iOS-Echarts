//
//  TreemapDemoController.m
//  iOS-Echarts
//
//  Created by Pluto Y on 8/15/16.
//  Copyright © 2016 pluto-y. All rights reserved.
//

#import "TreemapDemoController.h"

typedef NS_ENUM(NSInteger, TreemapDemoTypeTag) {
    TreemapDemoTypeTagTreemap1    = 30001,
    TreemapDemoTypeTagTreemap2    = 30002,
    TreemapDemoTypeTagTreemap3    = 30003
};

@interface TreemapDemoController ()

@property (weak, nonatomic) IBOutlet PYEchartsView *echartsView;

@end

@implementation TreemapDemoController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self initAll];
}

- (void)initAll {
    self.title = @"矩形树图";
    [self showTreemapDemo1];
    [_echartsView loadEcharts];
}

- (IBAction)demoBtnClick:(id)sender {
    UIButton *btn = (UIButton *)sender;
    switch (btn.tag) {
        case TreemapDemoTypeTagTreemap1:
            [self showTreemapDemo1];
            break;
        case TreemapDemoTypeTagTreemap2:
            [self showTreemapDemo2];
            break;
        case TreemapDemoTypeTagTreemap3:
            [self showTreemapDemo3];
            break;
    }
    [_echartsView loadEcharts];
}

- (void)showTreemapDemo1 {
    PYOption *option = [[PYOption alloc] init];
    option.title = [[PYTitle alloc] init];
    option.title.text = @"手机占有率";
    option.title.subtext = @"虚构数据";
    option.tooltip = [[PYTooltip alloc] init];
    option.tooltip.trigger = PYTooltipTriggerItem;
    option.tooltip.formatter = @"{b}: {c}";
    option.toolbox = [[PYToolbox alloc] init];
    option.toolbox.show = YES;
    option.toolbox.feature = [[PYToolboxFeature alloc] init];
    option.toolbox.feature.mark = [[PYToolboxFeatureMark alloc] init];
    option.toolbox.feature.mark.show = YES;
    option.toolbox.feature.dataView = [[PYToolboxFeatureDataView alloc] init];
    option.toolbox.feature.dataView.show = YES;
    option.toolbox.feature.dataView.readOnly = NO;
    option.toolbox.feature.restore = [[PYToolboxFeatureRestore alloc] init];
    option.toolbox.feature.restore.show = YES;
    option.calculable = NO;
    PYTreeMapSeries *series = [[PYTreeMapSeries alloc] init];
    series.name = @"矩形图";
    series.type = PYSeriesTypeTreemap;
    series.itemStyle = [[PYItemStyle alloc] init];
    PYItemStyleProp *normal = [[PYItemStyleProp alloc] init];
    normal.label = [[PYLabel alloc] init];
    normal.label.show = YES;
    normal.label.formatter = @"{b}";
    normal.borderWidth = @1;
    series.itemStyle.normal = normal;
    PYItemStyleProp *emphasis = [[PYItemStyleProp alloc] init];
    emphasis.label = [[PYLabel alloc] init];
    emphasis.label.show = YES;
    series.itemStyle.emphasis = emphasis;
    series.data = @[@{@"name":@"三星", @"value":@6}, @{@"name":@"小米", @"value":@4}, @{@"name":@"苹果", @"value":@4}, @{@"name":@"华为", @"value":@2}, @{@"name":@"联想", @"value":@2}, @{@"name":@"魅族", @"value":@1}, @{@"name":@"中兴", @"value":@1}];
    option.series = [[NSMutableArray alloc] initWithArray:@[series]];
    [_echartsView setOption:option];
}

- (void)showTreemapDemo2 {
}

- (void)showTreemapDemo3 {
    PYOption *option = [[PYOption alloc] init];
    option.title = [[PYTitle alloc] init];
    [_echartsView setOption:option];
}

@end
