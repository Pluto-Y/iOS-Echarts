//
//  TreeDemoController.m
//  iOS-Echarts
//
//  Created by Pluto Y on 8/27/16.
//  Copyright © 2016 pluto-y. All rights reserved.
//

#import "TreeDemoController.h"

typedef NS_ENUM(NSInteger, TreeDemoTypeTag) {
    TreeDemoTypeTagTree1 = 40001,
    TreeDemoTypeTagTree2 = 40002,
    TreeDemoTypeTagTree3 = 40003
};

@interface TreeDemoController ()

@property (weak, nonatomic) IBOutlet PYEchartsView *echartsView;

@end

@implementation TreeDemoController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self initAll];
}

- (void) initAll {
    self.title = @"树图";
    [self showTreeDemo1];
    [_echartsView loadEcharts];
}

- (IBAction)demoBtnClick:(id)sender {
    UIButton *btn = (UIButton *)sender;
    switch (btn.tag) {
        case TreeDemoTypeTagTree1:
            [self showTreeDemo1];
            break;
        case TreeDemoTypeTagTree2:
            [self showTreeDemo2];
            break;
        case TreeDemoTypeTagTree3:
            [self showTreeDemo3];
            break;
    }
    [_echartsView loadEcharts];
}

- (void)showTreeDemo1 {
    PYOption *option = [[PYOption alloc] init];
    option.title = [[PYTitle alloc] init];
    option.title.text = @"树图";
    option.title.subtext = @"虚构数据";
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
    
    PYTreeSeries *series = [[PYTreeSeries alloc] init];
    series.name = @"树图";
    series.type = PYSeriesTypeTree;
    series.orient = @"vertical";
    series.rootLocation = @{@"x":@"center", @"y":@50};
    series.nodePadding = @1;
    series.itemStyle = [[PYItemStyle alloc] init];
    series.itemStyle.normal = [[PYItemStyleProp alloc] init];
    series.itemStyle.normal.label = [[PYLabel alloc] init];
    series.itemStyle.normal.label.show = NO;
    series.itemStyle.normal.label.formatter = @"{b}";
    series.itemStyle.normal.lineStyle = [[PYLineStyle alloc] init];
    series.itemStyle.normal.lineStyle.color = [PYColor colorWithHexString:@"#48b"];
    series.itemStyle.normal.lineStyle.shadowColor = [PYColor colorWithHexString:@"#000"];
    series.itemStyle.normal.lineStyle.shadowBlur = @3;
    series.itemStyle.normal.lineStyle.shadowOffsetX = @3;
    series.itemStyle.normal.lineStyle.shadowOffsetY = @5;
    series.itemStyle.normal.lineStyle.type = PYLinkStyleTypeCurve;
    series.itemStyle.emphasis = [[PYItemStyleProp alloc] init];
    series.itemStyle.emphasis.label = [[PYLabel alloc] init];
    series.itemStyle.emphasis.label.show = YES;
    NSDictionary *dataDic = @{@"name":@"根节点", @"value":@6, @"children":@[@{@"name":@"节点1", @"value":@4, @"children":@[@{@"name":@"叶子节点1", @"value":@4}, @{@"name":@"叶子节点2", @"value":@4}, @{@"name":@"叶子节点3", @"value":@2}, @{@"name":@"叶子节点4", @"value":@2}, @{@"name":@"叶子节点5", @"value":@2}, @{@"name":@"叶子节点6", @"value":@4}]}, @{@"name":@"节点2", @"value":@4, @"children":@[@{@"name":@"叶子节点7", @"value":@4}, @{@"name":@"叶子节点8", @"value":@4}]}, @{@"name":@"节点3", @"value":@1, @"children":@[@{@"name":@"叶子节点9", @"value":@4}, @{@"name":@"叶子节点10", @"value":@4}, @{@"name":@"叶子节点11", @"value":@2}, @{@"name":@"叶子节点12", @"value":@2}]}]};
    series.data = @[dataDic];
    
    option.series = [[NSMutableArray alloc] initWithArray:@[series]];
    
    [_echartsView setOption:option];
}

- (void)showTreeDemo2 {
    
}

- (void)showTreeDemo3 {
    
}

@end
