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
    PYOption *option = [[PYOption alloc] init];
    option.color = @[@"#FBB367",@"#80B1D2",@"#FB8070",@"#CC99FF",@"#B0D961",
                     @"#99CCCC",@"#BEBBD8",@"#FFCC99",@"#8DD3C8",@"#FF9999",
                     @"#CCEAC4",@"#BB81BC",@"#FBCCEC",@"#CCFF66",@"#99CC66",
                     @"#66CC66",@"#FF6666",@"#FFED6F",@"#ff7f50",@"#87cefa",];
    option.title = [[PYTitle alloc] init];
    option.title.text = @"中东关系的敌友关系";
    option.title.subtext = @"数据来自财新网";
    option.title.sublink = @"http://international.caixin.com/2013-09-06/100579154.html";
    option.title.x = @"right";
    option.title.y = @"bottom";
    
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
    
    option.tooltip = [[PYTooltip alloc] init];
    option.tooltip.trigger = PYTooltipTriggerItem;
    option.tooltip.formatter = @"(function (params) {if (params.name && params.name.indexOf(\'-\') != -1) {return params.name.replace(\'-\", \' \' + params.seriesName + \' \');}else {return params.name ? params.name : params.data.id;}})";
    option.legend = [[PYLegend alloc] init];
    option.legend.data = @[@"美国", @"叙利亚反对派", @"阿萨德", @"伊朗", @"塞西", @"哈马斯", @"以色列", @"穆斯林兄弟会", @"基地组织", @"俄罗斯", @"黎巴嫩什叶派", @"土耳其", @"卡塔尔", @"沙特", @"黎巴嫩逊尼派", @"", @"支持", @"反对", @"未表态"];
    option.legend.orient = @"vertical";
    option.legend.x = @"left";
    PYChordSeries *series1 = [[PYChordSeries alloc] init];
    series1.name = @"支持";
    series1.type = PYSeriesTypeChord;
    series1.showScaleText = NO;
    series1.clockWise = NO;
    series1.data = @[@{@"name":@"美国"}, @{@"name":@"叙利亚反对派"}, @{@"name":@"阿萨德"}, @{@"name":@"伊朗"}, @{@"name":@"塞西"}, @{@"name":@"哈马斯"}, @{@"name":@"以色列"}, @{@"name":@"穆斯林兄弟会"}, @{@"name":@"基地组织"}, @{@"name":@"俄罗斯"}, @{@"name":@"黎巴嫩什叶派"}, @{@"name":@"土耳其"}, @{@"name":@"卡塔尔"}, @{@"name":@"沙特"}, @{@"name":@"黎巴嫩逊尼派"}];
    series1.matrix = @[@[@0,@100,@0,@0,@0,@0,@100,@0,@0,@0,@0,@0,@0,@0,@0],
                       @[@10,@0,@0,@0,@0,@10,@10,@0,@10,@0,@0,@10,@10,@10,@10],
                       @[@0,@0,@0,@10,@0,@0,@0,@0,@0,@10,@10,@0,@0,@0,@0],
                       @[@0,@0,@100,@0,@0,@100,@0,@0,@0,@0,@100,@0,@0,@0,@0],
                       @[@0,@0,@0,@0,@0,@0,@0,@0,@0,@0,@0,@0,@0,@10,@0],
                       @[@0,@100,@0,@10,@0,@0,@0,@0,@0,@0,@0,@0,@10,@0,@0],
                       @[@10,@100,@0,@0,@0,@0,@0,@0,@0,@0,@0,@0,@0,@0,@0],
                       @[@0,@0,@0,@0,@0,@0,@0,@0,@0,@0,@0,@10,@10,@0,@0],
                       @[@0,@100,@0,@0,@0,@0,@0,@0,@0,@0,@0,@0,@0,@0,@0],
                       @[@0,@0,@100,@0,@0,@0,@0,@0,@0,@0,@0,@0,@0,@0,@0],
                       @[@0,@0,@100,@10,@0,@0,@0,@0,@0,@0,@0,@0,@0,@0,@0],
                       @[@0,@100,@0,@0,@0,@0,@0,@100,@0,@0,@0,@0,@0,@0,@0],
                       @[@0,@100,@0,@0,@0,@100,@0,@100,@0,@0,@0,@0,@0,@0,@0],
                       @[@0,@100,@0,@0,@100,@0,@0,@0,@0,@0,@0,@0,@0,@0,@100],
                       @[@0,@100,@0,@0,@0,@0,@0,@0,@0,@0,@0,@0,@0,@10,@0]];
    
    PYChordSeries *series2 = [[PYChordSeries alloc] init];
    series2.name = @"反对";
    series2.type = PYSeriesTypeChord;
    series2.insertToSerie = @"支持";
    series2.data = @[@{@"name":@"美国"}, @{@"name":@"叙利亚反对派"}, @{@"name":@"阿萨德"}, @{@"name":@"伊朗"}, @{@"name":@"塞西"}, @{@"name":@"哈马斯"}, @{@"name":@"以色列"}, @{@"name":@"穆斯林兄弟会"}, @{@"name":@"基地组织"}, @{@"name":@"俄罗斯"}, @{@"name":@"黎巴嫩什叶派"}, @{@"name":@"土耳其"}, @{@"name":@"卡塔尔"}, @{@"name":@"沙特"}, @{@"name":@"黎巴嫩逊尼派"}];
    series2.matrix = @[@[@0,@0,@100,@100,@0,@100,@0,@0,@100,@0,@0,@0,@0,@0,@0],
                       @[@0,@0,@0,@10,@0,@0,@0,@0,@0,@10,@10,@0,@0,@0,@0],
                       @[@10,@0,@0,@0,@0,@0,@10,@10,@10,@0,@0,@10,@10,@0,@10],
                       @[@10,@100,@0,@0,@0,@0,@0,@0,@0,@0,@0,@0,@0,@0,@0],
                       @[@0,@0,@0,@0,@0,@10,@0,@100,@0,@0,@0,@10,@0,@0,@0],
                       @[@10,@0,@0,@0,@100,@0,@10,@0,@0,@0,@0,@0,@0,@0,@0],
                       @[@0,@0,@100,@0,@0,@100,@0,@0,@0,@0,@0,@0,@0,@0,@0],
                       @[@0,@0,@100,@0,@10,@0,@0,@0,@0,@0,@0,@0,@0,@10,@0],
                       @[@10,@0,@100,@0,@0,@0,@0,@0,@0,@0,@0,@0,@0,@100,@0],
                       @[@0,@100,@0,@0,@0,@0,@0,@0,@0,@0,@0,@0,@0,@0,@0],
                       @[@0,@100,@0,@0,@0,@0,@0,@0,@0,@0,@0,@0,@0,@0,@0],
                       @[@0,@0,@100,@0,@100,@0,@0,@0,@0,@0,@0,@0,@0,@0,@0],
                       @[@0,@0,@100,@0,@100,@0,@0,@0,@0,@0,@0,@0,@0,@0,@0],
                       @[@0,@0,@0,@0,@0,@0,@0,@100,@10,@0,@0,@0,@0,@0,@0],
                       @[@0,@0,@100,@0,@0,@0,@0,@0,@0,@0,@0,@0,@0,@0,@0]];
    
    PYChordSeries *series3 = [[PYChordSeries alloc] init];
    series3.name = @"未表态";
    series3.type = PYSeriesTypeChord;
    series3.insertToSerie = @"支持";
    series3.data = @[@{@"name":@"美国"}, @{@"name":@"叙利亚反对派"}, @{@"name":@"阿萨德"}, @{@"name":@"伊朗"}, @{@"name":@"塞西"}, @{@"name":@"哈马斯"}, @{@"name":@"以色列"}, @{@"name":@"穆斯林兄弟会"}, @{@"name":@"基地组织"}, @{@"name":@"俄罗斯"}, @{@"name":@"黎巴嫩什叶派"}, @{@"name":@"土耳其"}, @{@"name":@"卡塔尔"}, @{@"name":@"沙特"}, @{@"name":@"黎巴嫩逊尼派"}];
    series3.matrix = @[
                       @[@0,@0,@0,@0,@100,@0,@0,@100,@0,@0,@0,@0,@0,@0,@0],
                       @[@0,@0,@0,@0,@0,@0,@0,@0,@0,@0,@0,@0,@0,@0,@0],
                       @[@0,@0,@0,@0,@0,@0,@0,@0,@0,@0,@0,@0,@0,@0,@0],
                       @[@0,@0,@0,@0,@0,@0,@0,@0,@0,@0,@0,@0,@0,@0,@0],
                       @[@10,@0,@0,@0,@0,@0,@0,@0,@0,@0,@0,@0,@0,@0,@0],
                       @[@0,@0,@0,@0,@0,@0,@0,@0,@0,@0,@0,@0,@0,@0,@0],
                       @[@0,@0,@0,@0,@0,@0,@0,@0,@0,@0,@0,@0,@0,@0,@0],
                       @[@10,@0,@0,@0,@0,@0,@0,@0,@0,@0,@0,@0,@0,@0,@0],
                       @[@0,@0,@0,@0,@0,@0,@0,@0,@0,@0,@0,@0,@0,@0,@0],
                       @[@0,@0,@0,@0,@0,@0,@0,@0,@0,@0,@0,@0,@0,@0,@0],
                       @[@0,@0,@0,@0,@0,@0,@0,@0,@0,@0,@0,@0,@0,@0,@0],
                       @[@0,@0,@0,@0,@0,@0,@0,@0,@0,@0,@0,@0,@0,@0,@0],
                       @[@0,@0,@0,@0,@0,@0,@0,@0,@0,@0,@0,@0,@0,@0,@0],
                       @[@0,@0,@0,@0,@0,@0,@0,@0,@0,@0,@0,@0,@0,@0,@0],
                       @[@0,@0,@0,@0,@0,@0,@0,@0,@0,@0,@0,@0,@0,@0,@0]
                       ];
    option.series = [[NSMutableArray alloc] initWithArray:@[series1, series2, series3]];
    
    [_echartsView setOption:option];
}

