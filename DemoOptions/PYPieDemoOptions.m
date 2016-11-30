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
+ (PYOption *)doughnut2PieOption {
    NSArray *radius = @[@20, @35];
    return [PYOption initPYOptionWithBlock:^(PYOption *option) {
        option.legendEqual([PYLegend initPYLegendWithBlock:^(PYLegend *legend) {
            legend.xEqual(PYPositionCenter).yEqual(PYPositionCenter)
            .dataEqual(@[ @"GoogleMaps",@"Facebook",@"Youtube",@"Google+",@"Weixin",
                          @"Twitter", @"Skype", @"Messenger", @"Whatsapp", @"Instagram"]);
        }])
        .titleEqual([PYTitle initPYTitleWithBlock:^(PYTitle *title) {
            title.textEqual(@"The App World")
            .subtextEqual(@"from global web index")
            .xEqual(PYPositionCenter);
        }])
        .toolboxEqual([PYToolbox initPYToolboxWithBlock:^(PYToolbox *toolbox) {
            toolbox.showEqual(YES)
            .featureEqual([PYToolboxFeature initPYToolboxFeatureWithBlock:^(PYToolboxFeature *feature) {
                feature.dataViewEqual([PYToolboxFeatureDataView initPYToolboxFeatureDataViewWithBlock:^(PYToolboxFeatureDataView *dataView) {
                    dataView.showEqual(YES).readOnlyEqual(NO);
                }])
                .magicTypeEqual([PYToolboxFeatureMagicType initPYToolboxFeatureMagicTypeWithBlock:^(PYToolboxFeatureMagicType *magicType) {
                    magicType.showEqual(YES).typeEqual(@[PYSeriesTypePie, PYSeriesTypeFunnel]).optionEqual(@{@"funnel":@{@"x":@"20%",@"width":@"30%",@"itemStyle":@{@"normal":@{@"label":@{@"formatter":@"formatter : function (params){return \'other\\n\' + params.value + \'%\\n\'}",@"textStyle":@{@"baseline":@"middle"}}}}}});
                    
                }])
                .restoreEqual([PYToolboxFeatureRestore initPYToolboxFeatureRestoreWithBlock:^(PYToolboxFeatureRestore *restore) {
                    restore.showEqual(YES);
                }]);
            }]);
        }])
        .addSeries([PYPieSeries initPYPieSeriesWithBlock:^(PYPieSeries *series) {
            series.centerEqual(@[@"10%", @"30%"])
            .radiusEqual(radius)
            .typeEqual(PYSeriesTypePie)
            .itemStyleEqual([self createLabelFromatter])
            .addData(@{@"name":@"other", @"value":@46, @"itemStyle":[self createLabelBottom]})
            .addData(@{@"name":@"GoogleMaps", @"value":@54, @"itemStyle":[self createLabelTop]});
        }])
        .addSeries([PYPieSeries initPYPieSeriesWithBlock:^(PYPieSeries *series) {
            series.centerEqual(@[@"30%", @"30%"])
            .radiusEqual(radius)
            .typeEqual(PYSeriesTypePie)
            .itemStyleEqual([self createLabelFromatter])
            .addData(@{@"name":@"other", @"value":@56, @"itemStyle":[self createLabelBottom]})
            .addData(@{@"name":@"Facebook", @"value":@44, @"itemStyle":[self createLabelTop]});
        }])
        .addSeries([PYPieSeries initPYPieSeriesWithBlock:^(PYPieSeries *series) {
            series.centerEqual(@[@"50%", @"30%"])
            .radiusEqual(radius)
            .typeEqual(PYSeriesTypePie)
            .itemStyleEqual([self createLabelFromatter])
            .addData(@{@"name":@"other", @"value":@65, @"itemStyle":[self createLabelBottom]})
            .addData(@{@"name":@"Youtube", @"value":@35, @"itemStyle":[self createLabelTop]});
        }])
        .addSeries([PYPieSeries initPYPieSeriesWithBlock:^(PYPieSeries *series) {
            series.centerEqual(@[@"70%", @"30%"])
            .radiusEqual(radius)
            .typeEqual(PYSeriesTypePie)
            .itemStyleEqual([self createLabelFromatter])
            .addData(@{@"name":@"other", @"value":@70, @"itemStyle":[self createLabelBottom]})
            .addData(@{@"name":@"Google+", @"value":@30, @"itemStyle":[self createLabelTop]});
        }])
        .addSeries([PYPieSeries initPYPieSeriesWithBlock:^(PYPieSeries *series) {
            series.centerEqual(@[@"90%", @"30%"])
            .radiusEqual(radius)
            .typeEqual(PYSeriesTypePie)
            .itemStyleEqual([self createLabelFromatter])
            .addData(@{@"name":@"other", @"value":@73, @"itemStyle":[self createLabelBottom]})
            .addData(@{@"name":@"Weixin", @"value":@27, @"itemStyle":[self createLabelTop]});
        }])
        .addSeries([PYPieSeries initPYPieSeriesWithBlock:^(PYPieSeries *series) {
            series.centerEqual(@[@"10%", @"70%"])
            .radiusEqual(radius)
            .typeEqual(PYSeriesTypePie)
            .itemStyleEqual([self createLabelFromatter])
            .addData(@{@"name":@"other", @"value":@78, @"itemStyle":[self createLabelBottom]})
            .addData(@{@"name":@"Twitter", @"value":@22, @"itemStyle":[self createLabelTop]});
        }])
        .addSeries([PYPieSeries initPYPieSeriesWithBlock:^(PYPieSeries *series) {
            series.centerEqual(@[@"30%", @"70%"])
            .radiusEqual(radius)
            .typeEqual(PYSeriesTypePie)
            .itemStyleEqual([self createLabelFromatter])
            .addData(@{@"name":@"other", @"value":@78, @"itemStyle":[self createLabelBottom]})
            .addData(@{@"name":@"Skype", @"value":@22, @"itemStyle":[self createLabelTop]});
        }])
        .addSeries([PYPieSeries initPYPieSeriesWithBlock:^(PYPieSeries *series) {
            series.centerEqual(@[@"50%", @"70%"])
            .radiusEqual(radius)
            .typeEqual(PYSeriesTypePie)
            .itemStyleEqual([self createLabelFromatter])
            .addData(@{@"name":@"other", @"value":@78, @"itemStyle":[self createLabelBottom]})
            .addData(@{@"name":@"Messenger", @"value":@22, @"itemStyle":[self createLabelTop]});
        }])
        .addSeries([PYPieSeries initPYPieSeriesWithBlock:^(PYPieSeries *series) {
            series.centerEqual(@[@"70%", @"70%"])
            .radiusEqual(radius)
            .typeEqual(PYSeriesTypePie)
            .itemStyleEqual([self createLabelFromatter])
            .addData(@{@"name":@"other", @"value":@83, @"itemStyle":[self createLabelBottom]})
            .addData(@{@"name":@"Whatsapp", @"value":@17, @"itemStyle":[self createLabelTop]});
        }])
        .addSeries([PYPieSeries initPYPieSeriesWithBlock:^(PYPieSeries *series) {
            series.centerEqual(@[@"90%", @"70%"])
            .radiusEqual(radius)
            .typeEqual(PYSeriesTypePie)
            .itemStyleEqual([self createLabelFromatter])
            .addData(@{@"name":@"other", @"value":@89, @"itemStyle":[self createLabelBottom]})
            .addData(@{@"name":@"Instagram", @"value":@11, @"itemStyle":[self createLabelTop]});
        }]);
    }];
}

