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
            .splitLineEqual([PYGaugeSplitLine initPYGaugeSplitLineWithBlock:^(PYGaugeSplitLine *splitLine) {
                splitLine.lengthEqual(@20);
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
            .splitLineEqual([PYGaugeSplitLine initPYGaugeSplitLineWithBlock:^(PYGaugeSplitLine *splitLine) {
                splitLine.showEqual(YES)
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
            series.minEqual(@0)
            .maxEqual(@220)
            .radiusEqual(@"60%")
            .splitNumberEqual(@11)
            .axisLineEqual([PYAxisLine initPYAxisLineWithBlock:^(PYAxisLine *axisLine) {
                axisLine.lineStyleEqual([PYLineStyle initPYLineStyleWithBlock:^(PYLineStyle *lineStyle) {
                    lineStyle.widthEqual(@10);
                }]);
            }])
            .axisTickEqual([PYAxisTick initPYAxisTickWithBlock:^(PYAxisTick *axisTick) {
                axisTick.lengthEqual(@15)
                .lineStyleEqual([PYLineStyle initPYLineStyleWithBlock:^(PYLineStyle *lineStyle) {
                    lineStyle.colorEqual(@"auto");
                }]);
            }])
            .splitLineEqual([PYGaugeSplitLine initPYGaugeSplitLineWithBlock:^(PYGaugeSplitLine *splitLine) {
                splitLine.lengthEqual(@20);
            }])
            .titleEqual([PYGaugeTitle initPYGaugeTitleWithBlock:^(PYGaugeTitle *title) {
                title.offsetCenterEqual(@[@"0", @"-35%"])
                .textStyleEqual([PYTextStyle initPYTextStyleWithBlock:^(PYTextStyle *textStyle) {
                    textStyle.fontWeightEqual(PYTextStyleFontWeightBolder)
                    .fontSizeEqual(@12)
                    .fontStyleEqual(PYTextStyleFontStyleItalic);
                }]);
            }])
            .detailEqual([PYGaugeDetail initPYGaugeDetailWithBlock:^(PYGaugeDetail *detail) {
                detail.textStyleEqual([PYTextStyle initPYTextStyleWithBlock:^(PYTextStyle *textStyle) {
                    textStyle.fontWeightEqual(PYTextStyleFontWeightBolder);
                }]);
            }])
            .zEqual(@3)
            .nameEqual(@"速度")
            .typeEqual(PYSeriesTypeGauge)
            .addData(@{@"value":@40, @"name":@"km/h"});
        }])
        .addSeries([PYGaugeSeries initPYGaugeSeriesWithBlock:^(PYGaugeSeries *series) {
            series.centerEqual(@[@"15%", @"55%"])
            .radiusEqual(@"45%")
            .minEqual(@0)
            .maxEqual(@7)
            .endAngleEqual(@45)
            .splitNumberEqual(@7)
            .axisLineEqual([PYAxisLine initPYAxisLineWithBlock:^(PYAxisLine *axisLine) {
                axisLine.lineStyleEqual([PYLineStyle initPYLineStyleWithBlock:^(PYLineStyle *lineStyle) {
                    lineStyle.widthEqual(@8);
                }]);
            }])
            .axisTickEqual([PYAxisTick initPYAxisTickWithBlock:^(PYAxisTick *axisTick) {
                axisTick.lengthEqual(@12)
                .lineStyleEqual([PYLineStyle initPYLineStyleWithBlock:^(PYLineStyle *lineStyle) {
                    lineStyle.colorEqual(@"auto");
                }]);
            }])
            .splitLineEqual([PYGaugeSplitLine initPYGaugeSplitLineWithBlock:^(PYGaugeSplitLine *splitLine) {
                splitLine.lengthEqual(@20)
                .lineStyleEqual([PYLineStyle initPYLineStyleWithBlock:^(PYLineStyle *lineStyle) {
                    lineStyle.colorEqual(@"auto");
                }]);
            }])
            .pointerEqual([PYGaugePointer initPYGaugePointerWithBlock:^(PYGaugePointer *pointer) {
                pointer.widthEqual(@5);
            }])
            .titleEqual([PYGaugeTitle initPYGaugeTitleWithBlock:^(PYGaugeTitle *title) {
                title.offsetCenterEqual(@[@0, @"-20%"])
                .textStyleEqual([PYTextStyle initPYTextStyleWithBlock:^(PYTextStyle *textStyle) {
                    textStyle.fontSizeEqual(@8);
                }]);
            }])
            .detailEqual([PYGaugeDetail initPYGaugeDetailWithBlock:^(PYGaugeDetail *detail) {
                detail.textStyleEqual([PYTextStyle initPYTextStyleWithBlock:^(PYTextStyle *textStyle) {
                    textStyle.fontWeightEqual(PYTextStyleFontWeightBolder);
                }]);
            }])
            .nameEqual(@"转速")
            .typeEqual(PYSeriesTypeGauge)
            .addData(@{@"value":@1.5, @"name":@"x1000 r/min"});
        }])
        .addSeries([PYGaugeSeries initPYGaugeSeriesWithBlock:^(PYGaugeSeries *series) {
            series.radiusEqual(@"45%")
            .minEqual(@0)
            .maxEqual(@2)
            .startAngleEqual(@135)
            .endAngleEqual(@45)
            .splitNumberEqual(@2)
            .axisLineEqual([PYAxisLine initPYAxisLineWithBlock:^(PYAxisLine *axisLine) {
                axisLine.lineStyleEqual([PYLineStyle initPYLineStyleWithBlock:^(PYLineStyle *lineStyle) {
                    lineStyle.colorEqual(@[
                                           @[@0.2, [PYColor colorWithHexString:@"#ff4500"]],
                                           @[@0.8, [PYColor colorWithHexString:@"#48b"]],
                                           @[@1, [PYColor colorWithHexString:@"#228b22"]]
                                           ])
                    .widthEqual(@8);
                }]);
            }])
            .axisTickEqual([PYAxisTick initPYAxisTickWithBlock:^(PYAxisTick *axisTick) {
                axisTick.splitNumberEqual(@5)
                .lengthEqual(@10)
                .lineStyleEqual([PYLineStyle initPYLineStyleWithBlock:^(PYLineStyle *lineStyle) {
                    lineStyle.colorEqual(@"auto");
                }]);
            }])
            .axisLabelEqual([PYAxisLabel initPYAxisLabelWithBlock:^(PYAxisLabel *axisLabel) {
                axisLabel.formatterEqual(@"(function(v){switch (v + \'\') {case \'0\' : return \'E\';case \'1\' : return \'Gas\';case \'2\' : return \'F\';}})");
            }])
            .splitLineEqual([PYGaugeSplitLine initPYGaugeSplitLineWithBlock:^(PYGaugeSplitLine *splitLine) {
                splitLine.lengthEqual(@15)
                .lineStyleEqual([PYLineStyle initPYLineStyleWithBlock:^(PYLineStyle *lineStyle) {
                    lineStyle.colorEqual(@"auto");
                }]);
            }])
            .pointerEqual([PYGaugePointer initPYGaugePointerWithBlock:^(PYGaugePointer *pointer) {
                pointer.widthEqual(@2);
            }])
            .titleEqual([PYGaugeTitle initPYGaugeTitleWithBlock:^(PYGaugeTitle *title) {
                title.showEqual(NO);
            }])
            .detailEqual([PYGaugeDetail initPYGaugeDetailWithBlock:^(PYGaugeDetail *detail) {
                detail.showEqual(NO);
            }])
            .centerEqual(@[@"85%", @"50%"])
            .typeEqual(PYSeriesTypeGauge)
            .nameEqual(@"油表")
            .addData(@{@"value":@0.5, @"name":@"gas"});
        }])
        .addSeries([PYGaugeSeries initPYGaugeSeriesWithBlock:^(PYGaugeSeries *series) {
            series.centerEqual(@[@"85%", @"50%"])
            .radiusEqual(@"45%")
            .minEqual(@0)
            .maxEqual(@2)
            .startAngleEqual(@315)
            .endAngleEqual(@225)
            .splitNumberEqual(@2)
            .axisLineEqual([PYAxisLine initPYAxisLineWithBlock:^(PYAxisLine *axisLine) {
                axisLine.lineStyleEqual([PYLineStyle initPYLineStyleWithBlock:^(PYLineStyle *lineStyle) {
                    lineStyle.colorEqual(@[
                                           @[@0.2, [PYColor colorWithHexString:@"#ff4500"]],
                                           @[@0.8, [PYColor colorWithHexString:@"#48b"]],
                                           @[@1, [PYColor colorWithHexString:@"#228b22"]]
                                           ])
                    .widthEqual(@8);
                }]);
            }])
            .axisTickEqual([PYAxisTick initPYAxisTickWithBlock:^(PYAxisTick *axisTick) {
                axisTick.showEqual(NO);
            }])
            .axisLabelEqual([PYAxisLabel initPYAxisLabelWithBlock:^(PYAxisLabel *axisLabel) {
                axisLabel.formatterEqual(@"(function(v){switch (v + \'\') {case \'0\' : return \'H\';case \'1\' : return \'Water\';case \'2\' : return \'C\';}})");
            }])
            .splitLineEqual([PYGaugeSplitLine initPYGaugeSplitLineWithBlock:^(PYGaugeSplitLine *splitLine) {
                splitLine.lengthEqual(@15)
                .lineStyleEqual([PYLineStyle initPYLineStyleWithBlock:^(PYLineStyle *lineStyle) {
                    lineStyle.colorEqual(@"auto");
                }]);
            }])
            .pointerEqual([PYGaugePointer initPYGaugePointerWithBlock:^(PYGaugePointer *pointer) {
                pointer.widthEqual(@2);
            }])
            .titleEqual([PYGaugeTitle initPYGaugeTitleWithBlock:^(PYGaugeTitle *title) {
                title.showEqual(NO);
            }])
            .detailEqual([PYGaugeDetail initPYGaugeDetailWithBlock:^(PYGaugeDetail *detail) {
                detail.showEqual(NO);
            }])
            .nameEqual(@"水表")
            .typeEqual(PYSeriesTypeGauge)
            .addData(@{@"value":@0.5, @"name":@"gas"});
        }]);
    }];
}