- (void)showBasicChordDemo2 {
    PYOption *option = [[PYOption alloc] init];
    option.title = [[PYTitle alloc] init];
    option.title.text = @"德国队效力联盟";
    option.title.x = @"right";
    option.title.y = @"bottom";
    option.tooltip = [[PYTooltip alloc] init];
    option.tooltip.trigger = PYTooltipTriggerItem;
    option.tooltip.formatter = @"(function (params) {if (params.indicator2) {return params.indicator2 + \' \' + params.name + \' \' + params.indicator;} else {return params.name}})";
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
    option.legend.data = @[@"阿森纳", @"拜仁慕尼黑", @"多特蒙德"];
    
    PYChordSeries *series = [[PYChordSeries alloc] init];
    series.type = PYSeriesTypeChord;
    series.sort = PYSortAscending;
    series.sortSub = PYSortDescending;
    series.showScale = NO;
    series.itemStyle = [[PYItemStyle alloc] init];
    series.itemStyle.normal = [[PYItemStyleProp alloc] init];
    series.itemStyle.normal.label = [[PYLabel alloc] init];
    series.itemStyle.normal.label.rotate = YES;
    series.nodes = [[NSMutableArray alloc] initWithArray:@[
                     @{@"name":@"默特萨克"},
                     @{@"name":@"厄齐尔"},
                     @{@"name":@"波多尔斯基"},
                     @{@"name":@"诺伊尔"},
                     @{@"name":@"博阿滕"},
                     @{@"name":@"施魏因施泰格"},
                     @{@"name":@"拉姆"},
                     @{@"name":@"克罗斯"},
                     @{@"name":@"穆勒"},
                     @{@"name":@"格策"},
                     @{@"name":@"胡梅尔斯"},
                     @{@"name":@"魏登费勒"},
                     @{@"name":@"杜尔姆"},
                     @{@"name":@"格罗斯克罗伊茨"},
                     @{@"name":@"阿森纳"},
                     @{@"name":@"拜仁慕尼黑"},
                     @{@"name":@"多特蒙德"}
                     ]];
    
    series.links = [[NSMutableArray alloc] initWithArray:@[
                     @{@"source":@"阿森纳", @"target":@"默特萨克", @"weight": @0.9, @"name":@"效力"},
                     @{@"source":@"阿森纳", @"target":@"厄齐尔", @"weight": @0.9, @"name":@"效力"},
                     @{@"source":@"阿森纳", @"target":@"波多尔斯基", @"weight": @0.9, @"name":@"效力"},
                     @{@"source":@"拜仁慕尼黑", @"target":@"诺伊尔", @"weight": @0.9, @"name":@"效力"},
                     @{@"source":@"拜仁慕尼黑", @"target":@"博阿滕", @"weight": @0.9, @"name":@"效力"},
                     @{@"source":@"拜仁慕尼黑", @"target":@"施魏因施泰格", @"weight": @0.9, @"name":@"效力"},
                     @{@"source":@"拜仁慕尼黑", @"target":@"拉姆", @"weight": @0.9, @"name":@"效力"},
                     @{@"source":@"拜仁慕尼黑", @"target":@"克罗斯", @"weight": @0.9, @"name":@"效力"},
                     @{@"source":@"拜仁慕尼黑", @"target":@"穆勒", @"weight": @0.9, @"name":@"效力"},
                     @{@"source":@"拜仁慕尼黑", @"target":@"格策", @"weight": @0.9, @"name":@"效力"},
                     @{@"source":@"多特蒙德", @"target":@"胡梅尔斯", @"weight": @0.9, @"name":@"效力"},
                     @{@"source":@"多特蒙德", @"target":@"魏登费勒", @"weight": @0.9, @"name":@"效力"},
                     @{@"source":@"多特蒙德", @"target":@"杜尔姆", @"weight": @0.9, @"name":@"效力"},
                     @{@"source":@"多特蒙德", @"target":@"格罗斯克罗伊茨", @"weight": @0.9, @"name":@"效力"},
                     
                     // Ribbon Type 的和弦图每一对节点之间必须是双向边
                     @{@"target":@"阿森纳", @"source":@"默特萨克", @"weight": @1},
                     @{@"target":@"阿森纳", @"source":@"厄齐尔", @"weight": @1},
                     @{@"target":@"阿森纳", @"source":@"波多尔斯基", @"weight": @1},
                     @{@"target":@"拜仁慕尼黑", @"source":@"诺伊尔", @"weight": @1},
                     @{@"target":@"拜仁慕尼黑", @"source":@"博阿滕", @"weight": @1},
                     @{@"target":@"拜仁慕尼黑", @"source":@"施魏因施泰格", @"weight": @1},
                     @{@"target":@"拜仁慕尼黑", @"source":@"拉姆", @"weight": @1},
                     @{@"target":@"拜仁慕尼黑", @"source":@"克罗斯", @"weight": @1},
                     @{@"target":@"拜仁慕尼黑", @"source":@"穆勒", @"weight": @1},
                     @{@"target":@"拜仁慕尼黑", @"source":@"格策", @"weight": @1},
                     @{@"target":@"多特蒙德", @"source":@"胡梅尔斯", @"weight": @1},
                     @{@"target":@"多特蒙德", @"source":@"魏登费勒", @"weight": @1},
                     @{@"target":@"多特蒙德", @"source":@"杜尔姆", @"weight": @1},
                     @{@"target":@"多特蒙德", @"source":@"格罗斯克罗伊茨", @"weight": @1}
                     ]];
    option.series = [[NSMutableArray alloc] initWithArray:@[series]];
    
    [_echartsView setOption:option];
}

