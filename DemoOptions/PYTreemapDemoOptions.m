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
    return nil;
}

+ (PYOption *)treemap3Option {
    return nil;
}

@end
