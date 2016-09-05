//
//  PYPieDemoOptions.m
//  iOS-Echarts
//
//  Created by lizhi on 16/9/5.
//  Copyright © 2016年 pluto-y. All rights reserved.
//

#import "PYPieDemoOptions.h"

@implementation PYPieDemoOptions

/**  标准饼图 */
+ (PYOption *)standardPieOption{
    return [PYOption initPYOptionWithBlock:^(PYOption *option) {
        option.titleEqual([PYTitle initPYTitleWithBlock:^(PYTitle *title) {
            title.textEqual(@"某站点用户访问来源")
            .subtextEqual(@"纯属虚构")
            .xEqual(PYPositionCenter);
        }])
        .tooltipEqual([PYTooltip initPYTooltipWithBlock:^(PYTooltip *tooltip) {
            tooltip.triggerEqual(PYTooltipTriggerItem)
            .formatterEqual(@"{a} <br/>{b} : {c} ({d}%)");
        }])
        .legendEqual([PYLegend initPYLegendWithBlock:^(PYLegend *legend) {
            legend.orientEqual(PYOrientVertical)
            .xEqual(PYPositionLeft)
            .dataEqual(@[@"邮件营销",@"联盟广告",@"视频广告",@"直接访问",@"搜索引擎"]);
        }])
        .toolboxEqual([PYToolbox initPYToolboxWithBlock:^(PYToolbox *toolbox) {
            toolbox.showEqual(YES)
            .featureEqual([PYToolboxFeature initPYToolboxFeatureWithBlock:^(PYToolboxFeature *feature) {
                feature.markEqual([PYToolboxFeatureMark initPYToolboxFeatureMarkWithBlock:^(PYToolboxFeatureMark *mark) {
                    mark.showEqual(YES);
                }])
                .dataViewEqual([PYToolboxFeatureDataView initPYToolboxFeatureDataViewWithBlock:^(PYToolboxFeatureDataView *dataView) {
                    dataView.showEqual(YES).readOnlyEqual(NO);
                }])
                .magicTypeEqual([PYToolboxFeatureMagicType initPYToolboxFeatureMagicTypeWithBlock:^(PYToolboxFeatureMagicType *magicType) {
                    magicType.showEqual(YES).typeEqual(@[PYSeriesTypePie, PYSeriesTypeFunnel]).optionEqual(@{@"funnel":@{@"x":@"25%",@"width":@"50%",@"funnelAlign":PYPositionLeft,@"max":@(1548)}});
                    
                }])
                .restoreEqual([PYToolboxFeatureRestore initPYToolboxFeatureRestoreWithBlock:^(PYToolboxFeatureRestore *restore) {
                    restore.showEqual(YES);
                }]);
            }]);
        }])
        .addSeries([PYPieSeries initPYPieSeriesWithBlock:^(PYPieSeries *series) {
            series.radiusEqual(@"55%")
            .centerEqual(@[@"50%",@"60%"])
            .nameEqual(@"访问来源")
            .typeEqual(PYSeriesTypePie)
            .dataEqual(@[@{@"value":@(335),@"name":@"直接访问"},@{@"value":@(310),@"name":@"邮件营销"},@{@"value":@(234),@"name":@"联盟广告"},@{@"value":@(135),@"name":@"视频广告"},@{@"value":@(1548),@"name":@"搜索引擎"}]);
        }]);
    }];
}