- (void)showNonRibbonChordDemo {
    PYOption *option = [[PYOption alloc] init];
    option.title = [[PYTitle alloc] init];
    option.title.text = @"德国队效力联盟";
    option.title.x = @"right";
    option.title.y = @"bottom";
    option.tooltip = [[PYTooltip alloc] init];
    option.tooltip.trigger = PYTooltipTriggerItem;
    option.tooltip.formatter = @"(function (params) {if (params.indicator2) {return params.indicator2 + \' \' + params.name + \' \' + params.indicator;} else {return params.name}})";
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
    option.legend.data = @[@"阿森纳", @"拜仁慕尼黑", @"多特蒙德"];
    
    PYChordSeries *series = [[PYChordSeries alloc] init];
    series.name = @"德国队效力联盟";
    series.type = PYSeriesTypeChord;
    series.sort = PYSortAscending;
    series.sortSub = PYSortDescending;
    series.ribbonType = NO;
    series.radius = @"60%";
    series.itemStyle = [[PYItemStyle alloc] init];
    series.itemStyle.normal = [[PYItemStyleProp alloc] init];
    series.itemStyle.normal.label = [[PYLabel alloc] init];
    series.itemStyle.normal.label.rotate = YES;
    series.minRadius = @7;
    series.maxRadius = @20;
    series.nodes = [[NSMutableArray alloc] initWithArray:@[
                     @{@"name":@"默特萨克"},
                     @{@"name":@"厄齐尔"},
                     @{@"name":@"波多尔斯基"},
                     @{@"name":@"诺伊尔"},
                     @{@"name":@"博阿滕"},
                     @{@"name":@"施魏因施泰格"},
                     @{@"name":@"拉姆"},
                     @{@"name":@"克罗斯"},
                     @{@"name":@"穆勒"},
                     @{@"name":@"格策"},
                     @{@"name":@"胡梅尔斯"},
                     @{@"name":@"魏登费勒"},
                     @{@"name":@"杜尔姆"},
                     @{@"name":@"格罗斯克罗伊茨"},
                     @{@"name":@"阿森纳"},
                     @{@"name":@"拜仁慕尼黑"},
                     @{@"name":@"多特蒙德"}
                     ]];
    
    series.links = [[NSMutableArray alloc] initWithArray:@[
                     @{@"target":@"阿森纳", @"source":@"默特萨克", @"weight": @1},
                     @{@"target":@"阿森纳", @"source":@"厄齐尔", @"weight": @1},
                     @{@"target":@"阿森纳", @"source":@"波多尔斯基", @"weight": @1},
                     @{@"target":@"拜仁慕尼黑", @"source":@"诺伊尔", @"weight": @1},
                     @{@"target":@"拜仁慕尼黑", @"source":@"博阿滕", @"weight": @1},
                     @{@"target":@"拜仁慕尼黑", @"source":@"施魏因施泰格", @"weight": @1},
                     @{@"target":@"拜仁慕尼黑", @"source":@"拉姆", @"weight": @1},
                     @{@"target":@"拜仁慕尼黑", @"source":@"克罗斯", @"weight": @1},
                     @{@"target":@"拜仁慕尼黑", @"source":@"穆勒", @"weight": @1},
                     @{@"target":@"拜仁慕尼黑", @"source":@"格策", @"weight": @1},
                     @{@"target":@"多特蒙德", @"source":@"胡梅尔斯", @"weight": @1},
                     @{@"target":@"多特蒙德", @"source":@"魏登费勒", @"weight": @1},
                     @{@"target":@"多特蒙德", @"source":@"杜尔姆", @"weight": @1},
                     @{@"target":@"多特蒙德", @"source":@"格罗斯克罗伊茨", @"weight": @1}
                     ]];
    option.series = [[NSMutableArray alloc] initWithArray:@[series]];
    
    [_echartsView setOption:option];
}

- (void) showComplexTopologyDemo {
    
}

- (void)showChord {
    
}

@end
