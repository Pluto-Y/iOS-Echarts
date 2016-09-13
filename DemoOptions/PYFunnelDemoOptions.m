//
//  PYFunnelDemoOptions.m
//  iOS-Echarts
//
//  Created by Pluto Y on 9/12/16.
//  Copyright © 2016 pluto-y. All rights reserved.
//

#import "PYFunnelDemoOptions.h"

@implementation PYFunnelDemoOptions

+ (PYOption *)basicFunnel1Option {
    return [PYOption initPYOptionWithBlock:^(PYOption *option) {
        option.titleEqual([PYTitle initPYTitleWithBlock:^(PYTitle *title) {
            title.textEqual(@"漏斗图")
            .subtextEqual(@"纯属虚构");
        }])
        .tooltipEqual([PYTooltip initPYTooltipWithBlock:^(PYTooltip *tooltip) {
            tooltip.triggerEqual(PYTooltipTriggerItem)
            .formatterEqual(@"{a} <br/>{b} : {c}%");
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
                    magicType.showEqual(YES).typeEqual(@[PYSeriesTypeLine, PYSeriesTypeBar]);
                }])
                .restoreEqual([PYToolboxFeatureRestore initPYToolboxFeatureRestoreWithBlock:^(PYToolboxFeatureRestore *restore) {
                    restore.showEqual(YES);
                }]);
            }]);
        }])
        .legendEqual([PYLegend initPYLegendWithBlock:^(PYLegend *legend) {
            legend.dataEqual(@[@"展现", @"点击", @"访问", @"咨询", @"订单"]);
        }])
        .calculableEqual(YES)
        .addSeries([PYFunnelSeries initPYFunnelSeriesWithBlock:^(PYFunnelSeries *series) {
            series.xEqual(@20)
            .widthEqual(@"40%")
            .nameEqual(@"漏斗图")
            .typeEqual(PYSeriesTypeFunnel)
            .addDataArr(@[@{@"value":@60, @"name":@"访问"}, @{@"value":@40, @"name":@"咨询"}, @{@"value":@20, @"name":@"订单"}, @{@"value":@80, @"name":@"点击"}, @{@"value":@100, @"name":@"展现"}]);
        }])
        .addSeries([PYFunnelSeries initPYFunnelSeriesWithBlock:^(PYFunnelSeries *series) {
            series.xEqual(@"55%")
            .widthEqual(@"40%")
            .sortEqual(PYSortAscending)
            .itemStyleEqual([PYItemStyle initPYItemStyleWithBlock:^(PYItemStyle *itemStyle) {
                itemStyle.normalEqual([PYItemStyleProp initPYItemStylePropWithBlock:^(PYItemStyleProp *normal) {
                    normal.labelEqual([PYLabel initPYLabelWithBlock:^(PYLabel *label) {
                        label.positionEqual(PYPositionLeft);
                    }]);
                }]);
            }])
            .nameEqual(@"金字塔")
            .typeEqual(PYSeriesTypeFunnel)
            .addDataArr(@[@{@"value":@60, @"name":@"访问"}, @{@"value":@40, @"name":@"咨询"}, @{@"value":@20, @"name":@"订单"}, @{@"value":@80, @"name":@"点击"}, @{@"value":@100, @"name":@"展现"}]);
        }]);
    }];
}