+ (PYOption *)multipleAngularGauges2Option {
    return [PYOption initPYOptionWithBlock:^(PYOption *option) {
        option.backgroundColorEqual([PYColor colorWithHexString:@"#1b1b1b"])
        .tooltipEqual([PYTooltip initPYTooltipWithBlock:^(PYTooltip *tooltip) {
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
            series.minEqual(@0)
            .maxEqual(@220)
            .radiusEqual(@"60%")
            .splitNumberEqual(@11)
            .axisLineEqual([PYAxisLine initPYAxisLineWithBlock:^(PYAxisLine *axisLine) {
                axisLine.lineStyleEqual([PYLineStyle initPYLineStyleWithBlock:^(PYLineStyle *lineStyle) {
                    lineStyle.colorEqual(@[
                                           @[@0.09, @"lime"],
                                           @[@0.82, [PYColor colorWithHexString:@"#1e90ff"]],
                                           @[@1, [PYColor colorWithHexString:@"ff4500"]]
                                           ])
                    .widthEqual(@3)
                    .shadowColorEqual([PYColor colorWithHexString:@"#fff"])
                    .shadowBlurEqual(@10);
                }]);
            }])
            .axisLabelEqual([PYAxisLabel initPYAxisLabelWithBlock:^(PYAxisLabel *axisLabel) {
                axisLabel.textStyleEqual([PYTextStyle initPYTextStyleWithBlock:^(PYTextStyle *textStyle) {
                    textStyle.fontWeightEqual(PYTextStyleFontWeightBolder)
                    .colorEqual([PYColor colorWithHexString:@"#fff"]);
                }]);
            }])
            .axisTickEqual([PYAxisTick initPYAxisTickWithBlock:^(PYAxisTick *axisTick) {
                axisTick.lengthEqual(@8)
                .lineStyleEqual([PYLineStyle initPYLineStyleWithBlock:^(PYLineStyle *lineStyle) {
                    lineStyle.colorEqual(@"auto")
                    .shadowColorEqual([PYColor colorWithHexString:@"#fff"])
                    .shadowBlurEqual(@10);
                }]);
            }])
            .splitLineEqual([PYGaugeSplitLine initPYGaugeSplitLineWithBlock:^(PYGaugeSplitLine *splitLine) {
                splitLine.lengthEqual(@10)
                .lineStyleEqual([PYLineStyle initPYLineStyleWithBlock:^(PYLineStyle *lineStyle) {
                    lineStyle.widthEqual(@3)
                    .colorEqual([PYColor colorWithHexString:@"#fff"])
                    .shadowColorEqual([PYColor colorWithHexString:@"#fff"])
                    .shadowBlurEqual(@10);
                }]);
            }])
            .pointerEqual([PYGaugePointer initPYGaugePointerWithBlock:^(PYGaugePointer *pointer) {
                pointer.shadowColorEqual([PYColor colorWithHexString:@"#fff"])
                .shadowBlurEqual(@5);
            }])
            .titleEqual([PYGaugeTitle initPYGaugeTitleWithBlock:^(PYGaugeTitle *title) {
                title.offsetCenterEqual(@[@"0", @"-35%"])
                .textStyleEqual([PYTextStyle initPYTextStyleWithBlock:^(PYTextStyle *textStyle) {
                    textStyle.fontWeightEqual(PYTextStyleFontWeightBolder)
                    .fontSizeEqual(@12)
                    .fontStyleEqual(PYTextStyleFontStyleItalic)
                    .colorEqual([PYColor colorWithHexString:@"#fff"])
                    .shadowColorEqual([PYColor colorWithHexString:@"#fff"])
                    .shadowBlurEqual(@10);
                }]);
            }])
            .detailEqual([PYGaugeDetail initPYGaugeDetailWithBlock:^(PYGaugeDetail *detail) {
                detail.backgroundColorEqual(PYRGBA(30, 144, 255, 0.8))
                .borderWidthEqual(@1)
                .borderColorEqual([PYColor colorWithHexString:@"#fff"])
                .shadowColorEqual([PYColor colorWithHexString:@"#fff"])
                .shadowBlurEqual(@5)
                .widthEqual(@40)
                .heightEqual(@15)
                .textStyleEqual([PYTextStyle initPYTextStyleWithBlock:^(PYTextStyle *textStyle) {
                    textStyle.fontWeightEqual(PYTextStyleFontWeightBolder)
                    .colorEqual([PYColor colorWithHexString:@"#fff"]);
                }]);
            }])
            .zEqual(@3)
            .nameEqual(@"速度")
            .typeEqual(PYSeriesTypeGauge)
            .addData(@{@"value":@40, @"name":@"km/h"});
        }])
        .addSeries([PYGaugeSeries initPYGaugeSeriesWithBlock:^(PYGaugeSeries *series) {
            series.centerEqual(@[@"15%", @"55%"])
            .radiusEqual(@"45%")
            .minEqual(@0)
            .maxEqual(@7)
            .endAngleEqual(@45)
            .splitNumberEqual(@7)
            .axisLineEqual([PYAxisLine initPYAxisLineWithBlock:^(PYAxisLine *axisLine) {
                axisLine.lineStyleEqual([PYLineStyle initPYLineStyleWithBlock:^(PYLineStyle *lineStyle) {
                    lineStyle.colorEqual(@[
                                           @[@0.09, @"lime"],
                                           @[@0.82, [PYColor colorWithHexString:@"#1e90ff"]],
                                           @[@1, [PYColor colorWithHexString:@"ff4500"]]
                                           ])
                    .widthEqual(@2)
                    .shadowColorEqual([PYColor colorWithHexString:@"#fff"])
                    .shadowBlurEqual(@10);
                }]);
            }])
            .axisLabelEqual([PYAxisLabel initPYAxisLabelWithBlock:^(PYAxisLabel *axisLabel) {
                axisLabel.textStyleEqual([PYTextStyle initPYTextStyleWithBlock:^(PYTextStyle *textStyle) {
                    textStyle.fontWeightEqual(PYTextStyleFontWeightBolder)
                    .shadowColorEqual([PYColor colorWithHexString:@"#fff"]);
                }]);
            }])
            .axisTickEqual([PYAxisTick initPYAxisTickWithBlock:^(PYAxisTick *axisTick) {
                axisTick.lengthEqual(@12)
                .lineStyleEqual([PYLineStyle initPYLineStyleWithBlock:^(PYLineStyle *lineStyle) {
                    lineStyle.colorEqual(@"auto");
                }]);
            }])
            .splitLineEqual([PYGaugeSplitLine initPYGaugeSplitLineWithBlock:^(PYGaugeSplitLine *splitLine) {
                splitLine.lengthEqual(@10)
                .lineStyleEqual([PYLineStyle initPYLineStyleWithBlock:^(PYLineStyle *lineStyle) {
                    lineStyle.widthEqual(@3)
                    .colorEqual([PYColor colorWithHexString:@"#fff"])
                    .shadowColorEqual([PYColor colorWithHexString:@"#fff"])
                    .shadowBlurEqual(@10);
                }]);
            }])
            .pointerEqual([PYGaugePointer initPYGaugePointerWithBlock:^(PYGaugePointer *pointer) {
                pointer.widthEqual(@5)
                .shadowColorEqual([PYColor colorWithHexString:@"#fff"])
                .shadowBlurEqual(@5);
            }])
            .titleEqual([PYGaugeTitle initPYGaugeTitleWithBlock:^(PYGaugeTitle *title) {
                title.offsetCenterEqual(@[@0, @"-20%"])
                .textStyleEqual([PYTextStyle initPYTextStyleWithBlock:^(PYTextStyle *textStyle) {
                    textStyle.fontSizeEqual(@8)
                    .fontStyleEqual(PYTextStyleFontStyleItalic)
                    .colorEqual([PYColor colorWithHexString:@"#fff"])
                    .shadowColorEqual([PYColor colorWithHexString:@"#fff"])
                    .shadowBlurEqual(@10);
                }]);
            }])
            .detailEqual([PYGaugeDetail initPYGaugeDetailWithBlock:^(PYGaugeDetail *detail) {
                detail.borderColorEqual([PYColor colorWithHexString:@"#fff"])
                .shadowColorEqual([PYColor colorWithHexString:@"#fff"])
                .shadowBlurEqual(@5)
                .widthEqual(@80)
                .heightEqual(@30)
                .textStyleEqual([PYTextStyle initPYTextStyleWithBlock:^(PYTextStyle *textStyle) {
                    textStyle.fontWeightEqual(PYTextStyleFontWeightBolder)
                    .colorEqual([PYColor colorWithHexString:@"#fff"]);
                }]);
            }])
            .nameEqual(@"转速")
            .typeEqual(PYSeriesTypeGauge)
            .addData(@{@"value":@1.5, @"name":@"x1000 r/min"});
        }])
        .addSeries([PYGaugeSeries initPYGaugeSeriesWithBlock:^(PYGaugeSeries *series) {
            series.radiusEqual(@"45%")
            .minEqual(@0)
            .maxEqual(@2)
            .startAngleEqual(@135)
            .endAngleEqual(@45)
            .splitNumberEqual(@2)
            .axisLineEqual([PYAxisLine initPYAxisLineWithBlock:^(PYAxisLine *axisLine) {
                axisLine.lineStyleEqual([PYLineStyle initPYLineStyleWithBlock:^(PYLineStyle *lineStyle) {
                    lineStyle.colorEqual(@[
                                           @[@0.09, @"lime"],
                                           @[@0.82, [PYColor colorWithHexString:@"#1e90ff"]],
                                           @[@1, [PYColor colorWithHexString:@"ff4500"]]
                                           ])
                    .widthEqual(@2)
                    .shadowColorEqual([PYColor colorWithHexString:@"#fff"])
                    .shadowBlurEqual(@10);
                }]);
            }])
            .axisTickEqual([PYAxisTick initPYAxisTickWithBlock:^(PYAxisTick *axisTick) {
                axisTick.lengthEqual(@12)
                .lineStyleEqual([PYLineStyle initPYLineStyleWithBlock:^(PYLineStyle *lineStyle) {
                    lineStyle.colorEqual(@"auto")
                    .shadowColorEqual([PYColor colorWithHexString:@"#fff"])
                    .shadowBlurEqual(@10);
                }]);
            }])
            .axisLabelEqual([PYAxisLabel initPYAxisLabelWithBlock:^(PYAxisLabel *axisLabel) {
                axisLabel.formatterEqual(@"(function(v){switch (v + \'\') {case \'0\' : return \'E\';case \'1\' : return \'Gas\';case \'2\' : return \'F\';}})")
                .textStyleEqual([PYTextStyle initPYTextStyleWithBlock:^(PYTextStyle *textStyle) {
                    textStyle.fontWeightEqual(PYTextStyleFontWeightBolder)
                    .shadowColorEqual([PYColor colorWithHexString:@"#fff"]);
                }]);
            }])
            .splitLineEqual([PYGaugeSplitLine initPYGaugeSplitLineWithBlock:^(PYGaugeSplitLine *splitLine) {
                splitLine.lengthEqual(@15)
                .lineStyleEqual([PYLineStyle initPYLineStyleWithBlock:^(PYLineStyle *lineStyle) {
                    lineStyle.widthEqual(@3)
                    .colorEqual([PYColor colorWithHexString:@"#fff"])
                    .shadowColorEqual([PYColor colorWithHexString:@"#fff"])
                    .shadowBlurEqual(@10);
                }]);
            }])
            .pointerEqual([PYGaugePointer initPYGaugePointerWithBlock:^(PYGaugePointer *pointer) {
                pointer.widthEqual(@2)
                .shadowColorEqual([PYColor colorWithHexString:@"#fff"])
                .shadowBlurEqual(@5);
            }])
            .titleEqual([PYGaugeTitle initPYGaugeTitleWithBlock:^(PYGaugeTitle *title) {
                title.showEqual(NO);
            }])
            .detailEqual([PYGaugeDetail initPYGaugeDetailWithBlock:^(PYGaugeDetail *detail) {
                detail.showEqual(NO);
            }])
            .centerEqual(@[@"85%", @"50%"])
            .typeEqual(PYSeriesTypeGauge)
            .nameEqual(@"油表")
            .addData(@{@"value":@0.5, @"name":@"gas"});
        }])
        .addSeries([PYGaugeSeries initPYGaugeSeriesWithBlock:^(PYGaugeSeries *series) {
            series.centerEqual(@[@"85%", @"50%"])
            .radiusEqual(@"45%")
            .minEqual(@0)
            .maxEqual(@2)
            .startAngleEqual(@315)
            .endAngleEqual(@225)
            .splitNumberEqual(@2)
            .axisLineEqual([PYAxisLine initPYAxisLineWithBlock:^(PYAxisLine *axisLine) {
                axisLine.lineStyleEqual([PYLineStyle initPYLineStyleWithBlock:^(PYLineStyle *lineStyle) {
                    lineStyle.colorEqual(@[
                                           @[@0.09, @"lime"],
                                           @[@0.82, [PYColor colorWithHexString:@"#1e90ff"]],
                                           @[@1, [PYColor colorWithHexString:@"ff4500"]]
                                           ])
                    .widthEqual(@2)
                    .shadowColorEqual([PYColor colorWithHexString:@"#fff"])
                    .shadowBlurEqual(@10);
                }]);
            }])
            .axisTickEqual([PYAxisTick initPYAxisTickWithBlock:^(PYAxisTick *axisTick) {
                axisTick.showEqual(NO);
            }])
            .axisLabelEqual([PYAxisLabel initPYAxisLabelWithBlock:^(PYAxisLabel *axisLabel) {
                axisLabel.formatterEqual(@"(function(v){switch (v + \'\') {case \'0\' : return \'H\';case \'1\' : return \'Water\';case \'2\' : return \'C\';}})")
                .textStyleEqual([PYTextStyle initPYTextStyleWithBlock:^(PYTextStyle *textStyle) {
                    textStyle.fontWeightEqual(PYTextStyleFontWeightBolder)
                    .colorEqual([PYColor colorWithHexString:@"#fff"]);
                }]);
            }])
            .splitLineEqual([PYGaugeSplitLine initPYGaugeSplitLineWithBlock:^(PYGaugeSplitLine *splitLine) {
                splitLine.lengthEqual(@10)
                .lineStyleEqual([PYLineStyle initPYLineStyleWithBlock:^(PYLineStyle *lineStyle) {
                    lineStyle.widthEqual(@3)
                    .colorEqual([PYColor colorWithHexString:@"#fff"])
                    .shadowColorEqual([PYColor colorWithHexString:@"#fff"])
                    .shadowBlurEqual(@10);
                }]);
            }])
            .pointerEqual([PYGaugePointer initPYGaugePointerWithBlock:^(PYGaugePointer *pointer) {
                pointer.widthEqual(@2)
                .shadowColorEqual([PYColor colorWithHexString:@"#fff"])
                .shadowBlurEqual(@5);
            }])
            .titleEqual([PYGaugeTitle initPYGaugeTitleWithBlock:^(PYGaugeTitle *title) {
                title.showEqual(NO);
            }])
            .detailEqual([PYGaugeDetail initPYGaugeDetailWithBlock:^(PYGaugeDetail *detail) {
                detail.showEqual(NO);
            }])
            .nameEqual(@"水表")
            .typeEqual(PYSeriesTypeGauge)
            .addData(@{@"value":@0.5, @"name":@"gas"});
        }]);
    }];
}

