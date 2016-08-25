//
//  ChordDemoController.m
//  iOS-Echarts
//
//  Created by Pluto Y on 8/24/16.
//  Copyright © 2016 pluto-y. All rights reserved.
//

#import "ChordDemoController.h"

typedef NS_ENUM(NSInteger, ChordDemoTypeTag) {
    ChordDemoTypeTagBasicChord1        = 40001,
    ChordDemoTypeTagMultipleDimensions = 40002,
    ChordDemoTypeTagBasicChord2        = 40003,
    ChordDemoTypeTagNonRibbonChord     = 40004,
    ChordDemoTypeTagComplexTopology    = 40005,
    ChordDemoTypeTagChord              = 40006
};

@interface ChordDemoController ()

@property (weak, nonatomic) IBOutlet PYEchartsView *echartsView;

@end

@implementation ChordDemoController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self initAll];
}

- (void)initAll {
    self.title = @"和线图";
    [self showBasicChordDemo1];
    [_echartsView loadEcharts];
}

- (IBAction)demoBtnClick:(id)sender {
    UIButton *btn = (UIButton *)sender;
    switch (btn.tag) {
        case ChordDemoTypeTagBasicChord1:
            [self showBasicChordDemo1];
            break;
        case ChordDemoTypeTagMultipleDimensions:
            [self showMultipleDimesionsDemo];
            break;
        case ChordDemoTypeTagBasicChord2:
            [self showBasicChordDemo2];
            break;
        case ChordDemoTypeTagNonRibbonChord:
            [self showNonRibbonChordDemo];
            break;
        case ChordDemoTypeTagComplexTopology:
            [self showComplexTopologyDemo];
            break;
        case ChordDemoTypeTagChord:
            [self showChord];
            break;
    }
    [_echartsView loadEcharts];
}

- (void)showBasicChordDemo1 {
    PYOption *option = [[PYOption alloc] init];
    option.title = [[PYTitle alloc] init];
    option.title.text = @"测试数据";
    option.title.subtext = @"From d3.js";
    option.title.x = @"right";
    option.title.y = @"bottom";
    option.tooltip = [[PYTooltip alloc] init];
    option.tooltip.trigger = PYTooltipTriggerItem;
    option.tooltip.formatter = @"(function (params) {if (params.indicator2) { return params.value.weight;} else {return params.name}})";
    option.toolbox = [[PYToolbox alloc] init];
    option.toolbox.show = YES;
    option.toolbox.feature = [[PYToolboxFeature alloc] init];
    option.toolbox.feature.restore = [[PYToolboxFeatureRestore alloc] init];
    option.toolbox.feature.restore.show = YES;
    option.toolbox.feature.magicType = [[PYToolboxFeatureMagicType alloc] init];
    option.toolbox.feature.magicType.show = YES;
    option.toolbox.feature.magicType.type = @[PYSeriesTypeForce, PYSeriesTypeChord];
    option.toolbox.feature.restore = [[PYToolboxFeatureRestore alloc] init];
    option.toolbox.feature.restore.show = YES;
    
    option.legend = [[PYLegend alloc] init];
    option.legend.x = @"left";
    option.legend.data = @[@"group1", @"group2", @"group3", @"group4"];
    PYChordSeries *series = [[PYChordSeries alloc] init];
    series.type = PYSeriesTypeChord;
    series.sort = PYSortAscending;
    series.sortSub = PYSortDescending;
    series.showScale = YES;
    series.showScaleText = YES;
    series.data = @[@{@"name":@"group1"}, @{@"name":@"group2"}, @{@"name":@"group3"}, @{@"name":@"group4"},];
    series.itemStyle = [[PYItemStyle alloc] init];
    series.itemStyle.normal = [[PYItemStyleProp alloc] init];
    series.itemStyle.normal.label = [[PYLabel alloc] init];
    series.itemStyle.normal.label.show = NO;
    series.matrix = @[
                      @[@11975, @5871, @8916, @2868],
                      @[@1951, @10048, @2060, @6171],
                      @[@8010, @16145, @8090, @8045],
                      @[@1013, @990, @940, @6907]
                      ];
    
    option.series = [[NSMutableArray alloc] initWithArray:@[series]];
    
    [_echartsView setOption:option];
}

- (void)showMultipleDimesionsDemo {
    
}

- (void)showBasicChordDemo2 {
    
}

- (void)showNonRibbonChordDemo {
    
}

- (void) showComplexTopologyDemo {
    
}

- (void)showChord {
    
}

@end