/**  标准环形饼图 */
+ (PYOption *)doughnutPieOption{
    return [PYOption initPYOptionWithBlock:^(PYOption *option) {
        option.tooltipEqual([PYTooltip initPYTooltipWithBlock:^(PYTooltip *tooltip) {
            tooltip.triggerEqual(PYTooltipTriggerItem)
            .formatterEqual(@"{a} <br/>{b} : {c} ({d}%)");
        }])
        .legendEqual([PYLegend initPYLegendWithBlock:^(PYLegend *legend) {
            legend.orientEqual(PYOrientVertical)
            .xEqual(PYPositionLeft)
            .dataEqual(@[@"邮件营销",@"联盟广告",@"视频广告",@"直接访问",@"搜索引擎"]);
        }])
        .toolboxEqual([PYToolbox initPYToolboxWithBlock:^(PYToolbox *toolbox) {
            toolbox.showEqual(YES)
            .featureEqual([PYToolboxFeature initPYToolboxFeatureWithBlock:^(PYToolboxFeature *feature) {
                feature.markEqual([PYToolboxFeatureMark initPYToolboxFeatureMarkWithBlock:^(PYToolboxFeatureMark *mark) {
                    mark.showEqual(YES);
                }])
                .dataViewEqual([PYToolboxFeatureDataView initPYToolboxFeatureDataViewWithBlock:^(PYToolboxFeatureDataView *dataView) {
                    dataView.showEqual(YES).readOnlyEqual(NO);
                }])
                .magicTypeEqual([PYToolboxFeatureMagicType initPYToolboxFeatureMagicTypeWithBlock:^(PYToolboxFeatureMagicType *magicType) {
                    magicType.showEqual(YES).typeEqual(@[PYSeriesTypePie, PYSeriesTypeFunnel]).optionEqual(@{@"funnel":@{@"x":@"25%",@"width":@"50%",@"funnelAlign":PYPositionCenter,@"max":@(1548)}});
                    
                }])
                .restoreEqual([PYToolboxFeatureRestore initPYToolboxFeatureRestoreWithBlock:^(PYToolboxFeatureRestore *restore) {
                    restore.showEqual(YES);
                }]);
            }]);
        }])
        .calculableEqual(YES)
        .addSeries([PYPieSeries initPYPieSeriesWithBlock:^(PYPieSeries *series) {
            series.radiusEqual(@[@"50%",@"70%"])
            .nameEqual(@"访问来源")
            .typeEqual(PYSeriesTypePie)
            .dataEqual(@[@{@"value":@(335),@"name":@"直接访问"},@{@"value":@(310),@"name":@"邮件营销"},@{@"value":@(234),@"name":@"联盟广告"},@{@"value":@(135),@"name":@"视频广告"},@{@"value":@(1548),@"name":@"搜索引擎"}])
            .itemStyleEqual([PYItemStyle initPYItemStyleWithBlock:^(PYItemStyle *itemStyle) {
                itemStyle.normalEqual([PYItemStyleProp initPYItemStylePropWithBlock:^(PYItemStyleProp *itemStyleProp){
                    itemStyleProp.labelEqual([PYLabel initPYLabelWithBlock:^(PYLabel *label) {
                        label.showEqual(NO);
                    }])
                    .labelLineEqual([PYLabelLine initPYLabelLineWithBlock:^(PYLabelLine *labelLine) {
                        labelLine.showEqual(NO);
                    }]);
                }])
                .emphasisEqual([PYItemStyleProp initPYItemStylePropWithBlock:^(PYItemStyleProp *itemStyleProp){
                    itemStyleProp.labelEqual([PYLabel initPYLabelWithBlock:^(PYLabel *label) {
                        label.showEqual(YES).positionEqual(PYPositionCenter)
                        .textStyleEqual([PYTextStyle initPYTextStyleWithBlock:^(PYTextStyle *textStyle) {
                            textStyle.fontSizeEqual(@30)
                            .fontWeightEqual(PYTextStyleFontWeightBold);
                        }]);
                    }]);
                }]);
        }]);
        }]);
    }];

}