+ (PYItemStyle *)createLabelTop {
    return [PYItemStyle initPYItemStyleWithBlock:^(PYItemStyle *itemStyle) {
        itemStyle.normalEqual([PYItemStyleProp initPYItemStylePropWithBlock:^(PYItemStyleProp *normal) {
            normal.labelEqual([PYLabel initPYLabelWithBlock:^(PYLabel *label) {
                label.showEqual(YES)
                .positionEqual(PYPositionCenter)
                .formatterEqual(@"{b}")
                .textStyleEqual([PYTextStyle initPYTextStyleWithBlock:^(PYTextStyle *textStyle) {
                    textStyle.baseLineEqual(PYPositionBottom)
                    .fontSizeEqual(@6);
                }]);
            }])
            .labelLineEqual([PYLabelLine initPYLabelLineWithBlock:^(PYLabelLine *labelLine) {
                labelLine.showEqual(NO);
            }]);
        }]);
    }];
}

+ (PYItemStyle *)createLabelFromatter {
    return [PYItemStyle initPYItemStyleWithBlock:^(PYItemStyle *itemStyle) {
        itemStyle.normalEqual([PYItemStyleProp initPYItemStylePropWithBlock:^(PYItemStyleProp *normal) {
            normal.labelEqual([PYLabel initPYLabelWithBlock:^(PYLabel *label) {
                label.formatterEqual(@"(function (params){return 100 - params.value + '%'})")
                .positionEqual(PYPositionCenter)
                .textStyleEqual([PYTextStyle initPYTextStyleWithBlock:^(PYTextStyle *textStyle) {
                    textStyle.baseLineEqual(PYPositionTop)
                    .fontSizeEqual(@6);
                }]);
            }]);
        }]);
    }];
}

