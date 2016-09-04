//
//  PYBarDemoOptions.m
//  iOS+Echarts
//
//  Created by Pluto Y on 9/4/16.
//  Copyright © 2016 pluto+y. All rights reserved.
//

#import "PYBarDemoOptions.h"

@implementation PYBarDemoOptions

+ (PYOption *)basicColumnOption {
    return [PYOption initPYOptionWithBlock:^(PYOption *option) {
        option.titleEqual([PYTitle initPYTitleWithBlock:^(PYTitle *title) {
            title.textEqual(@"某地区蒸发量和降水量").subtextEqual(@"纯属虚构");
        }])
        .tooltipEqual([PYTooltip initPYTooltipWithBlock:^(PYTooltip *tooltip) {
            tooltip.triggerEqual(PYTooltipTriggerAxis);
        }])
        .legendEqual([PYLegend initPYLegendWithBlock:^(PYLegend *legend) {
            legend.dataEqual(@[@"蒸发量",@"降水量"]);
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
        .calculableEqual(YES)
        .addXAxis([PYAxis initPYAxisWithBlock:^(PYAxis *axis) {
            axis.typeEqual(PYAxisTypeCategory)
            .addDataArr(@[@"1月",@"2月",@"3月",@"4月",@"5月",@"6月",@"7月",@"8月",@"9月",@"10月",@"11月",@"12月"]);
        }])
        .addYAxis([PYAxis initPYAxisWithBlock:^(PYAxis *axis) {
            axis.typeEqual(PYAxisTypeValue);
        }])
        .addSeries([PYCartesianSeries initPYSeriesWithBlock:^(PYSeries *series) {
            series.nameEqual(@"蒸发量")
            .typeEqual(PYSeriesTypeBar)
            .addDataArr(@[@2.0, @4.9, @7.0, @23.2, @25.6, @76.7, @135.6, @162.2, @32.6, @20.0, @6.4, @3.3])
            .markPointEqual([PYMarkPoint initPYMarkPointWithBlock:^(PYMarkPoint *point) {
                point.addData(@{@"type":@"max", @"name":@"最大值"})
                .addData(@{@"type":@"min", @"name":@"最小值"});
            }])
            .markLineEqual([PYMarkLine initPYMarkLineWithBlock:^(PYMarkLine *markLine) {
                markLine.addData(@{@"type":@"average", @"name":@"平均值"});
            }]);
        }])
        .addSeries([PYCartesianSeries initPYSeriesWithBlock:^(PYSeries *series) {
            series.nameEqual(@"降水量")
            .typeEqual(PYSeriesTypeBar)
            .addDataArr(@[@2.6, @5.9, @9.0, @26.4, @28.7, @70.7, @175.6, @182.2, @48.7, @18.8, @6.0, @2.3])
            .markPointEqual([PYMarkPoint initPYMarkPointWithBlock:^(PYMarkPoint *point) {
                point.addData(@{@"name":@"年最高", @"value":@182.2, @"xAxis":@7, @"yAxis":@183, @"symbolSize":@18})
                .addData(@{@"name":@"年最低", @"value":@2.3, @"xAxis":@11, @"yAxis":@3});
            }])
            .markLineEqual([PYMarkLine initPYMarkLineWithBlock:^(PYMarkLine *markLine) {
                markLine.addData(@{@"type":@"average", @"name":@"平均值"});
            }]);
        }]);
    }];
}

+ (PYOption *)stackedColumnOption {
    return [PYOption initPYOptionWithBlock:^(PYOption *option) {
        option.tooltipEqual([PYTooltip initPYTooltipWithBlock:^(PYTooltip *tooltip) {
            tooltip.triggerEqual(PYTooltipTriggerAxis)
            .axisPointerEqual([PYAxisPointer initPYAxisPointerWithBlock:^(PYAxisPointer *axisPoint) {
                axisPoint.typeEqual(PYAxisPointerTypeShadow);
            }]);
        }])
        .legendEqual([PYLegend initPYLegendWithBlock:^(PYLegend *legend) {
            legend.dataEqual(@[@"直接访问",@"邮件营销",@"联盟广告",@"视频广告",@"搜索引擎",@"百度",@"谷歌",@"必应",@"其他"]);
        }])
        .gridEqual([PYGrid initPYGridWithBlock:^(PYGrid *grid) {
            grid.xEqual(@40).x2Equal(@50);
        }])
        .toolboxEqual([PYToolbox initPYToolboxWithBlock:^(PYToolbox *toolbox) {
            toolbox.showEqual(YES)
            .orientEqual(PYOrientVertical)
            .xEqual(PYPositionRight)
            .yEqual(PYPositionCenter)
            .featureEqual([PYToolboxFeature initPYToolboxFeatureWithBlock:^(PYToolboxFeature *feature) {
                feature.markEqual([PYToolboxFeatureMark initPYToolboxFeatureMarkWithBlock:^(PYToolboxFeatureMark *mark) {
                    mark.showEqual(YES);
                }])
                .dataViewEqual([PYToolboxFeatureDataView initPYToolboxFeatureDataViewWithBlock:^(PYToolboxFeatureDataView *dataView) {
                    dataView.showEqual(YES).readOnlyEqual(NO);
                }])
                .magicTypeEqual([PYToolboxFeatureMagicType initPYToolboxFeatureMagicTypeWithBlock:^(PYToolboxFeatureMagicType *magicType) {
                    magicType.showEqual(YES).typeEqual(@[PYSeriesTypeLine, PYSeriesTypeBar, @"stack", @"tiled"]);
                }])
                .restoreEqual([PYToolboxFeatureRestore initPYToolboxFeatureRestoreWithBlock:^(PYToolboxFeatureRestore *restore) {
                    restore.showEqual(YES);
                }]);
            }]);
        }])
        .calculableEqual(YES)
        .addXAxis([PYAxis initPYAxisWithBlock:^(PYAxis *axis) {
            axis.typeEqual(PYAxisTypeCategory)
            .addDataArr(@[@"周一",@"周二",@"周三",@"周四",@"周五",@"周六",@"周日"]);
        }])
        .addYAxis([PYAxis initPYAxisWithBlock:^(PYAxis *axis) {
            axis.typeEqual(PYAxisTypeValue);
        }])
        .addSeries([PYCartesianSeries initPYCartesianSeriesWithBlock:^(PYCartesianSeries *series) {
            series.nameEqual(@"直接访问")
            .typeEqual(PYSeriesTypeBar)
            .dataEqual(@[@320, @332, @301, @334, @390, @330, @320]);
        }])
        .addSeries([PYCartesianSeries initPYCartesianSeriesWithBlock:^(PYCartesianSeries *series) {
            series.stackEqual(@"广告")
            .nameEqual(@"邮件营销")
            .typeEqual(PYSeriesTypeBar)
            .dataEqual(@[@120, @132, @101, @134, @90, @230, @210]);
        }])
        .addSeries([PYCartesianSeries initPYCartesianSeriesWithBlock:^(PYCartesianSeries *series) {
            series.stackEqual(@"广告")
            .nameEqual(@"联盟广告")
            .typeEqual(PYSeriesTypeBar)
            .dataEqual(@[@220, @182, @191, @234, @290, @330, @310]);
        }])
        .addSeries([PYCartesianSeries initPYCartesianSeriesWithBlock:^(PYCartesianSeries *series) {
            series.stackEqual(@"广告")
            .nameEqual(@"视频广告")
            .typeEqual(PYSeriesTypeBar)
            .dataEqual(@[@150, @232, @201, @154, @190, @330, @410]);
        }])
        .addSeries([PYCartesianSeries initPYCartesianSeriesWithBlock:^(PYCartesianSeries *series) {
            series.nameEqual(@"搜索引擎")
            .typeEqual(PYSeriesTypeBar)
            .dataEqual(@[@862, @1018, @964, @1026, @1679, @1600, @1570])
            .markLineEqual([PYMarkLine initPYMarkLineWithBlock:^(PYMarkLine *markLine) {
                markLine.itemStyleEqual([PYItemStyle initPYItemStyleWithBlock:^(PYItemStyle *itemStyle) {
                    itemStyle.normalEqual([PYItemStyleProp initPYItemStylePropWithBlock:^(PYItemStyleProp *normal) {
                        normal.lineStyleEqual([PYLineStyle initPYLineStyleWithBlock:^(PYLineStyle *lineStyle) {
                            lineStyle.typeEqual(PYLineStyleTypeDashed);
                        }]);
                    }]);
                }])
                .addDataArr(@[@{@"type":@"min"}, @{@"type":@"max"}]);
            }]);
        }])
        .addSeries([PYCartesianSeries initPYCartesianSeriesWithBlock:^(PYCartesianSeries *series) {
            series.barWidthEqual(@5)
            .stackEqual(@"搜索引擎")
            .nameEqual(@"百度")
            .typeEqual(PYSeriesTypeBar)
            .dataEqual(@[@620, @732, @701, @734, @1090, @1130, @1120]);
        }])
        .addSeries([PYCartesianSeries initPYCartesianSeriesWithBlock:^(PYCartesianSeries *series) {
            series.stackEqual(@"搜索引擎")
            .nameEqual(@"谷歌")
            .typeEqual(PYSeriesTypeBar)
            .dataEqual(@[@120, @132, @101, @134, @290, @230, @220]);
        }])
        .addSeries([PYCartesianSeries initPYCartesianSeriesWithBlock:^(PYCartesianSeries *series) {
            series.stackEqual(@"搜索引擎")
            .nameEqual(@"必应")
            .typeEqual(PYSeriesTypeBar)
            .dataEqual(@[@60, @72, @71, @74, @190, @130, @110]);
        }])
        .addSeries([PYCartesianSeries initPYCartesianSeriesWithBlock:^(PYCartesianSeries *series) {
            series.stackEqual(@"搜索引擎")
            .nameEqual(@"其他")
            .typeEqual(PYSeriesTypeBar)
            .dataEqual(@[@62, @82, @91, @84, @109, @110, @120]);
        }]);
    }];
}

+ (PYOption *)termometerOption {
    return nil;
}

+ (PYOption *)compositiveWaterfallOption {
    return nil;
}

+ (PYOption *)changeWaterfallOption {
    return nil;
}

+ (PYOption *)stackedAndClusteredColumnOption {
    return nil;
}

+ (PYOption *)basicBarOption {
    return nil;
}

+ (PYOption *)stackedBarOption {
    return nil;
}

+ (PYOption *)stackedFloatingBarOption {
    return nil;
}

+ (PYOption *)tornadoOption {
    return nil;
}

+ (PYOption *)tornado2Option {
    return nil;
}

+ (PYOption *)irrgularBarOption {
    return nil;
}


@end
