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
    return nil;
}
+ (PYOption *)multipleFunnel2Option {
    return nil;
}

+ (PYOption *)multipleFunnel3Option {
    return nil;
}

+ (PYOption *)basicFunnel2Option {
    return nil;
}

@end