+ (PYOption *)basicAngularGauge4Option {
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
            series.centerEqual(@[@"50%", @"50%"])
            .radiusEqual(@[@0, @"75%"])
            .startAngleEqual(@140)
            .endAngleEqual(@(-140))
            .minEqual(@0)
            .maxEqual(@100)
            .splitNumberEqual(@10)
            .axisLineEqual([PYAxisLine initPYAxisLineWithBlock:^(PYAxisLine *axisLine) {
                axisLine.showEqual(YES)
                .lineStyleEqual([PYLineStyle initPYLineStyleWithBlock:^(PYLineStyle *lineStyle) {
                    lineStyle.colorEqual(@[
                                           @[@0.2, @"lightgreen"],
                                           @[@0.4, @"orange"],
                                           @[@0.8, @"skyblue"],
                                           @[@1, [PYColor colorWithHexString:@"ff4500"]]
                                           ])
                    .widthEqual(@30);
                }]);
            }])
            .axisTickEqual([PYAxisTick initPYAxisTickWithBlock:^(PYAxisTick *axisTick) {
                axisTick.showEqual(YES)
                .splitNumberEqual(@5)
                .lengthEqual(@8)
                .lineStyleEqual([PYLineStyle initPYLineStyleWithBlock:^(PYLineStyle *lineStyle) {
                    lineStyle.colorEqual([PYColor colorWithHexString:@"#eee"])
                    .widthEqual(@1)
                    .typeEqual(PYLineStyleTypeSolid);
                }]);
            }])
            .axisLabelEqual([PYAxisLabel initPYAxisLabelWithBlock:^(PYAxisLabel *axisLabel) {
                axisLabel.showEqual(YES)
                .formatterEqual(@"(function(v){switch (v+\'\'){case \'10\': return \'弱\';case \'30\': return \'低\';case \'60\': return \'中\';case \'90\': return \'高\';default: return \'\';}})")
                .textStyleEqual([PYTextStyle initPYTextStyleWithBlock:^(PYTextStyle *textStyle) {
                    textStyle.colorEqual([PYColor colorWithHexString:@"#333"]);
                }]);
            }])
            .splitLineEqual([PYGaugeSplitLine initPYGaugeSplitLineWithBlock:^(PYGaugeSplitLine *splitLine) {
                splitLine.showEqual(YES)
                .lengthEqual(@30)
                .lineStyleEqual([PYLineStyle initPYLineStyleWithBlock:^(PYLineStyle *lineStyle) {
                    lineStyle.colorEqual([PYColor colorWithHexString:@"#eee"])
                    .widthEqual(@2)
                    .typeEqual(PYLineStyleTypeSolid);
                }]);
            }])
            .pointerEqual([PYGaugePointer initPYGaugePointerWithBlock:^(PYGaugePointer *pointer) {
                pointer.lengthEqual(@"80%").widthEqual(@8).colorEqual(@"auto");
            }])
            .titleEqual([PYGaugeTitle initPYGaugeTitleWithBlock:^(PYGaugeTitle *title) {
                title.showEqual(YES)
                .offsetCenterEqual(@[@"-65%", @(-10)])
                .textStyleEqual([PYTextStyle initPYTextStyleWithBlock:^(PYTextStyle *textStyle) {
                    textStyle.colorEqual([PYColor colorWithHexString:@"#333"])
                    .fontSizeEqual(@15);
                }]);
            }])
            .detailEqual([PYGaugeDetail initPYGaugeDetailWithBlock:^(PYGaugeDetail *detail) {
                detail.showEqual(YES)
                .backgroundColorEqual(PYRGBA(0, 0, 0, 0))
                .borderWidthEqual(@0)
                .borderColorEqual([PYColor colorWithHexString:@"#ccc"])
                .widthEqual(@100)
                .heightEqual(@40)
                .offsetCenterEqual(@[@"-60%", @0])
                .formatterEqual(@"{value}%")
                .textStyleEqual([PYTextStyle initPYTextStyleWithBlock:^(PYTextStyle *textStyle) {
                    textStyle.colorEqual(@"auto")
                    .fontSizeEqual(@30);
                }]);
            }])
            .nameEqual(@"个性化仪表盘")
            .typeEqual(PYSeriesTypeGauge)
            .addData(@{@"value":@50, @"name":@"仪表盘"});
        }]);
    }];
}

@end