+ (PYItemStyle *)createLabelBottom {
    return [PYItemStyle initPYItemStyleWithBlock:^(PYItemStyle *itemStyle) {
        itemStyle.normalEqual([PYItemStyleProp initPYItemStylePropWithBlock:^(PYItemStyleProp *normal) {
            normal.colorEqual([PYColor colorWithHexString:@"#ccc"])
            .labelEqual([PYLabel initPYLabelWithBlock:^(PYLabel *label) {
                label.showEqual(YES)
                .positionEqual(PYPositionCenter);
            }])
            .labelLineEqual([PYLabelLine initPYLabelLineWithBlock:^(PYLabelLine *labelLine) {
                labelLine.showEqual(NO);
            }]);
        }])
        .emphasisEqual([PYItemStyleProp initPYItemStylePropWithBlock:^(PYItemStyleProp *emphasis) {
            emphasis.colorEqual(PYRGBA(0, 0, 0, 0));
        }]);
    }];
}

/**  环形图3 */
+ (PYOption *)doughnut3PieOption{
    return [PYOption initPYOptionWithBlock:^(PYOption *option) {
        option.titleEqual([PYTitle initPYTitleWithBlock:^(PYTitle *title) {
            title.textEqual(@"你幸福吗？")
            .subtextEqual(@"From ExcelHome")
            .sublinkEqual(@"http://e.weibo.com/1341556070/AhQXtjbqh")
            .xEqual(PYPositionCenter)
            .yEqual(PYPositionCenter)
            .itemGapEqual(@5)
            .textStyleEqual([PYTextStyle initPYTextStyleWithBlock:^(PYTextStyle *textStyle) {
                textStyle.colorEqual(PYRGBA(30, 144, 255, 0.8))
                .fontFamilyEqual(@"微软雅黑")
                .fontSizeEqual(@10)
                .fontWeightEqual(PYTextStyleFontWeightBolder);
            }]);
        }])
        .tooltipEqual([PYTooltip initPYTooltipWithBlock:^(PYTooltip *tooltip) {
            tooltip.showEqual(YES).formatterEqual(@"{a} <br/>{b} : {c} ({d}%)");
        }])
        .legendEqual([PYLegend initPYLegendWithBlock:^(PYLegend *legend) {
            legend.orientEqual(PYOrientVertical)
            .xEqual(@"52%")
            .yEqual(@45)
            .itemGapEqual(@12)
            .dataEqual(@[@"68%的人表示过的不错",@"29%的人表示生活压力很大",@"3%的人表示“我姓曾”"]);
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
                .restoreEqual([PYToolboxFeatureRestore initPYToolboxFeatureRestoreWithBlock:^(PYToolboxFeatureRestore *restore) {
                    restore.showEqual(YES);
                }]);
            }]);
        }])
        .addSeries([PYPieSeries initPYPieSeriesWithBlock:^(PYPieSeries *series) {
            series.clockWiseEqual(NO)
            .radiusEqual(@[@65, @90])
            .nameEqual(@"1")
            .typeEqual(PYSeriesTypePie)
            .itemStyleEqual([self createDataStyle])
            .addData(@{@"value":@68, @"name":@"68%的人表示过的不错"})
            .addData(@{@"value":@32, @"name":@"invisible", @"itemStyle":[self createPlaceHolderStyle]});
        }])
        .addSeries([PYPieSeries initPYPieSeriesWithBlock:^(PYPieSeries *series) {
            series.clockWiseEqual(NO)
            .radiusEqual(@[@40, @65])
            .nameEqual(@"2")
            .typeEqual(PYSeriesTypePie)
            .itemStyleEqual([self createDataStyle])
            .addData(@{@"value":@29, @"name":@"29%的人表示生活压力很大"})
            .addData(@{@"value":@71, @"name":@"invisible", @"itemStyle":[self createPlaceHolderStyle]});
        }])
        .addSeries([PYPieSeries initPYPieSeriesWithBlock:^(PYPieSeries *series) {
            series.clockWiseEqual(NO)
            .radiusEqual(@[@15, @40])
            .nameEqual(@"3")
            .typeEqual(PYSeriesTypePie)
            .itemStyleEqual([self createDataStyle])
            .addData(@{@"value":@3, @"name":@"3%的人表示“我姓曾"})
            .addData(@{@"value":@97, @"name":@"invisible", @"itemStyle":[self createPlaceHolderStyle]});
        }]);
    }];
}

