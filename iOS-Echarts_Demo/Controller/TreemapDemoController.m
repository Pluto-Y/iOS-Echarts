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
    PYOption *option = [[PYOption alloc] init];
    option.title = [[PYTitle alloc] init];
    option.title.text = @"手机占有率";
    option.title.subtext = @"数据下钻例子，虚构数据";
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
    series.name = @"手机占有率";
    series.type = PYSeriesTypeTreemap;
    series.itemStyle = [[PYItemStyle alloc] init];
    PYItemStyleProp *normal = [[PYItemStyleProp alloc] init];
    normal.label = [[PYLabel alloc] init];
    normal.label.show = YES;
    normal.label.formatter = @"{b}";
    normal.borderWidth = @1;
    normal.borderColor = PYRGBA(12, 12, 12, 1);
    series.itemStyle.normal = normal;
    PYItemStyleProp *emphasis = [[PYItemStyleProp alloc] init];
    emphasis.label = [[PYLabel alloc] init];
    emphasis.label.show = YES;
    emphasis.color = [PYColor colorWithHexString:@"#cc99cc"];
    emphasis.borderWidth = @3;
    emphasis.borderColor = [PYColor colorWithHexString:@"#996699"];
    series.itemStyle.emphasis = emphasis;
    NSDictionary *data1 = @{@"name":@"三星", @"itemStyle":@{@"normal":@{@"color":@"#99cccc"}}, @"value":@6, @"children":@[@{@"name":@"Galaxy S4", @"value":@2}, @{@"name":@"Galaxy S5", @"value":@3}, @{@"name":@"Galaxy S6", @"value":@3}, @{@"name":@"Galaxy Tab", @"value":@1}]};
    NSDictionary *data2 = @{@"name":@"小米", @"itemStyle":@{@"normal":@{@"color":@"#99ccff"}}, @"value":@4, @"children":@[@{@"name":@"小米3", @"value":@6}, @{@"name":@"小米4", @"value":@6}, @{@"name":@"红米", @"value":@4}]};
    NSDictionary *data3 = @{@"name":@"苹果", @"itemStyle":@{@"normal":@{@"color":@"#9999cc"}}, @"value":@4, @"children":@[@{@"name":@"iPhone 5s", @"value":@6}, @{@"name":@"iPhone 6", @"value":@3}, @{@"name":@"iPhone 6+", @"value":@3}]};
    NSDictionary *data4 = @{@"name":@"魅族", @"itemStyle":@{@"normal":@{@"color":@"#ccff99"}}, @"value":@1, @"children":@[@{@"name":@"MX4", @"itemStyle":@{@"normal":@{@"color":@"#ccccff"}}, @"value":@6}, @{@"name":@"MX3", @"itemStyle":@{@"normal":@{@"color":@"#99ccff"}}, @"value":@6}, @{@"name":@"魅蓝note", @"itemStyle":@{@"normal":@{@"color":@"#9999cc"}}, @"value":@4}, @{@"name":@"MX4 pro", @"itemStyle":@{@"normal":@{@"color":@"#99cccc"}}, @"value":@3}]};
    NSDictionary *data5 = @{@"name":@"华为", @"itemStyle":@{@"normal":@{@"color":@"#ccffcc"}}, @"value":@2};
    NSDictionary *data6 = @{@"name":@"联想", @"itemStyle":@{@"normal":@{@"color":@"#ccccff"}}, @"value":@2};
    NSDictionary *data7 = @{@"name":@"中兴", @"itemStyle":@{@"normal":@{@"color":@"#ffffcc"}}, @"value":@1, @"children":@[@{@"name":@"V5", @"value":@16}, @{@"name":@"努比亚", @"value":@6}, @{@"name":@"功能机", @"value":@4}, @{@"name":@"青漾", @"value":@4}, @{@"name":@"星星", @"value":@4}, @{@"name":@"儿童机", @"value":@1}]};
    series.data = [[NSMutableArray alloc] initWithArray:@[data1, data2, data3, data4, data5, data6, data7]];
    option.series = [[NSMutableArray alloc] initWithObjects:series, nil];
    [_echartsView setOption:option];
}