+ (PYOption *)multipleFunnel1Option {
    return [PYOption initPYOptionWithBlock:^(PYOption *option) {
        option.colorEqual(@[
                            PYRGBA(255, 69, 0, 0.5),
                            PYRGBA(255, 150, 0, 0.5),
                            PYRGBA(255, 200, 0, 0.5),
                            PYRGBA(155, 200, 50, 0.5),
                            PYRGBA(55, 200, 100, 0.5)
                            ])
        .titleEqual([PYTitle initPYTitleWithBlock:^(PYTitle *title) {
            title.textEqual(@"漏斗图")
            .subtextEqual(@"纯属虚构");
        }])
        .tooltipEqual([PYTooltip initPYTooltipWithBlock:^(PYTooltip *tooltip) {
            tooltip.triggerEqual(PYTooltipTriggerItem)
            .formatterEqual(@"{a} <br/>{b} : {c}%");
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
        .legendEqual([PYLegend initPYLegendWithBlock:^(PYLegend *legend) {
            legend.dataEqual(@[@"展现", @"点击", @"访问", @"咨询", @"订单"]);
        }])
        .calculableEqual(YES)
        .addSeries([PYFunnelSeries initPYFunnelSeriesWithBlock:^(PYFunnelSeries *series) {
            series.xEqual(@"15%")
            .widthEqual(@"70%")
            .nameEqual(@"预产")
            .typeEqual(PYSeriesTypeFunnel)
            .itemStyleEqual([PYItemStyle initPYItemStyleWithBlock:^(PYItemStyle *itemStyle) {
                itemStyle.normalEqual([PYItemStyleProp initPYItemStylePropWithBlock:^(PYItemStyleProp *normal) {
                    normal.labelEqual([PYLabel initPYLabelWithBlock:^(PYLabel *label) {
                        label.formatterEqual(@"{b}预期");
                    }])
                    .labelLineEqual([PYLabelLine initPYLabelLineWithBlock:^(PYLabelLine *labelLine) {
                        labelLine.showEqual(NO);
                    }]);
                }])
                .emphasisEqual([PYItemStyleProp initPYItemStylePropWithBlock:^(PYItemStyleProp *emphasis) {
                    emphasis.labelEqual([PYLabel initPYLabelWithBlock:^(PYLabel *label) {
                        label.positionEqual(@"inside")
                        .formatterEqual(@"{b}预期 : {c}%");
                    }]);
                }]);
            }])
            .addDataArr(@[@{@"value":@60, @"name":@"访问"}, @{@"value":@40, @"name":@"咨询"}, @{@"value":@20, @"name":@"订单"}, @{@"value":@80, @"name":@"点击"}, @{@"value":@100, @"name":@"展现"}]);
        }])
        .addSeries([PYFunnelSeries initPYFunnelSeriesWithBlock:^(PYFunnelSeries *series) {
            series.xEqual(@"15%")
            .widthEqual(@"70%")
            .maxSizeEqual(@"70%")
            .nameEqual(@"实际")
            .typeEqual(PYSeriesTypeFunnel)
            .itemStyleEqual([PYItemStyle initPYItemStyleWithBlock:^(PYItemStyle *itemStyle) {
                itemStyle.normalEqual([PYItemStyleProp initPYItemStylePropWithBlock:^(PYItemStyleProp *normal) {
                    normal.borderColorEqual([PYColor colorWithHexString:@"#fff"])
                    .borderWidthEqual(@2)
                    .labelEqual([PYLabel initPYLabelWithBlock:^(PYLabel *label) {
                        label.positionEqual(@"inside")
                        .formatterEqual(@"{c}%")
                        .textStyleEqual([PYTextStyle initPYTextStyleWithBlock:^(PYTextStyle *textStyle) {
                            textStyle.colorEqual([PYColor colorWithHexString:@"#fff"]);
                        }]);
                    }]);
                }])
                .emphasisEqual([PYItemStyleProp initPYItemStylePropWithBlock:^(PYItemStyleProp *emphasis) {
                    emphasis.labelEqual([PYLabel initPYLabelWithBlock:^(PYLabel *label) {
                        label.positionEqual(@"inside")
                        .formatterEqual(@"{b}实际 : {c}%");
                    }]);
                }]);
            }])
            .addDataArr(@[@{@"value":@30, @"name":@"访问"}, @{@"value":@10, @"name":@"咨询"}, @{@"value":@5, @"name":@"订单"}, @{@"value":@50, @"name":@"点击"}, @{@"value":@80, @"name":@"展现"}]);
        }]);
    }];
}

+ (PYOption *)multipleFunnel2Option {
    return [PYOption initPYOptionWithBlock:^(PYOption *option) {
        option.titleEqual([PYTitle initPYTitleWithBlock:^(PYTitle *title) {
            title.textEqual(@"漏斗图")
            .subtextEqual(@"纯属虚构")
            .xEqual(PYPositionLeft)
            .yEqual(PYPositionBottom);
        }])
        .tooltipEqual([PYTooltip initPYTooltipWithBlock:^(PYTooltip *tooltip) {
            tooltip.triggerEqual(PYTooltipTriggerItem)
            .formatterEqual(@"{a} <br/>{b} : {c}%");
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
        .legendEqual([PYLegend initPYLegendWithBlock:^(PYLegend *legend) {
            legend.dataEqual(@[@"展现", @"点击", @"访问", @"咨询", @"订单"])
            .xEqual(PYPositionLeft)
            .orientEqual(PYOrientVertical);
        }])
        .calculableEqual(YES)
        .addSeries([PYFunnelSeries initPYFunnelSeriesWithBlock:^(PYFunnelSeries *series) {
            series.widthEqual(@"40%")
            .heightEqual(@"45%")
            .xEqual(@"5%")
            .yEqual(@"50%")
            .nameEqual(@"漏斗图")
            .typeEqual(PYSeriesTypeFunnel)
            .addDataArr(@[@{@"value":@60, @"name":@"访问"}, @{@"value":@30, @"name":@"咨询"}, @{@"value":@10, @"name":@"订单"}, @{@"value":@80, @"name":@"点击"}, @{@"value":@100, @"name":@"展现"}]);
        }])
        .addSeries([PYFunnelSeries initPYFunnelSeriesWithBlock:^(PYFunnelSeries *series) {
            series.widthEqual(@"40%")
            .heightEqual(@"45%")
            .xEqual(@"5%")
            .yEqual(@"5%")
            .sortEqual(PYSortAscending)
            .nameEqual(@"金字塔")
            .typeEqual(PYSeriesTypeFunnel)
            .addDataArr(@[@{@"value":@60, @"name":@"访问"}, @{@"value":@30, @"name":@"咨询"}, @{@"value":@10, @"name":@"订单"}, @{@"value":@80, @"name":@"点击"}, @{@"value":@100, @"name":@"展现"}]);
        }])
        .addSeries([PYFunnelSeries initPYFunnelSeriesWithBlock:^(PYFunnelSeries *series) {
            series.widthEqual(@"40%")
            .heightEqual(@"45%")
            .xEqual(@"55%")
            .yEqual(@"5%")
            .itemStyleEqual([PYItemStyle initPYItemStyleWithBlock:^(PYItemStyle *itemStyle) {
                itemStyle.normalEqual([PYItemStyleProp initPYItemStylePropWithBlock:^(PYItemStyleProp *normal) {
                    normal.labelEqual([PYLabel initPYLabelWithBlock:^(PYLabel *label) {
                        label.positionEqual(PYPositionLeft);
                    }]);
                }]);
            }])
            .nameEqual(@"漏斗图")
            .typeEqual(PYSeriesTypeFunnel)
            .addDataArr(@[@{@"value":@60, @"name":@"访问"}, @{@"value":@30, @"name":@"咨询"}, @{@"value":@10, @"name":@"订单"}, @{@"value":@80, @"name":@"点击"}, @{@"value":@100, @"name":@"展现"}]);
        }])
        .addSeries([PYFunnelSeries initPYFunnelSeriesWithBlock:^(PYFunnelSeries *series) {
            series.widthEqual(@"40%")
            .heightEqual(@"45%")
            .xEqual(@"55%")
            .yEqual(@"50%")
            .sortEqual(PYSortAscending)
            .itemStyleEqual([PYItemStyle initPYItemStyleWithBlock:^(PYItemStyle *itemStyle) {
                itemStyle.normalEqual([PYItemStyleProp initPYItemStylePropWithBlock:^(PYItemStyleProp *normal) {
                    normal.labelEqual([PYLabel initPYLabelWithBlock:^(PYLabel *label) {
                        label.positionEqual(PYPositionLeft);
                    }]);
                }]);
            }])
            .nameEqual(@"金字塔")
            .typeEqual(PYSeriesTypeFunnel)
            .addDataArr(@[@{@"value":@60, @"name":@"访问"}, @{@"value":@30, @"name":@"咨询"}, @{@"value":@10, @"name":@"订单"}, @{@"value":@80, @"name":@"点击"}, @{@"value":@100, @"name":@"展现"}]);
        }]);
    }];
}

+ (PYOption *)multipleFunnel3Option {
    return [PYOption initPYOptionWithBlock:^(PYOption *option) {
        option.titleEqual([PYTitle initPYTitleWithBlock:^(PYTitle *title) {
            title.textEqual(@"漏斗图")
            .subtextEqual(@"纯属虚构")
            .xEqual(PYPositionLeft)
            .yEqual(PYPositionBottom);
        }])
        .tooltipEqual([PYTooltip initPYTooltipWithBlock:^(PYTooltip *tooltip) {
            tooltip.triggerEqual(PYTooltipTriggerItem)
            .formatterEqual(@"{a} <br/>{b} : {c}%");
        }])
        .toolboxEqual([PYToolbox initPYToolboxWithBlock:^(PYToolbox *toolbox) {
            toolbox.showEqual(YES)
            .orientEqual(PYOrientVertical)
            .yEqual(PYPositionCenter)
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
        .legendEqual([PYLegend initPYLegendWithBlock:^(PYLegend *legend) {
            legend.dataEqual(@[@"产品A", @"产品B", @"产品C", @"产品D", @"产品E"])
            .xEqual(PYPositionLeft)
            .orientEqual(PYOrientVertical);
        }])
        .calculableEqual(YES)
        .addSeries([PYFunnelSeries initPYFunnelSeriesWithBlock:^(PYFunnelSeries *series) {
            series.widthEqual(@"30%")
            .heightEqual(@"45%")
            .xEqual(@"5%")
            .yEqual(@"50%")
            .funnelAlignEqual(PYPositionRight)
            .nameEqual(@"漏斗图")
            .typeEqual(PYSeriesTypeFunnel)
            .addDataArr(@[@{@"value":@60, @"name":@"产品C"}, @{@"value":@30, @"name":@"产品D"}, @{@"value":@10, @"name":@"产品E"}, @{@"value":@80, @"name":@"产品B"}, @{@"value":@100, @"name":@"产品A"}]);
        }])
        .addSeries([PYFunnelSeries initPYFunnelSeriesWithBlock:^(PYFunnelSeries *series) {
            series.widthEqual(@"30%")
            .heightEqual(@"45%")
            .xEqual(@"5%")
            .yEqual(@"5%")
            .funnelAlignEqual(PYPositionRight)
            .sortEqual(PYSortAscending)
            .nameEqual(@"金字塔")
            .typeEqual(PYSeriesTypeFunnel)
            .addDataArr(@[@{@"value":@60, @"name":@"产品C"}, @{@"value":@30, @"name":@"产品D"}, @{@"value":@10, @"name":@"产品E"}, @{@"value":@80, @"name":@"产品B"}, @{@"value":@100, @"name":@"产品A"}]);
        }])
        .addSeries([PYFunnelSeries initPYFunnelSeriesWithBlock:^(PYFunnelSeries *series) {
            series.widthEqual(@"30%")
            .heightEqual(@"45%")
            .xEqual(@"65%")
            .yEqual(@"5%")
            .funnelAlignEqual(PYPositionLeft)
            .itemStyleEqual([PYItemStyle initPYItemStyleWithBlock:^(PYItemStyle *itemStyle) {
                itemStyle.normalEqual([PYItemStyleProp initPYItemStylePropWithBlock:^(PYItemStyleProp *normal) {
                    normal.labelEqual([PYLabel initPYLabelWithBlock:^(PYLabel *label) {
                        label.positionEqual(PYPositionLeft);
                    }]);
                }]);
            }])
            .nameEqual(@"漏斗图")
            .typeEqual(PYSeriesTypeFunnel)
            .addDataArr(@[@{@"value":@60, @"name":@"产品C"}, @{@"value":@30, @"name":@"产品D"}, @{@"value":@10, @"name":@"产品E"}, @{@"value":@80, @"name":@"产品B"}, @{@"value":@100, @"name":@"产品A"}]);
        }])
        .addSeries([PYFunnelSeries initPYFunnelSeriesWithBlock:^(PYFunnelSeries *series) {
            series.widthEqual(@"30%")
            .heightEqual(@"45%")
            .xEqual(@"65%")
            .yEqual(@"50%")
            .funnelAlignEqual(PYPositionLeft)
            .sortEqual(PYSortAscending)
            .itemStyleEqual([PYItemStyle initPYItemStyleWithBlock:^(PYItemStyle *itemStyle) {
                itemStyle.normalEqual([PYItemStyleProp initPYItemStylePropWithBlock:^(PYItemStyleProp *normal) {
                    normal.labelEqual([PYLabel initPYLabelWithBlock:^(PYLabel *label) {
                        label.positionEqual(PYPositionLeft);
                    }]);
                }]);
            }])
            .nameEqual(@"金字塔")
            .typeEqual(PYSeriesTypeFunnel)
            .addDataArr(@[@{@"value":@60, @"name":@"产品C"}, @{@"value":@30, @"name":@"产品D"}, @{@"value":@10, @"name":@"产品E"}, @{@"value":@80, @"name":@"产品B"}, @{@"value":@100, @"name":@"产品A"}]);
        }]);
    }];;
}

+ (PYOption *)basicFunnel2Option {
    return [PYOption initPYOptionWithBlock:^(PYOption *option) {
        option.titleEqual([PYTitle initPYTitleWithBlock:^(PYTitle *title) {
            title.textEqual(@"漏斗图")
            .subtextEqual(@"纯属虚构");
        }])
        .tooltipEqual([PYTooltip initPYTooltipWithBlock:^(PYTooltip *tooltip) {
            tooltip.triggerEqual(PYTooltipTriggerItem)
            .formatterEqual(@"{a} <br/>{b} : {c}%");
        }])
        .toolboxEqual([PYToolbox initPYToolboxWithBlock:^(PYToolbox *toolbox) {
            toolbox.showEqual(YES)
            .orientEqual(PYOrientVertical)
            .yEqual(PYPositionCenter)
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
        .legendEqual([PYLegend initPYLegendWithBlock:^(PYLegend *legend) {
            legend.dataEqual(@[@"展现", @"点击", @"访问", @"咨询", @"订单"]);
        }])
        .calculableEqual(YES)
        .addSeries([PYFunnelSeries initPYFunnelSeriesWithBlock:^(PYFunnelSeries *series) {
            series.xEqual(@"10%")
            .yEqual(@60)
            .minEqual(@0)
            .maxEqual(@100)
            .widthEqual(@"80%")
            .minSizeEqual(@"0%")
            .maxSizeEqual(@"100%")
            .sortEqual(PYSortDescending)
            .gapEqual(@10)
            .nameEqual(@"漏斗图")
            .typeEqual(PYSeriesTypeFunnel)
            .itemStyleEqual([PYItemStyle initPYItemStyleWithBlock:^(PYItemStyle *itemStyle) {
                itemStyle.normalEqual([PYItemStyleProp initPYItemStylePropWithBlock:^(PYItemStyleProp *normal) {
                    normal.borderColorEqual([PYColor colorWithHexString:@"#fff"])
                    .borderWidthEqual(@1)
                    .labelEqual([PYLabel initPYLabelWithBlock:^(PYLabel *label) {
                        label.showEqual(YES)
                        .positionEqual(@"inside");
                    }])
                    .labelLineEqual([PYLabelLine initPYLabelLineWithBlock:^(PYLabelLine *labelLine) {
                        labelLine.showEqual(NO)
                        .lengthEqual(@10)
                        .lineStyleEqual([PYLineStyle initPYLineStyleWithBlock:^(PYLineStyle *lineStyle) {
                            lineStyle.widthEqual(@10)
                            .typeEqual(PYLineStyleTypeSolid);
                        }]);
                    }]);
                }])
                .emphasisEqual([PYItemStyleProp initPYItemStylePropWithBlock:^(PYItemStyleProp *emphasis) {
                    emphasis.borderColorEqual(@"red")
                    .borderWidthEqual(@5)
                    .labelEqual([PYLabel initPYLabelWithBlock:^(PYLabel *label) {
                        label.showEqual(YES)
                        .formatterEqual(@"{b}:{c}%")
                        .textStyleEqual([PYTextStyle initPYTextStyleWithBlock:^(PYTextStyle *textStyle) {
                            textStyle.fontSizeEqual(@20);
                        }]);
                    }])
                    .labelLineEqual([PYLabelLine initPYLabelLineWithBlock:^(PYLabelLine *labelLine) {
                        labelLine.showEqual(YES);
                    }]);
                }]);
            }])
            .addDataArr(@[@{@"value":@60, @"name":@"访问"}, @{@"value":@40, @"name":@"咨询"}, @{@"value":@20, @"name":@"订单"}, @{@"value":@80, @"name":@"点击"}, @{@"value":@100, @"name":@"展现"}]);
        }]);
    }];
}

@end
