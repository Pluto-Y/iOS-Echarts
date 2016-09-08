//
//  PYVennDemoOptions.m
//  iOS-Echarts
//
//  Created by Pluto Y on 9/9/16.
//  Copyright © 2016 pluto-y. All rights reserved.
//

#import "PYVennDemoOptions.h"

@implementation PYVennDemoOptions

+ (PYOption *)vennOption {
    return [PYOption initPYOptionWithBlock:^(PYOption *option) {
        option.titleEqual([PYTitle initPYTitleWithBlock:^(PYTitle *title) {
            title.textEqual(@"访问 vs 咨询")
            .subtextEqual(@"各个数据的集合");
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
        .addSeries([PYVennSeries initPYVennSeriesWithBlock:^(PYSeries *series) {
            series.nameEqual(@"韦恩图")
            .typeEqual(PYSeriesTypeVenn)
            .itemStyleEqual([PYItemStyle initPYItemStyleWithBlock:^(PYItemStyle *itemStyle) {
                itemStyle.normalEqual([PYItemStyleProp initPYItemStylePropWithBlock:^(PYItemStyleProp *normal) {
                    normal.labelEqual([PYLabel initPYLabelWithBlock:^(PYLabel *label) {
                        label.showEqual(YES)
                        .textStyleEqual([PYTextStyle initPYTextStyleWithBlock:^(PYTextStyle *textStyle) {
                            textStyle.fontFamilyEqual(@"Arial, Verdana, sans-serif")
                            .fontSizeEqual(@16)
                            .fontStyleEqual(@"italic")
                            .fontWeightEqual(PYTextStyleFontWeightBolder);
                        }]);
                    }])
                    .labelLineEqual([PYLabelLine initPYLabelLineWithBlock:^(PYLabelLine *labelLine) {
                        labelLine.showEqual(NO)
                        .lengthEqual(@10)
                        .lineStyleEqual([PYLineStyle initPYLineStyleWithBlock:^(PYLineStyle *lineStyle) {
                            lineStyle.widthEqual(@1)
                            .typeEqual(PYLineStyleTypeSolid);
                        }]);
                    }]);
                }])
                .emphasisEqual([PYItemStyleProp initPYItemStylePropWithBlock:^(PYItemStyleProp *emphasis) {
                    emphasis.colorEqual([PYColor colorWithHexString:@"#cc99cc"])
                    .borderWidthEqual(@3)
                    .borderColorEqual([PYColor colorWithHexString:@"#996699"]);
                }]);
            }])
            .addDataArr(@[@{@"value":@100, @"name":@"访问"}, @{@"value":@50, @"name":@"咨询"}, @{@"value":@20, @"name":@"公共"}]);;
        }]);
    }];
}

@end