/**  嵌套饼图 */
+ (PYOption *)nestedPieOption{

    return [PYOption initPYOptionWithBlock:^(PYOption *option) {
        option.tooltipEqual([PYTooltip initPYTooltipWithBlock:^(PYTooltip *tooltip) {
            tooltip.triggerEqual(PYTooltipTriggerItem)
            .formatterEqual(@"{a} <br/>{b} : {c} ({d}%)");
        }])
        .legendEqual([PYLegend initPYLegendWithBlock:^(PYLegend *legend) {
            legend.orientEqual(PYOrientVertical)
            .xEqual(PYPositionLeft)
            .dataEqual(@[@"直达",@"营销广告",@"百度",@"谷歌",@"必应",@"其他",@"邮件营销",@"联盟广告",@"视频广告",@"直接访问",@"搜索引擎"]);
        }])
        .toolboxEqual([PYToolbox initPYToolboxWithBlock:^(PYToolbox *toolbox) {
            toolbox.showEqual(YES)
            .featureEqual([PYToolboxFeature initPYToolboxFeatureWithBlock:^(PYToolboxFeature *feature) {
                feature.markEqual([PYToolboxFeatureMark initPYToolboxFeatureMarkWithBlock:^(PYToolboxFeatureMark *mark) {
                    mark.showEqual(YES);
                }])
                .dataViewEqual([PYToolboxFeatureDataView initPYToolboxFeatureDataViewWithBlock:^(PYToolboxFeatureDataView *dataView) {
                    dataView.showEqual(YES).readOnlyEqual(NO);
                }])
                .magicTypeEqual([PYToolboxFeatureMagicType initPYToolboxFeatureMagicTypeWithBlock:^(PYToolboxFeatureMagicType *magicType) {
                    magicType.showEqual(YES).typeEqual(@[PYSeriesTypePie, PYSeriesTypeFunnel]);
                    
                }])
                .restoreEqual([PYToolboxFeatureRestore initPYToolboxFeatureRestoreWithBlock:^(PYToolboxFeatureRestore *restore) {
                    restore.showEqual(YES);
                }]);
            }]);
        }])
        .calculableEqual(YES)
        .addSeries([PYPieSeries initPYPieSeriesWithBlock:^(PYPieSeries *series) {
            series.selectedModeEqual(@"single")
            .radiusEqual(@[@"0",@(30)])
            .nameEqual(@"访问来源")
            .typeEqual(PYSeriesTypePie)
            .dataEqual(@[@{@"value":@(335),@"name":@"直达"},@{@"value":@(679),@"name":@"营销广告"},@{@"value":@(1548),@"name":@"搜索引擎",@"selected":@"true"}])
            .itemStyleEqual([PYItemStyle initPYItemStyleWithBlock:^(PYItemStyle *itemStyle) {
                itemStyle.normalEqual([PYItemStyleProp initPYItemStylePropWithBlock:^(PYItemStyleProp *itemStyleProp){
                    itemStyleProp.labelEqual([PYLabel initPYLabelWithBlock:^(PYLabel *label) {
                        label.positionEqual(@"inner");
                    }])
                    .labelLineEqual([PYLabelLine initPYLabelLineWithBlock:^(PYLabelLine *labelLine) {
                        labelLine.showEqual(NO);
                    }]);
                }]);
            }]);
        }])
        .addSeries([PYPieSeries initPYPieSeriesWithBlock:^(PYPieSeries *series) {
            series.radiusEqual(@[@(40),@(60)])
            .nameEqual(@"访问来源")
            .typeEqual(PYSeriesTypePie)
            .dataEqual(@[@{@"value":@(335),@"name":@"直达"},@{@"value":@(310),@"name":@"邮件营销"},@{@"value":@(234),@"name":@"联盟广告"},@{@"value":@(135),@"name":@"视频广告"},@{@"value":@(1048),@"name":@"百度"},@{@"value":@(1048),@"name":@"谷歌"},@{@"value":@(1048),@"name":@"必应"},@{@"value":@(1048),@"name":@"其它"}]);
        }]);
    }];
    
}