- (void)showTreemapDemo3 {
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
    PYTreeMapSeries *series = [[PYTreeMapSeries alloc] init];
    series.name = @"矩形图";
    series.type = PYSeriesTypeTreemap;
    series.itemStyle = [[PYItemStyle alloc] init];
    PYItemStyleProp *normal = [[PYItemStyleProp alloc] init];
    normal.label = [[PYLabel alloc] init];
    normal.label.show = YES;
    normal.label.formatter = @"{b}: {c}";
    normal.label.textStyle = [[PYTextStyle alloc] init];
    normal.label.textStyle.color = [PYColor colorWithHexString:@"#00ffdd"];
    normal.label.textStyle.fontFamily = @"Times New Roman\",Georgia,Serif";
    normal.label.textStyle.fontSize = @20;
    normal.label.textStyle.fontStyle = @"italic";
    normal.label.textStyle.fontWeight = PYTextStyleFontWeightBolder;
    normal.borderWidth = @1;
    normal.borderColor = PYRGBA(0, 0, 0, 1.0);
    series.itemStyle.normal = normal;
    PYItemStyleProp *emphasis = [[PYItemStyleProp alloc] init];
    emphasis.label = [[PYLabel alloc] init];
    emphasis.label.show = YES;
    emphasis.label.textStyle = [[PYTextStyle alloc] init];
    emphasis.label.textStyle.color = [PYColor colorWithHexString:@"#0000ff"];
    emphasis.label.textStyle.fontFamily = @"Times New Roman\",Georgia,Serif";
    emphasis.label.textStyle.fontSize = @18;
    emphasis.label.textStyle.fontStyle = @"normal";
    emphasis.label.textStyle.fontWeight = PYTextStyleFontWeightBold;
    emphasis.color = [PYColor colorWithHexString:@"#cc99cc"];
    emphasis.borderWidth = @3;
    emphasis.borderColor = [PYColor colorWithHexString:@"#996699"];
    series.itemStyle.emphasis = emphasis;//
    NSDictionary *data1 = @{@"name":@"三星", @"value":@6, @"itemStyle":@{@"normal":@{@"label":@{@"show":@YES, @"formatter":@"{b}最多", @"x":@60, @"y":@65, @"textStyle":@{@"color":@"#ccc", @"fontSize":@16}}, @"color":@"#ccff99", @"borderWidth":@1}, @"emphasis":@{@"label":@{@"show":@YES, @"formatter":@"{b}-{c}", @"x":@80, @"y":@85, @"textStyle":@{@"color":@"red", @"fontSize":@18}}, @"color":@"#cc9999", @"borderWidth":@3, @"borderColor":@"#999999"}}, @"children":@[@{@"name":@"S4", @"value":@6, @"children":@[@{@"name":@"2012", @"value":@6}, @{@"name":@"2013", @"value":@4}, @{@"name":@"2014", @"value":@3}]}, @{@"name":@"note 3", @"value":@6}, @{@"name":@"S5", @"value":@4}, @{@"name":@"S6", @"value":@3}]};
    NSDictionary *data2 = @{@"name":@"小米", @"value":@4, @"itemStyle":@{@"normal":@{@"color":@"#99ccff"}, @"emphasis":@{@"label":@{@"show":@NO}}}};
    NSDictionary *data3 = @{@"name":@"苹果", @"value":@4, @"itemStyle":@{@"normal":@{@"color":@"#9999cc"}}};
    NSDictionary *data4 = @{@"name":@"魅族", @"value":@3, @"itemStyle":@{@"normal":@{@"color":@"#99cccc"}}};
    NSDictionary *data5 = @{@"name":@"华为", @"value":@2, @"itemStyle":@{@"normal":@{@"color":@"#ccffcc"}}};
    NSDictionary *data6 = @{@"name":@"联想", @"value":@2, @"itemStyle":@{@"normal":@{@"color":@"#ccccff"}}};
    NSDictionary *data7 = @{@"name":@"中兴", @"value":@1, @"itemStyle":@{@"normal":@{@"label":@{@"show":@YES, @"formatter":@"{b}: {c}"}, @"borderWidth":@3}, @"emphasis":@{@"label":@{@"show":@YES}, @"color":@"#cc9999", @"borderWidth":@3, @"borderColor":@"#999999"}}};
    series.data = @[data1, data2, data3, data4, data5, data6, data7];
    option.series = [[NSMutableArray alloc] initWithObjects:series, nil];
    [_echartsView setOption:option];
}

@end
