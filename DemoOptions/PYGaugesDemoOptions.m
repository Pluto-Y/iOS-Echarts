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
    return nil;
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
