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
            series.startAngleEqual(@180)
            .endAngleEqual(@0)
            .centerEqual(@[@"50%", @"70%"])
            .radiusEqual(@160)
            .axisLineEqual([PYAxisLine initPYAxisLineWithBlock:^(PYAxisLine *axisLine) {
                axisLine.lineStyleEqual([PYLineStyle initPYLineStyleWithBlock:^(PYLineStyle *lineStyle) {
                    lineStyle.widthEqual(@100);
                }]);
            }])
            .axisTickEqual([PYAxisTick initPYAxisTickWithBlock:^(PYAxisTick *axisTick) {
                axisTick.splitNumberEqual(@10)
                .lengthEqual(@12);
            }])
            .axisLabelEqual([PYAxisLabel initPYAxisLabelWithBlock:^(PYAxisLabel *axisLabel) {
                axisLabel.formatterEqual(@"(function(v){\n                    switch (v+\'\'){\n                        case \'10\': return \'低\';\n                        case \'50\': return \'中\';\n                        case \'90\': return \'高\';\n                        default: return \'\';\n                    }\n                })")
                .textStyleEqual([PYTextStyle initPYTextStyleWithBlock:^(PYTextStyle *textStyle) {
                    textStyle.colorEqual([PYColor colorWithHexString:@"#fff"])
                    .fontSizeEqual(@10)
                    .fontWeightEqual(PYTextStyleFontWeightBolder);
                }]);
            }])
            .pointerEqual([PYGaugePointer initPYGaugePointerWithBlock:^(PYGaugePointer *pointer) {
                pointer.widthEqual(@25)
                .lengthEqual(@"90%")
                .colorEqual(PYRGBA(255, 255, 255, 0.8));
            }])
            .titleEqual([PYGaugeTitle initPYGaugeTitleWithBlock:^(PYGaugeTitle *title) {
                title.showEqual(YES)
                .offsetCenterEqual(@[@0, @"-50%"])
                .textStyleEqual([PYTextStyle initPYTextStyleWithBlock:^(PYTextStyle *textStyle) {
                    textStyle.colorEqual([PYColor colorWithHexString:@"#fff"])
                    .fontSizeEqual(@20);
                }]);
            }])
            .detailEqual([PYGaugeDetail initPYGaugeDetailWithBlock:^(PYGaugeDetail *detail) {
                detail.showEqual(YES)
                .backgroundColorEqual([PYColor colorWithHexString:@"#0000"])
                .borderWidthEqual(@0)
                .borderColorEqual([PYColor colorWithHexString:@"#ccc"])
                .widthEqual(@75)
                .heightEqual(@40)
                .offsetCenterEqual(@[@0, @(-20)])
                .formatterEqual(@"{value}%")
                .textStyleEqual([PYTextStyle initPYTextStyleWithBlock:^(PYTextStyle *textStyle) {
                    textStyle.fontSizeEqual(@20);
                }]);
            }])
            .nameEqual(@"业务指标")
            .typeEqual(PYSeriesTypeGauge)
            .addData(@{@"value":@50, @"name":@"完成率"});
        }]);
    }];
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