+ (PYItemStyle *)createDataStyle {
    return [PYItemStyle initPYItemStyleWithBlock:^(PYItemStyle *itemStyle) {
        itemStyle.normalEqual([PYItemStyleProp initPYItemStylePropWithBlock:^(PYItemStyleProp *normal) {
            normal.labelEqual([PYLabel initPYLabelWithBlock:^(PYLabel *label) {
                label.showEqual(NO);
            }])
            .labelLineEqual([PYLabelLine initPYLabelLineWithBlock:^(PYLabelLine *labelLine) {
                labelLine.showEqual(NO);
            }]);
        }]);
    }];
}

+ (PYItemStyle *)createPlaceHolderStyle {
    return [PYItemStyle initPYItemStyleWithBlock:^(PYItemStyle *itemStyle) {
        itemStyle.normalEqual([PYItemStyleProp initPYItemStylePropWithBlock:^(PYItemStyleProp *normal) {
            normal.colorEqual(PYRGBA(0, 0, 0, 0))
            .labelEqual([PYLabel initPYLabelWithBlock:^(PYLabel *label) {
                label.showEqual(NO);
            }])
            .labelLineEqual([PYLabelLine initPYLabelLineWithBlock:^(PYLabelLine *labelLine) {
                labelLine.showEqual(NO);
            }]);
        }])
        .emphasisEqual([PYItemStyleProp initPYItemStylePropWithBlock:^(PYItemStyleProp *emphasis) {
            emphasis.colorEqual(PYRGBA(0, 0, 0, 0));
        }]);
    }];
}