/**  南丁格尔玫瑰图 */
+ (PYOption *)nightingalesRoseDiagramPieOption{
    return [PYOption initPYOptionWithBlock:^(PYOption *option) {
        option.titleEqual([PYTitle initPYTitleWithBlock:^(PYTitle *title) {
            title.textEqual(@"南丁格尔玫瑰图")
            .subtextEqual(@"纯属虚构")
            .xEqual(PYPositionCenter);
        }])
        .tooltipEqual([PYTooltip initPYTooltipWithBlock:^(PYTooltip *tooltip) {
            tooltip.triggerEqual(PYTooltipTriggerItem)
            .formatterEqual(@"{a} <br/>{b} : {c} ({d}%)");
        }])
        .legendEqual([PYLegend initPYLegendWithBlock:^(PYLegend *legend) {
            legend.yEqual(PYPositionBottom)
            .xEqual(PYPositionCenter)
            .dataEqual(@[@"rose1",@"rose2",@"rose3",@"rose4",@"rose5",@"rose6",@"rose7",@"rose8"]);
        }])
        .toolboxEqual([PYToolbox initPYToolboxWithBlock:^(PYToolbox *toolbox) {
            toolbox.showEqual(YES)
            .featureEqual([PYToolboxFeature initPYToolboxFeatureWithBlock:^(PYToolboxFeature *feature) {
                feature.markEqual([PYToolboxFeatureMark initPYToolboxFeatureMarkWithBlock:^(PYToolboxFeatureMark *mark) {
                    mark.showEqual(YES);
                }])
                .dataViewEqual([PYToolboxFeatureDataView initPYToolboxFeatureDataViewWithBlock:^(PYToolboxFeatureDataView *dataView) {
                    dataView.showEqual(YES).readOnlyEqual(NO);
                }])
                .magicTypeEqual([PYToolboxFeatureMagicType initPYToolboxFeatureMagicTypeWithBlock:^(PYToolboxFeatureMagicType *magicType) {
                    magicType.showEqual(YES).typeEqual(@[PYSeriesTypePie, PYSeriesTypeFunnel]);
                    
                }])
                .restoreEqual([PYToolboxFeatureRestore initPYToolboxFeatureRestoreWithBlock:^(PYToolboxFeatureRestore *restore) {
                    restore.showEqual(YES);
                }]);
            }]);
        }])
        .calculableEqual(YES)
        .addSeries([PYPieSeries initPYPieSeriesWithBlock:^(PYPieSeries *series) {
            series.roseTypeEqual(PYPieSeriesRoseTypeRadius)
            .radiusEqual(@[@(10),@(40)])
            .centerEqual(@[@"25%",@(100)])
            .nameEqual(@"半径模式")
            .typeEqual(PYSeriesTypePie)
            .itemStyleEqual([PYItemStyle initPYItemStyleWithBlock:^(PYItemStyle *itemStyle) {
                itemStyle.normalEqual([PYItemStyleProp initPYItemStylePropWithBlock:^(PYItemStyleProp *itemStyleProp){
                    itemStyleProp.labelEqual([PYLabel initPYLabelWithBlock:^(PYLabel *label) {
                        label.showEqual(NO);
                    }])
                    .labelLineEqual([PYLabelLine initPYLabelLineWithBlock:^(PYLabelLine *labelLine) {
                        labelLine.showEqual(NO);
                    }]);
                }])
                .emphasisEqual([PYItemStyleProp initPYItemStylePropWithBlock:^(PYItemStyleProp *itemStyleProp){
                    itemStyleProp.labelEqual([PYLabel initPYLabelWithBlock:^(PYLabel *label) {
                        label.showEqual(YES).positionEqual(PYPositionCenter)
                        .textStyleEqual([PYTextStyle initPYTextStyleWithBlock:^(PYTextStyle *textStyle) {
                            textStyle.fontSizeEqual(@30)
                            .fontWeightEqual(PYTextStyleFontWeightBold);
                        }]);
                    }]);
                }]);
            }])
            .dataEqual(@[@{@"value":@(10),@"name":@"rose1"},@{@"value":@(5),@"name":@"rose2"},@{@"value":@(15),@"name":@"rose3"},@{@"value":@(25),@"name":@"rose4"},@{@"value":@(20),@"name":@"rose5"},@{@"value":@(35),@"name":@"rose6"},@{@"value":@(30),@"name":@"rose7"},@{@"value":@(40),@"name":@"rose8"}]);
        }])
        .addSeries([PYPieSeries initPYPieSeriesWithBlock:^(PYPieSeries *series) {
            series.roseTypeEqual(PYPieSeriesRoseTypeArea)
            .radiusEqual(@[@(10),@(40)])
            .centerEqual(@[@"75%",@(100)])
            .nameEqual(@"面积模式")
            .typeEqual(PYSeriesTypePie)
            .dataEqual(@[@{@"value":@(10),@"name":@"rose1"},@{@"value":@(5),@"name":@"rose2"},@{@"value":@(15),@"name":@"rose3"},@{@"value":@(25),@"name":@"rose4"},@{@"value":@(20),@"name":@"rose5"},@{@"value":@(35),@"name":@"rose6"},@{@"value":@(30),@"name":@"rose7"},@{@"value":@(40),@"name":@"rose8"}]);
        }]);
    }];
}

