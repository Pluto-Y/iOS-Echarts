//
//  PYGaugesDemoOptions.m
//  iOS-Echarts
//
//  Created by Pluto Y on 9/11/16.
//  Copyright © 2016 pluto-y. All rights reserved.
//

#import "PYGaugesDemoOptions.h"

@implementation PYGaugesDemoOptions

+ (PYOption *)basicAngularGauge1Option {
    return [PYOption initPYOptionWithBlock:^(PYOption *option) {
        option.tooltipEqual([PYTooltip initPYTooltipWithBlock:^(PYTooltip *tooltip) {
            tooltip.formatterEqual(@"{a} <br/>{b} : {c}%");
        }])
        .toolboxEqual([PYToolbox initPYToolboxWithBlock:^(PYToolbox *toolbox) {
            toolbox.showEqual(YES)
            .featureEqual([PYToolboxFeature initPYToolboxFeatureWithBlock:^(PYToolboxFeature *feature) {
                feature.markEqual([PYToolboxFeatureMark initPYToolboxFeatureMarkWithBlock:^(PYToolboxFeatureMark *mark) {
                    mark.show = YES;
                }])
                .restoreEqual([PYToolboxFeatureRestore initPYToolboxFeatureRestoreWithBlock:^(PYToolboxFeatureRestore *restore) {
                    restore.showEqual(YES);
                }]);
            }]);
        }])
        .addSeries([PYGaugeSeries initPYGaugeSeriesWithBlock:^(PYGaugeSeries *series) {
            series.axisLineEqual([PYAxisLine initPYAxisLineWithBlock:^(PYAxisLine *axisLine) {
                axisLine.lineStyleEqual([PYLineStyle initPYLineStyleWithBlock:^(PYLineStyle *lineStyle) {
                    lineStyle.widthEqual(@10);
                }]);
            }])
            .axisTickEqual([PYAxisTick initPYAxisTickWithBlock:^(PYAxisTick *axisTick) {
                axisTick.showEqual(YES)
                .splitNumberEqual(@5)
                .lengthEqual(@15)
                .lineStyleEqual([PYLineStyle initPYLineStyleWithBlock:^(PYLineStyle *lineStyle) {
                    lineStyle.colorEqual([PYColor colorWithHexString:@"#eee"])
                    .widthEqual(@1)
                    .typeEqual(PYLineStyleTypeSolid);
                }]);
            }])
            .splitLineEqual([PYGaugeSpliteLine initPYGaugeSpliteLineWithBlock:^(PYGaugeSpliteLine *spliteLine) {
                spliteLine.lengthEqual(@20);
            }])
            .detailEqual([PYGaugeDetail initPYGaugeDetailWithBlock:^(PYGaugeDetail *detail) {
                detail.formatterEqual(@"{value}%");
            }])
            .nameEqual(@"业务指标")
            .typeEqual(PYSeriesTypeGauge)
            .addData(@{@"value":@50, @"name":@"完成率"});
        }]);
    }];
}

+ (PYOption *)basicAngularGauge2Option {
    return [PYOption initPYOptionWithBlock:^(PYOption *option) {
        option.tooltipEqual([PYTooltip initPYTooltipWithBlock:^(PYTooltip *tooltip) {
            tooltip.formatterEqual(@"{a} <br/>{b} : {c}%");
        }])
        .toolboxEqual([PYToolbox initPYToolboxWithBlock:^(PYToolbox *toolbox) {
            toolbox.showEqual(YES)
            .featureEqual([PYToolboxFeature initPYToolboxFeatureWithBlock:^(PYToolboxFeature *feature) {
                feature.markEqual([PYToolboxFeatureMark initPYToolboxFeatureMarkWithBlock:^(PYToolboxFeatureMark *mark) {
                    mark.show = YES;
                }])
                .restoreEqual([PYToolboxFeatureRestore initPYToolboxFeatureRestoreWithBlock:^(PYToolboxFeatureRestore *restore) {
                    restore.showEqual(YES);
                }]);
            }]);
        }])
        .addSeries([PYGaugeSeries initPYGaugeSeriesWithBlock:^(PYGaugeSeries *series) {
            series.splitNumberEqual(@10)
            .axisLineEqual([PYAxisLine initPYAxisLineWithBlock:^(PYAxisLine *axisLine) {
                axisLine.lineStyleEqual([PYLineStyle initPYLineStyleWithBlock:^(PYLineStyle *lineStyle) {
                    lineStyle.colorEqual(@[@[@0.2, [PYColor colorWithHexString:@"#228b22"], @[@0.8, [PYColor colorWithHexString:@"#48b"]], @[@1, [PYColor colorWithHexString:@"ff4500"]]]])
                    .widthEqual(@8);
                }]);
            }])
            .axisTickEqual([PYAxisTick initPYAxisTickWithBlock:^(PYAxisTick *axisTick) {
                axisTick.showEqual(YES)
                .splitNumberEqual(@10)
                .lengthEqual(@12)
                .lineStyleEqual([PYLineStyle initPYLineStyleWithBlock:^(PYLineStyle *lineStyle) {
                    lineStyle.colorEqual(@"auto")
                    .widthEqual(@1)
                    .typeEqual(PYLineStyleTypeSolid);
                }]);
            }])
            .axisLabelEqual([PYAxisLabel initPYAxisLabelWithBlock:^(PYAxisLabel *axisLabel) {
                axisLabel.textStyleEqual([PYTextStyle initPYTextStyleWithBlock:^(PYTextStyle *textStyle) {
                    textStyle.colorEqual(@"auto");
                }]);
            }])
            .splitLineEqual([PYGaugeSpliteLine initPYGaugeSpliteLineWithBlock:^(PYGaugeSpliteLine *spliteLine) {
                spliteLine.showEqual(YES)
                .lengthEqual(@20)
                .lineStyleEqual([PYLineStyle initPYLineStyleWithBlock:^(PYLineStyle *lineStyle) {
                    lineStyle.colorEqual(@"auto");
                }]);
            }])
            .titleEqual([PYGaugeTitle initPYGaugeTitleWithBlock:^(PYGaugeTitle *title) {
                title.showEqual(YES)
                .offsetCenterEqual(@[@0, @"-40%"])
                .textStyleEqual([PYTextStyle initPYTextStyleWithBlock:^(PYTextStyle *textStyle) {
                    textStyle.fontWeightEqual(PYTextStyleFontWeightBolder);
                }]);
            }])
            .detailEqual([PYGaugeDetail initPYGaugeDetailWithBlock:^(PYGaugeDetail *detail) {
                detail.formatterEqual(@"{value}%")
                .textStyleEqual([PYTextStyle initPYTextStyleWithBlock:^(PYTextStyle *textStyle) {
                    textStyle.colorEqual(@"auto")
                    .fontWeightEqual(PYTextStyleFontWeightBolder);
                }]);
            }])
            .nameEqual(@"业务指标")
            .typeEqual(PYSeriesTypeGauge)
            .addData(@{@"value":@50, @"name":@"完成率"});
        }]);
    }];
}

+ (PYOption *)basicAngularGauge3Option {
    return nil;
}

+ (PYOption *)multipleAngularGauges1Option {
    return nil;
}

+ (PYOption *)multipleAngularGauges2Option {
    return nil;
}

+ (PYOption *)basicAngularGauge4Option {
    return nil;
}

@end