/**  时间轴饼图 */
+ (PYOption *)timelinePieOption{
    return [PYOption initPYOptionWithBlock:^(PYOption *option) {
        __block NSUInteger idx = 1;
        option.timelineEqual([PYTimeline initPYTimelineWithBlock:^(PYTimeline *timeline) {
            timeline.addDataArr(@[
                                  @"2013-01-01", @"2013-02-01", @"2013-03-01", @"2013-04-01", @"2013-05-01",
                                  @{ @"name":@"2013-06-01", @"symbol":@"emptyStar6", @"symbolSize":@8 },
                                  @"2013-07-01", @"2013-08-01", @"2013-09-01", @"2013-10-01", @"2013-11-01",
                                  @{ @"name":@"2013-12-01", @"symbol":@"star6", @"symbolSize":@8 }
                                  ])
            .labelEqual([PYTimelineLabel initPYTimelineLabelWithBlock:^(PYTimelineLabel *label) {
                label.formatterEqual(@"(function(s) {return s.slice(0, 7);})");
            }]);
        }])
        .addOptions([PYOption initPYOptionWithBlock:^(PYOption *option) {
            option.titleEqual([PYTitle initPYTitleWithBlock:^(PYTitle *title) {
                title.textEqual(@"浏览器占比变化")
                .subtextEqual(@"纯属虚构");
            }])
            .tooltipEqual([PYTooltip initPYTooltipWithBlock:^(PYTooltip *tooltip) {
                tooltip.triggerEqual(PYTooltipTriggerItem)
                .formatterEqual(@"{a} <br/>{b} : {c} ({d}%)");
            }])
            .legendEqual([PYLegend initPYLegendWithBlock:^(PYLegend *legend) {
                legend.dataEqual(@[@"Chrome",@"Firefox",@"Safari",@"IE9+",@"IE8-"]);
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
                        magicType.showEqual(YES)
                        .typeEqual(@[PYSeriesTypePie, PYSeriesTypeFunnel])
                        .optionEqual(@{
                                       @"funnel":@{
                                               @"x":@"25%",
                                               @"width":@"50%",
                                               @"funnelAlign":PYPositionLeft,
                                               @"max":@1700
                                           }
                                       });
                    }])
                    .restoreEqual([PYToolboxFeatureRestore initPYToolboxFeatureRestoreWithBlock:^(PYToolboxFeatureRestore *restore) {
                        restore.showEqual(YES);
                    }]);
                }]);
            }])
            .addSeries([PYPieSeries initPYPieSeriesWithBlock:^(PYPieSeries *series) {
                series.centerEqual(@[@"50%", @"45%"])
                .radiusEqual(@"50%")
                .nameEqual(@"浏览器（数据纯属虚构）")
                .typeEqual(PYSeriesTypePie)
                .addData(@{@"value":@(idx * 128 + 80), @"name":@"Chrome"})
                .addData(@{@"value":@(idx * 64 + 160), @"name":@"Firefox"})
                .addData(@{@"value":@(idx * 32 + 320), @"name":@"Safari"})
                .addData(@{@"value":@(idx * 16 + 640), @"name":@"IE9+"})
                .addData(@{@"value":@((idx++) * 8 + 1280), @"name":@"IE8-"});
            }]);
        }])
        .addOptions([PYOption initPYOptionWithBlock:^(PYOption *option) {
            option.addSeries([PYPieSeries initPYPieSeriesWithBlock:^(PYPieSeries *series) {
                series.radiusEqual(@"50%")
                .nameEqual(@"浏览器（数据纯属虚构）")
                .typeEqual(PYSeriesTypePie)
                .addData(@{@"value":@(idx * 128 + 80), @"name":@"Chrome"})
                .addData(@{@"value":@(idx * 64 + 160), @"name":@"Firefox"})
                .addData(@{@"value":@(idx * 32 + 320), @"name":@"Safari"})
                .addData(@{@"value":@(idx * 16 + 640), @"name":@"IE9+"})
                .addData(@{@"value":@((idx++) * 8 + 1280), @"name":@"IE8-"});
            }]);
        }])
        .addOptions([PYOption initPYOptionWithBlock:^(PYOption *option) {
            option.addSeries([PYPieSeries initPYPieSeriesWithBlock:^(PYPieSeries *series) {
                series.radiusEqual(@"50%")
                .nameEqual(@"浏览器（数据纯属虚构）")
                .typeEqual(PYSeriesTypePie)
                .addData(@{@"value":@(idx * 128 + 80), @"name":@"Chrome"})
                .addData(@{@"value":@(idx * 64 + 160), @"name":@"Firefox"})
                .addData(@{@"value":@(idx * 32 + 320), @"name":@"Safari"})
                .addData(@{@"value":@(idx * 16 + 640), @"name":@"IE9+"})
                .addData(@{@"value":@((idx++) * 8 + 1280), @"name":@"IE8-"});
            }]);
        }])
        .addOptions([PYOption initPYOptionWithBlock:^(PYOption *option) {
            option.addSeries([PYPieSeries initPYPieSeriesWithBlock:^(PYPieSeries *series) {
                series.radiusEqual(@"50%")
                .nameEqual(@"浏览器（数据纯属虚构）")
                .typeEqual(PYSeriesTypePie)
                .addData(@{@"value":@(idx * 128 + 80), @"name":@"Chrome"})
                .addData(@{@"value":@(idx * 64 + 160), @"name":@"Firefox"})
                .addData(@{@"value":@(idx * 32 + 320), @"name":@"Safari"})
                .addData(@{@"value":@(idx * 16 + 640), @"name":@"IE9+"})
                .addData(@{@"value":@((idx++) * 8 + 1280), @"name":@"IE8-"});
            }]);
        }])
        .addOptions([PYOption initPYOptionWithBlock:^(PYOption *option) {
            option.addSeries([PYPieSeries initPYPieSeriesWithBlock:^(PYPieSeries *series) {
                series.radiusEqual(@"50%")
                .nameEqual(@"浏览器（数据纯属虚构）")
                .typeEqual(PYSeriesTypePie)
                .addData(@{@"value":@(idx * 128 + 80), @"name":@"Chrome"})
                .addData(@{@"value":@(idx * 64 + 160), @"name":@"Firefox"})
                .addData(@{@"value":@(idx * 32 + 320), @"name":@"Safari"})
                .addData(@{@"value":@(idx * 16 + 640), @"name":@"IE9+"})
                .addData(@{@"value":@((idx++) * 8 + 1280), @"name":@"IE8-"});
            }]);
        }])
        .addOptions([PYOption initPYOptionWithBlock:^(PYOption *option) {
            option.addSeries([PYPieSeries initPYPieSeriesWithBlock:^(PYPieSeries *series) {
                series.radiusEqual(@"50%")
                .nameEqual(@"浏览器（数据纯属虚构）")
                .typeEqual(PYSeriesTypePie)
                .addData(@{@"value":@(idx * 128 + 80), @"name":@"Chrome"})
                .addData(@{@"value":@(idx * 64 + 160), @"name":@"Firefox"})
                .addData(@{@"value":@(idx * 32 + 320), @"name":@"Safari"})
                .addData(@{@"value":@(idx * 16 + 640), @"name":@"IE9+"})
                .addData(@{@"value":@((idx++) * 8 + 1280), @"name":@"IE8-"});
            }]);
        }])
        .addOptions([PYOption initPYOptionWithBlock:^(PYOption *option) {
            option.addSeries([PYPieSeries initPYPieSeriesWithBlock:^(PYPieSeries *series) {
                series.radiusEqual(@"50%")
                .nameEqual(@"浏览器（数据纯属虚构）")
                .typeEqual(PYSeriesTypePie)
                .addData(@{@"value":@(idx * 128 + 80), @"name":@"Chrome"})
                .addData(@{@"value":@(idx * 64 + 160), @"name":@"Firefox"})
                .addData(@{@"value":@(idx * 32 + 320), @"name":@"Safari"})
                .addData(@{@"value":@(idx * 16 + 640), @"name":@"IE9+"})
                .addData(@{@"value":@((idx++) * 8 + 1280), @"name":@"IE8-"});
            }]);
        }])
        .addOptions([PYOption initPYOptionWithBlock:^(PYOption *option) {
            option.addSeries([PYPieSeries initPYPieSeriesWithBlock:^(PYPieSeries *series) {
                series.radiusEqual(@"50%")
                .nameEqual(@"浏览器（数据纯属虚构）")
                .typeEqual(PYSeriesTypePie)
                .addData(@{@"value":@(idx * 128 + 80), @"name":@"Chrome"})
                .addData(@{@"value":@(idx * 64 + 160), @"name":@"Firefox"})
                .addData(@{@"value":@(idx * 32 + 320), @"name":@"Safari"})
                .addData(@{@"value":@(idx * 16 + 640), @"name":@"IE9+"})
                .addData(@{@"value":@((idx++) * 8 + 1280), @"name":@"IE8-"});
            }]);
        }])
        .addOptions([PYOption initPYOptionWithBlock:^(PYOption *option) {
            option.addSeries([PYPieSeries initPYPieSeriesWithBlock:^(PYPieSeries *series) {
                series.radiusEqual(@"50%")
                .nameEqual(@"浏览器（数据纯属虚构）")
                .typeEqual(PYSeriesTypePie)
                .addData(@{@"value":@(idx * 128 + 80), @"name":@"Chrome"})
                .addData(@{@"value":@(idx * 64 + 160), @"name":@"Firefox"})
                .addData(@{@"value":@(idx * 32 + 320), @"name":@"Safari"})
                .addData(@{@"value":@(idx * 16 + 640), @"name":@"IE9+"})
                .addData(@{@"value":@((idx++) * 8 + 1280), @"name":@"IE8-"});
            }]);
        }])
        .addOptions([PYOption initPYOptionWithBlock:^(PYOption *option) {
            option.addSeries([PYPieSeries initPYPieSeriesWithBlock:^(PYPieSeries *series) {
                series.radiusEqual(@"50%")
                .nameEqual(@"浏览器（数据纯属虚构）")
                .typeEqual(PYSeriesTypePie)
                .addData(@{@"value":@(idx * 128 + 80), @"name":@"Chrome"})
                .addData(@{@"value":@(idx * 64 + 160), @"name":@"Firefox"})
                .addData(@{@"value":@(idx * 32 + 320), @"name":@"Safari"})
                .addData(@{@"value":@(idx * 16 + 640), @"name":@"IE9+"})
                .addData(@{@"value":@((idx++) * 8 + 1280), @"name":@"IE8-"});
            }]);
        }])
        .addOptions([PYOption initPYOptionWithBlock:^(PYOption *option) {
            option.addSeries([PYPieSeries initPYPieSeriesWithBlock:^(PYPieSeries *series) {
                series.radiusEqual(@"50%")
                .nameEqual(@"浏览器（数据纯属虚构）")
                .typeEqual(PYSeriesTypePie)
                .addData(@{@"value":@(idx * 128 + 80), @"name":@"Chrome"})
                .addData(@{@"value":@(idx * 64 + 160), @"name":@"Firefox"})
                .addData(@{@"value":@(idx * 32 + 320), @"name":@"Safari"})
                .addData(@{@"value":@(idx * 16 + 640), @"name":@"IE9+"})
                .addData(@{@"value":@((idx++) * 8 + 1280), @"name":@"IE8-"});
            }]);
        }])
        .addOptions([PYOption initPYOptionWithBlock:^(PYOption *option) {
            option.addSeries([PYPieSeries initPYPieSeriesWithBlock:^(PYPieSeries *series) {
                series.radiusEqual(@"50%")
                .nameEqual(@"浏览器（数据纯属虚构）")
                .typeEqual(PYSeriesTypePie)
                .addData(@{@"value":@(idx * 128 + 80), @"name":@"Chrome"})
                .addData(@{@"value":@(idx * 64 + 160), @"name":@"Firefox"})
                .addData(@{@"value":@(idx * 32 + 320), @"name":@"Safari"})
                .addData(@{@"value":@(idx * 16 + 640), @"name":@"IE9+"})
                .addData(@{@"value":@((idx++) * 8 + 1280), @"name":@"IE8-"});
            }]);
        }]);
    }];
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
            .dataEqual(@[@"直达",@"营销广告",@"搜索引擎",@"邮件营销",@"联盟广告",@"视频广告",@"百度",@"谷歌",@"必应",@"其他"]);
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
            .dataEqual(@[
                         @{@"value":@(335),@"name":@"直达"},
                         @{@"value":@(679),@"name":@"营销广告"},
                         @{@"value":@(1548),@"name":@"搜索引擎"}])
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
            .dataEqual(@[
                         @{@"value":@(335),@"name":@"直达"},
                         @{@"value":@(310),@"name":@"邮件营销"},
                         @{@"value":@(234),@"name":@"联盟广告"},
                         @{@"value":@(135),@"name":@"视频广告"},
                         @{@"value":@(1048),@"name":@"百度", @"itemStyle":[PYItemStyle initPYItemStyleWithBlock:^(PYItemStyle *itemStyle) {
                                itemStyle.normalEqual([PYItemStyleProp initPYItemStylePropWithBlock:^(PYItemStyleProp *normal) {
                                    normal.colorEqual(@"(function (){var zrColor = zrender.tool.color;return zrColor.getRadialGradient(160, 75, 55, 160, 75, 70,[[0, 'rgba(255,255,0,1)'],[1, 'rgba(30,144,250,1)']]);})()")
                                    .labelEqual([PYLabel initPYLabelWithBlock:^(PYLabel *label) {
                                        label.textStyleEqual([PYTextStyle initPYTextStyleWithBlock:^(PYTextStyle *textStyle) {
                                            textStyle.colorEqual(PYRGBA(30, 144, 255, 0.8))
                                            .alignEqual(PYPositionCenter)
                                            .baseLineEqual(@"middle")
                                            .fontFamilyEqual(@"微软雅黑")
                                            .fontWeightEqual(PYTextStyleFontWeightBolder);
                                        }]);
                                    }])
                                    .labelLineEqual([PYLabelLine initPYLabelLineWithBlock:^(PYLabelLine *labelLine) {
                                        labelLine.lengthEqual(@40)
                                        .lineStyleEqual([PYLineStyle initPYLineStyleWithBlock:^(PYLineStyle *lineStyle) {
                                            lineStyle.colorEqual([PYColor colorWithHexString:@"#f0f"])
                                            .widthEqual(@3)
                                            .typeEqual(PYLineStyleTypeDotted);
                                        }]);
                                    }]);
                                }]);
                            }]
                           },
                         @{@"value":@(251),@"name":@"谷歌"},
                         @{@"value":@(102),@"name":@"必应", @"itemStyle":[PYItemStyle initPYItemStyleWithBlock:^(PYItemStyle *itemStyle) {
                            itemStyle.normalEqual([PYItemStyleProp initPYItemStylePropWithBlock:^(PYItemStyleProp *normal) {
                                normal.labelEqual([PYLabel initPYLabelWithBlock:^(PYLabel *label) {
                                    label.showEqual(NO);
                                }])
                                .labelLineEqual([PYLabelLine initPYLabelLineWithBlock:^(PYLabelLine *labelLine) {
                                    labelLine.showEqual(NO);
                                }]);
                            }])
                            .emphasisEqual([PYItemStyleProp initPYItemStylePropWithBlock:^(PYItemStyleProp *emphasis) {
                                emphasis.labelEqual([PYLabel initPYLabelWithBlock:^(PYLabel *label) {
                                    label.showEqual(YES);
                                }])
                                .labelLineEqual([PYLabelLine initPYLabelLineWithBlock:^(PYLabelLine *labelLine) {
                                    labelLine.showEqual(YES).lengthEqual(@50);
                                }]);
                            }]);
                        }]},
                         @{@"value":@(147),@"name":@"其他"}
                         ]);
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
                    itemStyleProp.colorEqual(@"(function (){var zrColor = zrender.tool.color;return zrColor.getRadialGradient(650, 200, 80, 650, 200, 120,[[0, 'rgba(255,255,0,1)'],[1, 'rgba(255,0,0,1)']])})()")
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
                .addData(@{@"name":@"最大",@"value":@(1548),@"x":@"80%",@"y":@(40),@"symbolSize":@(20)});
            }])
            .dataEqual(@[
                         @{@"value":@(335),@"name":@"直达"},
                         @{@"value":@(310),@"name":@"邮件营销"},
                         @{@"value":@(234),@"name":@"联盟广告"},
                         @{@"value":@(135),@"name":@"视频广告"},
                         @{@"value":@(1548),@"name":@"搜索引擎"}
                         ]);
        }]);
    }];

}

/**  千层饼图 */
+ (PYOption *)multilayerPieOption{
    return nil;
}

@end
