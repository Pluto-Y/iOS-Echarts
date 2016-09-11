//
//  PYTreemapDemoOptions.m
//  iOS-Echarts
//
//  Created by Pluto Y on 9/9/16.
//  Copyright © 2016 pluto-y. All rights reserved.
//

#import "PYTreemapDemoOptions.h"

@implementation PYTreemapDemoOptions

+ (PYOption *)treemap1Option {
    return [PYOption initPYOptionWithBlock:^(PYOption *option) {
        option.titleEqual([PYTitle initPYTitleWithBlock:^(PYTitle *title) {
            title.textEqual(@"手机占有率")
            .subtextEqual(@"虚构数据");
        }])
        .tooltipEqual([PYTooltip initPYTooltipWithBlock:^(PYTooltip *tooltip) {
            tooltip.triggerEqual(PYTooltipTriggerItem)
            .formatterEqual(@"{b}: {c}");
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
        .calculableEqual(NO)
        .addSeries([PYTreeMapSeries initPYTreeMapSeriesWithBlock:^(PYTreeMapSeries *series) {
            series.nameEqual(@"矩形图")
            .typeEqual(PYSeriesTypeTreemap)
            .itemStyleEqual([PYItemStyle initPYItemStyleWithBlock:^(PYItemStyle *itemStyle) {
                itemStyle.normalEqual([PYItemStyleProp initPYItemStylePropWithBlock:^(PYItemStyleProp *normal) {
                    normal.labelEqual([PYLabel initPYLabelWithBlock:^(PYLabel *label) {
                        label.showEqual(YES)
                        .formatterEqual(@"{b}");
                    }])
                    .borderWidthEqual(@1);
                }])
                .emphasisEqual([PYItemStyleProp initPYItemStylePropWithBlock:^(PYItemStyleProp *emphasis) {
                    emphasis.labelEqual([PYLabel initPYLabelWithBlock:^(PYLabel *label) {
                        label.showEqual(YES);
                    }]);
                }]);
            }])
            .addDataArr(@[@{@"name":@"三星", @"value":@6}, @{@"name":@"小米", @"value":@4}, @{@"name":@"苹果", @"value":@4}, @{@"name":@"华为", @"value":@2}, @{@"name":@"联想", @"value":@2}, @{@"name":@"魅族", @"value":@1}, @{@"name":@"中兴", @"value":@1}]);
        }]);
    }];
}

+ (PYOption *)treemap2Option {
    return [PYOption initPYOptionWithBlock:^(PYOption *option) {
        option.titleEqual([PYTitle initPYTitleWithBlock:^(PYTitle *title) {
            title.textEqual(@"手机占有率")
            .subtextEqual(@"数据下钻例子，虚构数据");
        }])
        .tooltipEqual([PYTooltip initPYTooltipWithBlock:^(PYTooltip *tooltip) {
            tooltip.triggerEqual(PYTooltipTriggerItem)
            .formatterEqual(@"{b}: {c}");
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
        .calculableEqual(NO)
        .addSeries([PYTreeMapSeries initPYTreeMapSeriesWithBlock:^(PYTreeMapSeries *series) {
            series.nameEqual(@"手机占有率")
            .typeEqual(PYSeriesTypeTreemap)
            .itemStyleEqual([PYItemStyle initPYItemStyleWithBlock:^(PYItemStyle *itemStyle) {
                itemStyle.normalEqual([PYItemStyleProp initPYItemStylePropWithBlock:^(PYItemStyleProp *normal) {
                    normal.labelEqual([PYLabel initPYLabelWithBlock:^(PYLabel *label) {
                        label.showEqual(YES)
                        .formatterEqual(@"{b}");
                    }])
                    .borderWidthEqual(@1)
                    .borderColorEqual([PYColor colorWithHexString:@"#ccc"]);
                }])
                .emphasisEqual([PYItemStyleProp initPYItemStylePropWithBlock:^(PYItemStyleProp *emphasis) {
                    emphasis.labelEqual([PYLabel initPYLabelWithBlock:^(PYLabel *label) {
                        label.showEqual(YES);
                    }])
                    .colorEqual([PYColor colorWithHexString:@"#cc99cc"])
                    .borderWidthEqual(@3)
                    .borderColorEqual([PYColor colorWithHexString:@"#996699"]);
                }]);
            }])
            .addData(@{@"name":@"三星", @"itemStyle":@{@"normal":@{@"color":@"#99cccc"}}, @"value":@6, @"children":@[@{@"name":@"Galaxy S4", @"value":@2}, @{@"name":@"Galaxy S5", @"value":@3}, @{@"name":@"Galaxy S6", @"value":@3}, @{@"name":@"Galaxy Tab", @"value":@1}]})
            .addData(@{@"name":@"小米", @"itemStyle":@{@"normal":@{@"color":@"#99ccff"}}, @"value":@4, @"children":@[@{@"name":@"小米3", @"value":@6}, @{@"name":@"小米4", @"value":@6}, @{@"name":@"红米", @"value":@4}]})
            .addData(@{@"name":@"苹果", @"itemStyle":@{@"normal":@{@"color":@"#9999cc"}}, @"value":@4, @"children":@[@{@"name":@"iPhone 5s", @"value":@6}, @{@"name":@"iPhone 6", @"value":@3}, @{@"name":@"iPhone 6+", @"value":@3}]})
            .addData(@{@"name":@"魅族", @"itemStyle":@{@"normal":@{@"color":@"#ccff99"}}, @"value":@1, @"children":@[@{@"name":@"MX4", @"itemStyle":@{@"normal":@{@"color":@"#ccccff"}}, @"value":@6}, @{@"name":@"MX3", @"itemStyle":@{@"normal":@{@"color":@"#99ccff"}}, @"value":@6}, @{@"name":@"魅蓝note", @"itemStyle":@{@"normal":@{@"color":@"#9999cc"}}, @"value":@4}, @{@"name":@"MX4 pro", @"itemStyle":@{@"normal":@{@"color":@"#99cccc"}}, @"value":@3}]})
            .addData(@{@"name":@"华为", @"itemStyle":@{@"normal":@{@"color":@"#ccffcc"}}, @"value":@2})
            .addData(@{@"name":@"联想", @"itemStyle":@{@"normal":@{@"color":@"#ccccff"}}, @"value":@2})
            .addData(@{@"name":@"中兴", @"itemStyle":@{@"normal":@{@"color":@"#ffffcc"}}, @"value":@1, @"children":@[@{@"name":@"V5", @"value":@16}, @{@"name":@"努比亚", @"value":@6}, @{@"name":@"功能机", @"value":@4}, @{@"name":@"青漾", @"value":@4}, @{@"name":@"星星", @"value":@4}, @{@"name":@"儿童机", @"value":@1}]});
        }]);
    }];
}

+ (PYOption *)treemap3Option {
    return [PYOption initPYOptionWithBlock:^(PYOption *option) {
        option.titleEqual([PYTitle initPYTitleWithBlock:^(PYTitle *title) {
            title.textEqual(@"手机占有率")
            .subtextEqual(@"虚构数据");
        }])
        .tooltipEqual([PYTooltip initPYTooltipWithBlock:^(PYTooltip *tooltip) {
            tooltip.triggerEqual(PYTooltipTriggerItem)
            .formatterEqual(@"{b}: {c}");
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
        .addSeries([PYTreeMapSeries initPYTreeMapSeriesWithBlock:^(PYTreeMapSeries *series) {
            series.nameEqual(@"矩形图")
            .typeEqual(PYSeriesTypeTreemap)
            .itemStyleEqual([PYItemStyle initPYItemStyleWithBlock:^(PYItemStyle *itemStyle) {
                itemStyle.normalEqual([PYItemStyleProp initPYItemStylePropWithBlock:^(PYItemStyleProp *normal) {
                    normal.labelEqual([PYLabel initPYLabelWithBlock:^(PYLabel *label) {
                        label.showEqual(YES)
                        .formatterEqual(@"{b}: {c}")
                        .textStyleEqual([PYTextStyle initPYTextStyleWithBlock:^(PYTextStyle *textStyle) {
                            textStyle.colorEqual([PYColor colorWithHexString:@"#00ffdd"])
                            .fontFamilyEqual(@"Times New Roman\",Georgia,Serif")
                            .fontSizeEqual(@20)
                            .fontStyleEqual(PYTextStyleFontStyleItalic)
                            .fontWeightEqual(PYTextStyleFontWeightBolder);
                        }]);
                    }])
                    .borderWidthEqual(@1)
                    .borderColorEqual([PYColor colorWithHexString:@"#000"]);
                }])
                .emphasisEqual([PYItemStyleProp initPYItemStylePropWithBlock:^(PYItemStyleProp *emphasis) {
                    emphasis.labelEqual([PYLabel initPYLabelWithBlock:^(PYLabel *label) {
                        label.showEqual(YES)
                        .textStyleEqual([PYTextStyle initPYTextStyleWithBlock:^(PYTextStyle *textStyle) {
                            textStyle.colorEqual([PYColor colorWithHexString:@"#0000ff"])
                            .fontFamilyEqual(@"Times New Roman\",Georgia,Serif")
                            .fontSizeEqual(@18)
                            .fontStyleEqual(PYTextStyleFontStyleNormal)
                            .fontWeightEqual(PYTextStyleFontWeightBold);
                        }]);
                    }])
                    .colorEqual([PYColor colorWithHexString:@"#cc99cc"])
                    .borderWidthEqual(@3)
                    .borderColorEqual([PYColor colorWithHexString:@"#996699"]);
                }]);
            }])
            .addData(@{@"name":@"三星", @"value":@6, @"itemStyle":@{@"normal":@{@"label":@{@"show":@YES, @"formatter":@"{b}最多", @"x":@60, @"y":@65, @"textStyle":@{@"color":@"#ccc", @"fontSize":@16}}, @"color":@"#ccff99", @"borderWidth":@1}, @"emphasis":@{@"label":@{@"show":@YES, @"formatter":@"{b}-{c}", @"x":@80, @"y":@85, @"textStyle":@{@"color":@"red", @"fontSize":@18}}, @"color":@"#cc9999", @"borderWidth":@3, @"borderColor":@"#999999"}}, @"children":@[@{@"name":@"S4", @"value":@6, @"children":@[@{@"name":@"2012", @"value":@6}, @{@"name":@"2013", @"value":@4}, @{@"name":@"2014", @"value":@3}]}, @{@"name":@"note 3", @"value":@6}, @{@"name":@"S5", @"value":@4}, @{@"name":@"S6", @"value":@3}]})
            .addData(@{@"name":@"小米", @"value":@4, @"itemStyle":@{@"normal":@{@"color":@"#99ccff"}, @"emphasis":@{@"label":@{@"show":@NO}}}})
            .addData(@{@"name":@"苹果", @"value":@4, @"itemStyle":@{@"normal":@{@"color":@"#9999cc"}}})
            .addData(@{@"name":@"魅族", @"value":@3, @"itemStyle":@{@"normal":@{@"color":@"#99cccc"}}})
            .addData(@{@"name":@"华为", @"value":@2, @"itemStyle":@{@"normal":@{@"color":@"#ccffcc"}}})
            .addData(@{@"name":@"联想", @"value":@2, @"itemStyle":@{@"normal":@{@"color":@"#ccccff"}}})
            .addData(@{@"name":@"中兴", @"value":@1, @"itemStyle":@{@"normal":@{@"label":@{@"show":@YES, @"formatter":@"{b}: {c}"}, @"borderWidth":@3}, @"emphasis":@{@"label":@{@"show":@YES}, @"color":@"#cc9999", @"borderWidth":@3, @"borderColor":@"#999999"}}});
        }]);
    }];
}

@end