/**  环形图2 */
+ (PYOption *)doughnut3PieOption{

    return nil;
}

/**  时间轴饼图 */
+ (PYOption *)timelinePieOption{

    return nil;
}

/**  饼图 */
+ (PYOption *)pieDemoOption{
    return [PYOption initPYOptionWithBlock:^(PYOption *option) {
        option.tooltipEqual([PYTooltip initPYTooltipWithBlock:^(PYTooltip *tooltip) {
            tooltip.showEqual(YES)
            .formatterEqual(@"{a} <br/>{b} : {c} ({d}%)");
        }])
        .legendEqual([PYLegend initPYLegendWithBlock:^(PYLegend *legend) {
            legend.orientEqual(PYOrientVertical)
            .xEqual(PYPositionLeft)
            .dataEqual(@[@"直达",@"营销广告",@"百度",@"谷歌",@"必应",@"其他",@"邮件营销",@"联盟广告",@"视频广告",@"直接访问",@"搜索引擎"]);
        }])
        .toolboxEqual([PYToolbox initPYToolboxWithBlock:^(PYToolbox *toolbox) {
            toolbox.showEqual(YES)
            .featureEqual([PYToolboxFeature initPYToolboxFeatureWithBlock:^(PYToolboxFeature *feature) {
                feature.markEqual([PYToolboxFeatureMark initPYToolboxFeatureMarkWithBlock:^(PYToolboxFeatureMark *mark) {
                    mark.showEqual(YES);
                }])
                .dataViewEqual([PYToolboxFeatureDataView initPYToolboxFeatureDataViewWithBlock:^(PYToolboxFeatureDataView *dataView) {
                    dataView.showEqual(YES).readOnlyEqual(NO);
                }])
                .magicTypeEqual([PYToolboxFeatureMagicType initPYToolboxFeatureMagicTypeWithBlock:^(PYToolboxFeatureMagicType *magicType) {
                    magicType.showEqual(YES).typeEqual(@[PYSeriesTypePie, PYSeriesTypeFunnel]);
                    
                }])
                .restoreEqual([PYToolboxFeatureRestore initPYToolboxFeatureRestoreWithBlock:^(PYToolboxFeatureRestore *restore) {
                    restore.showEqual(YES);
                }]);
            }]);
        }])
        .calculableEqual(YES)
        .addSeries([PYPieSeries initPYPieSeriesWithBlock:^(PYPieSeries *series) {
            series.centerEqual(@[@"35%",@(100)])
            .radiusEqual(@(15))
            .nameEqual(@"访问来源")
            .typeEqual(PYSeriesTypePie)
            .dataEqual(@[@{@"value":@(335),@"name":@"直达"},@{@"value":@(679),@"name":@"营销广告"},@{@"value":@(1548),@"name":@"搜索引擎"}])
            .itemStyleEqual([PYItemStyle initPYItemStyleWithBlock:^(PYItemStyle *itemStyle) {
                itemStyle.normalEqual([PYItemStyleProp initPYItemStylePropWithBlock:^(PYItemStyleProp *itemStyleProp){
                    itemStyleProp.labelEqual([PYLabel initPYLabelWithBlock:^(PYLabel *label) {
                        label.positionEqual(@"inner")
                        .formatterEqual(@"(function (params) {return (params.percent - 0).toFixed(0) + \'%\'})");
                    }])
                    .labelLineEqual([PYLabelLine initPYLabelLineWithBlock:^(PYLabelLine *labelLine) {
                        labelLine.showEqual(NO);
                    }]);
                }])
                .emphasisEqual([PYItemStyleProp initPYItemStylePropWithBlock:^(PYItemStyleProp *itemStyleProp){
                    itemStyleProp.labelEqual([PYLabel initPYLabelWithBlock:^(PYLabel *label) {
                        label.showEqual(YES).formatterEqual(@"{b}\n{d}%");
                    }]);
                }]);
            }]);

        }])
        .addSeries([PYPieSeries initPYPieSeriesWithBlock:^(PYPieSeries *series) {
            series.centerEqual(@[@"35%",@(100)])
            .radiusEqual(@[@(30),@(50)])
            .nameEqual(@"访问来源")
            .typeEqual(PYSeriesTypePie)
            .dataEqual(@[@{@"value":@(335),@"name":@"直达"},@{@"value":@(310),@"name":@"营销广告"},@{@"value":@(234),@"name":@"联盟广告"},@{@"value":@(135),@"name":@"视频广告"},@{@"value":@(1048),@"name":@"百度",@"itemStyle":@{@"normal":@{@"color":@"(function (){var zrColor = require(\'zrender/tool/color\');return zrColor.getRadialGradient(300, 200, 110, 300, 200, 140,[[0, \'rgba(255,255,0,1)\'],[1, \'rgba(30,144,250,1)\']])})()",@"label":@{@"textStyle":@{@"color":@"rgba(30,144,255,0.8)",@"align":@"center",@"baseline":@"middle",@"fontFamily":@"微软雅黑",@"fontSize":@(30),@"fpntWeight":@"bolder"}}}}},@{@"value":@(251),@"name":@"谷歌"},@{@"value":@(102),@"name":@"必应"},@{@"value":@(147),@"name":@"其它"}]);
        }])
        .addSeries([PYPieSeries initPYPieSeriesWithBlock:^(PYPieSeries *series) {
            series.centerEqual(@[@"75%",@(100)])
            .clockWiseEqual(YES)
            .startAngleEqual(@(135))
            .radiusEqual(@[@(30),@(50)])
            .nameEqual(@"访问来源")
            .typeEqual(PYSeriesTypePie)
            .itemStyleEqual([PYItemStyle initPYItemStyleWithBlock:^(PYItemStyle *itemStyle) {
                itemStyle.normalEqual([PYItemStyleProp initPYItemStylePropWithBlock:^(PYItemStyleProp *itemStyleProp){
                    itemStyleProp.labelEqual([PYLabel initPYLabelWithBlock:^(PYLabel *label) {
                        label.showEqual(NO);
                    }])
                    .labelLineEqual([PYLabelLine initPYLabelLineWithBlock:^(PYLabelLine *labelLine) {
                        labelLine.showEqual(NO);
                    }]);
                }])
                .emphasisEqual([PYItemStyleProp initPYItemStylePropWithBlock:^(PYItemStyleProp *itemStyleProp){
                    itemStyleProp.colorEqual(@"(function (){var zrColor = require(\'zrender/tool/color\');return zrColor.getRadialGradient(650, 200, 80, 650, 200, 120,[[0, \'rgba(255,255,0,1)\'],[1, \'rgba(255,0,0,1)\']])})()")
                    .labelEqual([PYLabel initPYLabelWithBlock:^(PYLabel *label) {
                        label.showEqual(YES).positionEqual(PYPositionCenter)
                        .formatterEqual(@"{d}%")
                        .textStyleEqual([PYTextStyle initPYTextStyleWithBlock:^(PYTextStyle *textStyle) {
                            textStyle.colorEqual(@"red")
                            .fontSizeEqual(@30)
                            .fontFamilyEqual(@"微软雅黑")
                            .fontWeightEqual(PYTextStyleFontWeightBold);
                        }]);
                    }]);
                }]);
            }])
            .markPointEqual([PYMarkPoint initPYMarkPointWithBlock:^(PYMarkPoint *point) {
                point.symbolEqual(PYSymbolStar5)
                .addDataArr(@[@{@"name":@"最大",@"value":@(1548),@"x":@"80%",@"y":@(40),@"symbolSize":@(14)}]);
            }])
            .dataEqual(@[@{@"value":@(335),@"name":@"直达"},@{@"value":@(310),@"name":@"营销广告"},@{@"value":@(234),@"name":@"联盟广告"},@{@"value":@(135),@"name":@"视频广告"},@{@"value":@(1548),@"name":@"搜索引擎"}]);
        }]);
    }];

}

/**  千层饼图 */
+ (PYOption *)multilayerPieOption{
    return nil;
}

@end
