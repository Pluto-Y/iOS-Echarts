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
        .gridEqual([PYGrid initPYGridWithBlock:^(PYGrid *grid) {
            grid.xEqual(@40).x2Equal(@50);
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
    return [PYOption initPYOptionWithBlock:^(PYOption *option) {
        option.titleEqual([PYTitle initPYTitleWithBlock:^(PYTitle *title) {
            title.textEqual(@"温度计式图表")
            .subtextEqual(@"From ExcelHome")
            .sublinkEqual(@"http://e.weibo.com/1341556070/AizJXrAEa");
        }])
        .gridEqual([PYGrid initPYGridWithBlock:^(PYGrid *grid) {
            grid.xEqual(@40).x2Equal(@50);
        }])
        .tooltipEqual([PYTooltip initPYTooltipWithBlock:^(PYTooltip *tooltip) {
            tooltip.triggerEqual(PYTooltipTriggerAxis)
            .axisPointerEqual([PYAxisPointer initPYAxisPointerWithBlock:^(PYAxisPointer *axisPoint) {
                axisPoint.typeEqual(PYAxisPointerTypeShadow);
            }])
            .formatterEqual(@"(function (params){return params[0].name + '<br/>'+ params[0].seriesName + ' : ' + params[0].value + '<br/>'+ params[1].seriesName + ' : ' + (params[1].value + params[0].value);})");
        }])
        .legendEqual([PYLegend initPYLegendWithBlock:^(PYLegend *legend) {
            legend.selectedModeEqual(@NO)
            .dataEqual(@[@"Acutal", @"Forecast"]);
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
        .calculableEqual(YES)
        .addXAxis([PYAxis initPYAxisWithBlock:^(PYAxis *axis) {
            axis.typeEqual(PYAxisTypeCategory)
            .addDataArr(@[@"Cosco",@"CMA",@"APL",@"OOCL",@"Wanhai",@"Zim"]);
        }])
        .addYAxis([PYAxis initPYAxisWithBlock:^(PYAxis *axis) {
            axis.typeEqual(PYAxisTypeValue)
            .boundaryGapEqual(@[@0, @0.1]);
        }])
        .addSeries([PYCartesianSeries initPYCartesianSeriesWithBlock:^(PYCartesianSeries *series) {
            series.stackEqual(@"sum")
            .barCategoryGapEqual(@"50%")
            .nameEqual(@"Acutal")
            .typeEqual(PYSeriesTypeBar)
            .itemStyleEqual([PYItemStyle initPYItemStyleWithBlock:^(PYItemStyle *itemStyle) {
                itemStyle.normalEqual([PYItemStyleProp initPYItemStylePropWithBlock:^(PYItemStyleProp *normal) {
                    normal.colorEqual(@"tomato")
                    .barBorderColorEqual(@"tomato")
                    .barBorderWidthEqual(@6)
                    .barBorderRadiusEqual(@0)
                    .labelEqual([PYLabel initPYLabelWithBlock:^(PYLabel *label) {
                        label.showEqual(YES)
                        .positionEqual(@"insideTop");
                    }]);
                }]);
            }])
            .addDataArr(@[@260, @200, @220, @120, @100, @80]);
        }])
        .addSeries([PYCartesianSeries initPYCartesianSeriesWithBlock:^(PYCartesianSeries *series) {
            series.stackEqual(@"sum")
            .nameEqual(@"Forecast")
            .typeEqual(PYSeriesTypeBar)
            .itemStyleEqual([PYItemStyle initPYItemStyleWithBlock:^(PYItemStyle *itemStyle) {
                itemStyle.normalEqual([PYItemStyleProp initPYItemStylePropWithBlock:^(PYItemStyleProp *normal) {
                    normal.colorEqual([PYColor colorWithHexString:@"#fff"])
                    .barBorderColorEqual(@"tomato")
                    .barBorderWidthEqual(@6)
                    .barBorderRadiusEqual(@0)
                    .labelEqual([PYLabel initPYLabelWithBlock:^(PYLabel *label) {
                        label.showEqual(YES)
                        .positionEqual(@"top")
                        .formatterEqual(@"(function (params) {for (var i = 0, l = option.xAxis[0].data.length; i < l; i++) {if (option.xAxis[0].data[i] == params.name) {return option.series[0].data[i] + params.value;}}})")
                        .textStyleEqual([PYTextStyle initPYTextStyleWithBlock:^(PYTextStyle *textStyle) {
                            textStyle.colorEqual(@"tomato");
                        }]);
                    }]);
                }]);
            }])
            .addDataArr(@[@40, @80, @50, @80, @80, @70]);
        }]);
    }];
}

+ (PYOption *)compositiveWaterfallOption {
    return [PYOption initPYOptionWithBlock:^(PYOption *option) {
        option.titleEqual([PYTitle initPYTitleWithBlock:^(PYTitle *title) {
            title.textEqual(@"深圳月最低生活费组成（单位:元）")
            .subtextEqual(@"From ExcelHome")
            .sublinkEqual(@"http://e.weibo.com/1341556070/AjQH99che");
        }])
        .gridEqual([PYGrid initPYGridWithBlock:^(PYGrid *grid) {
            grid.xEqual(@40).x2Equal(@50);
        }])
        .tooltipEqual([PYTooltip initPYTooltipWithBlock:^(PYTooltip *tooltip) {
            tooltip.triggerEqual(PYTooltipTriggerAxis)
            .axisPointerEqual([PYAxisPointer initPYAxisPointerWithBlock:^(PYAxisPointer *axisPoint) {
                axisPoint.typeEqual(PYAxisPointerTypeShadow);
            }])
            .formatterEqual(@"(function (params) {var tar = params[0];return tar.name + '<br/>' + tar.seriesName + ' : ' + tar.value;})");
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
        .addXAxis([PYAxis initPYAxisWithBlock:^(PYAxis *axis) {
            axis.typeEqual(PYAxisTypeCategory)
            .splitLineEqual([PYAxisSplitLine initPYAxisSplitLineWithBlock:^(PYAxisSplitLine *axisSplitLine) {
                axisSplitLine.showEqual(NO);
            }])
            .addDataArr(@[@"总费用",@"房租",@"水电费",@"交通费",@"伙食费",@"日用品数"]);
        }])
        .addYAxis([PYAxis initPYAxisWithBlock:^(PYAxis *axis) {
            axis.typeEqual(PYAxisTypeValue);
        }])
        .addSeries([PYCartesianSeries initPYCartesianSeriesWithBlock:^(PYCartesianSeries *series) {
            series.stackEqual(@"总量")
            .nameEqual(@"辅助")
            .typeEqual(PYSeriesTypeBar)
            .itemStyleEqual([PYItemStyle initPYItemStyleWithBlock:^(PYItemStyle *itemStyle) {
                itemStyle.normalEqual([PYItemStyleProp initPYItemStylePropWithBlock:^(PYItemStyleProp *normal) {
                    normal.barBorderColorEqual(PYRGBA(0, 0, 0, 0))
                    .colorEqual(PYRGBA(0, 0, 0, 0));
                }])
                .emphasisEqual([PYItemStyleProp initPYItemStylePropWithBlock:^(PYItemStyleProp *emphasis) {
                    emphasis.barBorderColorEqual(PYRGBA(0, 0, 0, 0))
                    .colorEqual(PYRGBA(0, 0, 0, 0));
                }]);
            }])
            .addDataArr(@[@0, @1700, @1400, @1200, @300, @0]);
        }])
        .addSeries([PYCartesianSeries initPYCartesianSeriesWithBlock:^(PYCartesianSeries *series) {
            series.stackEqual(@"总量")
            .nameEqual(@"生活费")
            .typeEqual(PYSeriesTypeBar)
            .itemStyleEqual([PYItemStyle initPYItemStyleWithBlock:^(PYItemStyle *itemStyle) {
                itemStyle.normalEqual([PYItemStyleProp initPYItemStylePropWithBlock:^(PYItemStyleProp *normal) {
                    normal.labelEqual([PYLabel initPYLabelWithBlock:^(PYLabel *label) {
                        label.showEqual(YES).positionEqual(@"inside");
                    }]);
                }]);
            }])
            .addDataArr(@[@2900, @1200, @300, @200, @900, @300]);
        }]);
    }];
}

+ (PYOption *)changeWaterfallOption {
    return [PYOption initPYOptionWithBlock:^(PYOption *option) {
        option.titleEqual([PYTitle initPYTitleWithBlock:^(PYTitle *title) {
            title.textEqual(@"阶梯瀑布图")
            .subtextEqual(@"From ExcelHome")
            .sublinkEqual(@"http://e.weibo.com/1341556070/Aj1J2x5a5");
        }])
        .gridEqual([PYGrid initPYGridWithBlock:^(PYGrid *grid) {
            grid.xEqual(@40).x2Equal(@50);
        }])
        .tooltipEqual([PYTooltip initPYTooltipWithBlock:^(PYTooltip *tooltip) {
            tooltip.triggerEqual(PYTooltipTriggerAxis)
            .axisPointerEqual([PYAxisPointer initPYAxisPointerWithBlock:^(PYAxisPointer *axisPoint) {
                axisPoint.typeEqual(PYAxisPointerTypeShadow);
            }])
            .formatterEqual(@"(function (params) {var tar;if (params[1].value != \'-\') {tar = params[1];}else {tar = params[0];}return tar.name + \'<br/>\' + tar.seriesName + \' : \' + tar.value;})");
        }])
        .legendEqual([PYLegend initPYLegendWithBlock:^(PYLegend *legend) {
            legend.dataEqual(@[@"支出",@"收入"]);
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
        .addXAxis([PYAxis initPYAxisWithBlock:^(PYAxis *axis) {
            NSMutableArray *list = [NSMutableArray new];
            for (int i = 1; i<= 11; i++) {
                [list addObject:[NSString stringWithFormat:@"11月%d日", i]];
            }
            axis.typeEqual(PYAxisTypeCategory)
            .splitLineEqual([PYAxisSplitLine initPYAxisSplitLineWithBlock:^(PYAxisSplitLine *axisSpliteLine) {
                axisSpliteLine.showEqual(NO);
            }])
            .dataEqual(list);
        }])
        .addYAxis([PYAxis initPYAxisWithBlock:^(PYAxis *axis) {
            axis.typeEqual(PYAxisTypeValue);
        }])
        .addSeries([PYCartesianSeries initPYCartesianSeriesWithBlock:^(PYCartesianSeries *series) {
            series.stackEqual(@"总量")
            .nameEqual(@"辅助")
            .typeEqual(PYSeriesTypeBar)
            .itemStyleEqual([PYItemStyle initPYItemStyleWithBlock:^(PYItemStyle *itemStyle) {
                itemStyle.normalEqual([PYItemStyleProp initPYItemStylePropWithBlock:^(PYItemStyleProp *normal) {
                    normal.barBorderColorEqual(PYRGBA(0, 0, 0, 0))
                    .colorEqual(PYRGBA(0, 0, 0, 0));
                }])
                .emphasisEqual([PYItemStyleProp initPYItemStylePropWithBlock:^(PYItemStyleProp *emphasis) {
                    emphasis.barBorderColorEqual(PYRGBA(0, 0, 0, 0))
                    .colorEqual(PYRGBA(0, 0, 0, 0));
                }]);
            }])
            .addDataArr(@[@0, @900, @1245, @1530, @1376, @1376, @1511, @1689, @1856, @1495, @1292]);
        }])
        .addSeries([PYCartesianSeries initPYCartesianSeriesWithBlock:^(PYCartesianSeries *series) {
            series.stackEqual(@"总量")
            .nameEqual(@"收入")
            .typeEqual(PYSeriesTypeBar)
            .itemStyleEqual([PYItemStyle initPYItemStyleWithBlock:^(PYItemStyle *itemStyle) {
                itemStyle.normalEqual([PYItemStyleProp initPYItemStylePropWithBlock:^(PYItemStyleProp *normal) {
                    normal.labelEqual([PYLabel initPYLabelWithBlock:^(PYLabel *label) {
                        label.showEqual(YES).positionEqual(PYPositionTop);
                    }]);
                }]);
            }])
            .addDataArr(@[@900, @345, @393, @"-", @"-", @135, @178, @286, @"-", @"-", @"-"]);
        }])
        .addSeries([PYCartesianSeries initPYCartesianSeriesWithBlock:^(PYCartesianSeries *series) {
            series.stackEqual(@"总量")
            .nameEqual(@"支出")
            .typeEqual(PYSeriesTypeBar)
            .itemStyleEqual([PYItemStyle initPYItemStyleWithBlock:^(PYItemStyle *itemStyle) {
                itemStyle.normalEqual([PYItemStyleProp initPYItemStylePropWithBlock:^(PYItemStyleProp *normal) {
                    normal.labelEqual([PYLabel initPYLabelWithBlock:^(PYLabel *label) {
                        label.showEqual(YES).positionEqual(PYPositionTop);
                    }]);
                }]);
            }])
            .addDataArr(@[@"-", @"-", @"-", @108, @154, @"-", @"-", @"-", @119, @361, @203]);
        }]);
    }];
}

+ (PYOption *)stackedAndClusteredColumnOption {
    return [PYOption initPYOptionWithBlock:^(PYOption *option) {
        option.titleEqual([PYTitle initPYTitleWithBlock:^(PYTitle *title) {
            title.textEqual(@"ECharts2 vs ECharts1")
            .subtextEqual(@"Chrome下测试数据");
        }])
        .gridEqual([PYGrid initPYGridWithBlock:^(PYGrid *grid) {
            grid.xEqual(@55).x2Equal(@30);
        }])
        .tooltipEqual([PYTooltip initPYTooltipWithBlock:^(PYTooltip *tooltip) {
            tooltip.triggerEqual(PYTooltipTriggerAxis);
        }])
        .legendEqual([PYLegend initPYLegendWithBlock:^(PYLegend *legend) {
            legend.dataEqual(@[@"ECharts1 - 2k数据",@"ECharts1 - 2w数据",@"ECharts1 - 20w数据",@"",
                               @"ECharts2 - 2k数据",@"ECharts2 - 2w数据",@"ECharts2 - 20w数据"]);
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
            .addDataArr(@[@"Line",@"Bar",@"Scatter",@"K",@"Map"]);
        }])
        .addXAxis([PYAxis initPYAxisWithBlock:^(PYAxis *axis) {
            axis.typeEqual(PYAxisTypeCategory)
            .axisLineEqual([PYAxisLine initPYAxisLineWithBlock:^(PYAxisLine *axisLine) {
                axisLine.showEqual(NO);
            }])
            .axisTickEqual([PYAxisTick initPYAxisTickWithBlock:^(PYAxisTick *axisTick) {
                axisTick.showEqual(NO);
            }])
            .axisLabelEqual([PYAxisLabel initPYAxisLabelWithBlock:^(PYAxisLabel *axisLabel) {
                axisLabel.showEqual(NO);
            }])
            .splitAreaEqual([PYSplitArea initPYSplitAreaWithBlock:^(PYSplitArea *splitArea) {
                splitArea.showEqual(NO);
            }])
            .splitLineEqual([PYAxisSplitLine initPYAxisSplitLineWithBlock:^(PYAxisSplitLine *axisSpliteLine) {
                axisSpliteLine.showEqual(NO);
            }])
            .addDataArr(@[@"Line",@"Bar",@"Scatter",@"K",@"Map"]);
        }])
        .addYAxis([PYAxis initPYAxisWithBlock:^(PYAxis *axis) {
            axis.typeEqual(PYAxisTypeValue)
            .axisLabelEqual([PYAxisLabel initPYAxisLabelWithBlock:^(PYAxisLabel *axisLabel) {
                axisLabel.formatterEqual(@"{value} ms");
            }]);
        }])
        .addSeries([PYCartesianSeries initPYCartesianSeriesWithBlock:^(PYCartesianSeries *series) {
            series.nameEqual(@"ECharts2 - 2k数据")
            .typeEqual(PYSeriesTypeBar)
            .itemStyleEqual([PYItemStyle initPYItemStyleWithBlock:^(PYItemStyle *itemStyle) {
                itemStyle.normalEqual([PYItemStyleProp initPYItemStylePropWithBlock:^(PYItemStyleProp *normal) {
                    normal.colorEqual(PYRGBA(193, 35, 43, 1))
                    .labelEqual([PYLabel initPYLabelWithBlock:^(PYLabel *label) {
                        label.showEqual(YES);
                    }]);
                }]);
            }])
            .addDataArr(@[@40, @155, @95, @75, @0]);
        }])
        .addSeries([PYCartesianSeries initPYCartesianSeriesWithBlock:^(PYCartesianSeries *series) {
            series.nameEqual(@"ECharts2 - 2w数据")
            .typeEqual(PYSeriesTypeBar)
            .itemStyleEqual([PYItemStyle initPYItemStyleWithBlock:^(PYItemStyle *itemStyle) {
                itemStyle.normalEqual([PYItemStyleProp initPYItemStylePropWithBlock:^(PYItemStyleProp *normal) {
                    normal.colorEqual(PYRGBA(181, 195, 52, 1))
                    .labelEqual([PYLabel initPYLabelWithBlock:^(PYLabel *label) {
                        label.showEqual(YES)
                        .textStyleEqual([PYTextStyle initPYTextStyleWithBlock:^(PYTextStyle *textStyle) {
                            textStyle.colorEqual([PYColor colorWithHexString:@"#27727B"]);
                        }]);
                    }]);
                }]);
            }])
            .addDataArr(@[@100, @200, @105, @100, @156]);
        }])
        .addSeries([PYCartesianSeries initPYCartesianSeriesWithBlock:^(PYCartesianSeries *series) {
            series.nameEqual(@"ECharts2 - 20w数据")
            .typeEqual(PYSeriesTypeBar)
            .itemStyleEqual([PYItemStyle initPYItemStyleWithBlock:^(PYItemStyle *itemStyle) {
                itemStyle.normalEqual([PYItemStyleProp initPYItemStylePropWithBlock:^(PYItemStyleProp *normal) {
                    normal.colorEqual(PYRGBA(252, 206, 16, 1))
                    .labelEqual([PYLabel initPYLabelWithBlock:^(PYLabel *label) {
                        label.showEqual(YES)
                        .textStyleEqual([PYTextStyle initPYTextStyleWithBlock:^(PYTextStyle *textStyle) {
                            textStyle.colorEqual([PYColor colorWithHexString:@"#E87C25"]);
                        }]);
                    }]);
                }]);
            }])
            .addDataArr(@[@906, @911, @908, @778, @0]);
        }])
        .addSeries([PYCartesianSeries initPYCartesianSeriesWithBlock:^(PYCartesianSeries *series) {
            series.xAxisIndexEqual(@1)
            .nameEqual(@"ECharts1 - 2k数据")
            .typeEqual(PYSeriesTypeBar)
            .itemStyleEqual([PYItemStyle initPYItemStyleWithBlock:^(PYItemStyle *itemStyle) {
                itemStyle.normalEqual([PYItemStyleProp initPYItemStylePropWithBlock:^(PYItemStyleProp *normal) {
                    normal.colorEqual(PYRGBA(193, 35, 43, 0.5))
                    .labelEqual([PYLabel initPYLabelWithBlock:^(PYLabel *label) {
                        label.showEqual(YES)
                        .formatterEqual(@"(function(p){return p.value > 0 ? (p.value +\'\\n\'):\'\';})");
                    }]);
                }]);
            }])
            .addDataArr(@[@96, @224, @164, @124, @0]);
        }])
        .addSeries([PYCartesianSeries initPYCartesianSeriesWithBlock:^(PYCartesianSeries *series) {
            series.xAxisIndexEqual(@1)
            .nameEqual(@"ECharts1 - 2w数据")
            .typeEqual(PYSeriesTypeBar)
            .itemStyleEqual([PYItemStyle initPYItemStyleWithBlock:^(PYItemStyle *itemStyle) {
                itemStyle.normalEqual([PYItemStyleProp initPYItemStylePropWithBlock:^(PYItemStyleProp *normal) {
                    normal.colorEqual(PYRGBA(181, 195, 52, 0.5))
                    .labelEqual([PYLabel initPYLabelWithBlock:^(PYLabel *label) {
                        label.showEqual(YES);
                    }]);
                }]);
            }])
            .addDataArr(@[@491, @2035, @389, @955, @347]);
        }])
        .addSeries([PYCartesianSeries initPYCartesianSeriesWithBlock:^(PYCartesianSeries *series) {
            series.xAxisIndexEqual(@1)
            .nameEqual(@"ECharts1 - 20w数据")
            .typeEqual(PYSeriesTypeBar)
            .itemStyleEqual([PYItemStyle initPYItemStyleWithBlock:^(PYItemStyle *itemStyle) {
                itemStyle.normalEqual([PYItemStyleProp initPYItemStylePropWithBlock:^(PYItemStyleProp *normal) {
                    normal.colorEqual(PYRGBA(252, 206, 16, 0.5))
                    .labelEqual([PYLabel initPYLabelWithBlock:^(PYLabel *label) {
                        label.showEqual(YES)
                        .formatterEqual(@"(function(p){return p.value > 0 ? (p.value +\'+\'):\'\';})");
                    }]);
                }]);
            }])
            .addDataArr(@[@3000, @3000, @2817, @3000, @0]);
        }]);
    }];
}

+ (PYOption *)basicBarOption {
    return [PYOption initPYOptionWithBlock:^(PYOption *option) {
        option.titleEqual([PYTitle initPYTitleWithBlock:^(PYTitle *title) {
            title.textEqual(@"世界人口总量")
            .subtextEqual(@"数据来自网络");
        }])
        .gridEqual([PYGrid initPYGridWithBlock:^(PYGrid *grid) {
            grid.xEqual(@40).x2Equal(@50);
        }])
        .tooltipEqual([PYTooltip initPYTooltipWithBlock:^(PYTooltip *tooltip) {
            tooltip.triggerEqual(PYTooltipTriggerAxis);
        }])
        .legendEqual([PYLegend initPYLegendWithBlock:^(PYLegend *legend) {
            legend.dataEqual(@[@"2011年", @"2012年"]);
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
            axis.typeEqual(PYAxisTypeValue)
            .boundaryGapEqual(@[@0, @0.01]);
        }])
        .addYAxis([PYAxis initPYAxisWithBlock:^(PYAxis *axis) {
            axis.typeEqual(PYAxisTypeCategory)
            .addDataArr(@[@"巴西",@"印尼",@"美国",@"印度",@"中国",@"世界人口(万)"]);
        }])
        .addSeries([PYCartesianSeries initPYCartesianSeriesWithBlock:^(PYCartesianSeries *series) {
            series.nameEqual(@"2011年")
            .typeEqual(PYSeriesTypeBar)
            .addDataArr(@[@18203, @23489, @29034, @104970, @131744, @630230]);
        }])
        .addSeries([PYCartesianSeries initPYCartesianSeriesWithBlock:^(PYCartesianSeries *series) {
            series.nameEqual(@"2012年")
            .typeEqual(PYSeriesTypeBar)
            .addDataArr(@[@19325, @23438, @31000, @121594, @134141, @681807]);
        }]);
    }];
}

+ (PYOption *)stackedBarOption {
    return [PYOption initPYOptionWithBlock:^(PYOption *option) {
        option.tooltipEqual([PYTooltip initPYTooltipWithBlock:^(PYTooltip *tooltip) {
            tooltip.triggerEqual(PYTooltipTriggerAxis)
            .axisPointerEqual([PYAxisPointer initPYAxisPointerWithBlock:^(PYAxisPointer *axisPoint) {
                axisPoint.typeEqual(PYAxisPointerTypeShadow);
            }]);
        }])
        .legendEqual([PYLegend initPYLegendWithBlock:^(PYLegend *legend) {
            legend.dataEqual(@[@"直接访问",@"邮件营销",@"联盟广告",@"视频广告",@"搜索引擎"]);
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
            axis.typeEqual(PYAxisTypeValue);
        }])
        .addYAxis([PYAxis initPYAxisWithBlock:^(PYAxis *axis) {
            axis.typeEqual(PYAxisTypeCategory)
            .addDataArr(@[@"周一",@"周二",@"周三",@"周四",@"周五",@"周六",@"周日"]);
        }])
        .addSeries([PYCartesianSeries initPYCartesianSeriesWithBlock:^(PYCartesianSeries *series) {
            series.stackEqual(@"总量")
            .nameEqual(@"直接访问")
            .typeEqual(PYSeriesTypeBar)
            .itemStyleEqual([PYItemStyle initPYItemStyleWithBlock:^(PYItemStyle *itemStyle) {
                itemStyle.normalEqual([PYItemStyleProp initPYItemStylePropWithBlock:^(PYItemStyleProp *normal) {
                    normal.labelEqual([PYLabel initPYLabelWithBlock:^(PYLabel *label) {
                        label.showEqual(YES).positionEqual(@"insideRight");
                    }]);
                }]);
            }])
            .dataEqual(@[@320, @332, @301, @334, @390, @330, @320]);
        }])
        .addSeries([PYCartesianSeries initPYCartesianSeriesWithBlock:^(PYCartesianSeries *series) {
            series.stackEqual(@"总量")
            .nameEqual(@"邮件营销")
            .typeEqual(PYSeriesTypeBar)
            .itemStyleEqual([PYItemStyle initPYItemStyleWithBlock:^(PYItemStyle *itemStyle) {
                itemStyle.normalEqual([PYItemStyleProp initPYItemStylePropWithBlock:^(PYItemStyleProp *normal) {
                    normal.labelEqual([PYLabel initPYLabelWithBlock:^(PYLabel *label) {
                        label.showEqual(YES).positionEqual(@"insideRight");
                    }]);
                }]);
            }])
            .dataEqual(@[@120, @132, @101, @134, @90, @230, @210]);
        }])
        .addSeries([PYCartesianSeries initPYCartesianSeriesWithBlock:^(PYCartesianSeries *series) {
            series.stackEqual(@"总量")
            .nameEqual(@"联盟广告")
            .typeEqual(PYSeriesTypeBar)
            .itemStyleEqual([PYItemStyle initPYItemStyleWithBlock:^(PYItemStyle *itemStyle) {
                itemStyle.normalEqual([PYItemStyleProp initPYItemStylePropWithBlock:^(PYItemStyleProp *normal) {
                    normal.labelEqual([PYLabel initPYLabelWithBlock:^(PYLabel *label) {
                        label.showEqual(YES).positionEqual(@"insideRight");
                    }]);
                }]);
            }])
            .dataEqual(@[@220, @182, @191, @234, @290, @330, @310]);
        }])
        .addSeries([PYCartesianSeries initPYCartesianSeriesWithBlock:^(PYCartesianSeries *series) {
            series.stackEqual(@"总量")
            .nameEqual(@"视频广告")
            .typeEqual(PYSeriesTypeBar)
            .itemStyleEqual([PYItemStyle initPYItemStyleWithBlock:^(PYItemStyle *itemStyle) {
                itemStyle.normalEqual([PYItemStyleProp initPYItemStylePropWithBlock:^(PYItemStyleProp *normal) {
                    normal.labelEqual([PYLabel initPYLabelWithBlock:^(PYLabel *label) {
                        label.showEqual(YES).positionEqual(@"insideRight");
                    }]);
                }]);
            }])
            .dataEqual(@[@150, @232, @201, @154, @190, @330, @410]);
        }])
        .addSeries([PYCartesianSeries initPYCartesianSeriesWithBlock:^(PYCartesianSeries *series) {
            series.stackEqual(@"总量")
            .nameEqual(@"搜索引擎")
            .typeEqual(PYSeriesTypeBar)
            .itemStyleEqual([PYItemStyle initPYItemStyleWithBlock:^(PYItemStyle *itemStyle) {
                itemStyle.normalEqual([PYItemStyleProp initPYItemStylePropWithBlock:^(PYItemStyleProp *normal) {
                    normal.labelEqual([PYLabel initPYLabelWithBlock:^(PYLabel *label) {
                        label.showEqual(YES).positionEqual(@"insideRight");
                    }]);
                }]);
            }])
            .dataEqual(@[@820, @832, @901, @934, @1290, @1330, @1320]);
        }]);
    }];
}

+ (PYOption *)stackedFloatingBarOption {
    return [PYOption initPYOptionWithBlock:^(PYOption *option) {
        option.titleEqual([PYTitle initPYTitleWithBlock:^(PYTitle *title) {
            title.textEqual(@"多维条形图")
            .subtextEqual(@"From ExcelHome")
            .sublinkEqual(@"http://e.weibo.com/1341556070/AiEscco0H");
        }])
        .tooltipEqual([PYTooltip initPYTooltipWithBlock:^(PYTooltip *tooltip) {
            tooltip.triggerEqual(PYTooltipTriggerAxis)
            .axisPointerEqual([PYAxisPointer initPYAxisPointerWithBlock:^(PYAxisPointer *axisPoint) {
                axisPoint.typeEqual(PYAxisPointerTypeShadow);
            }])
            .formatterEqual(@"{b}<br/>{a0}:{c0}%<br/>{a2}:{c2}%<br/>{a4}:{c4}%<br/>{a6}:{c6}%");
        }])
        .legendEqual([PYLegend initPYLegendWithBlock:^(PYLegend *legend) {
            legend.yEqual(@55)
            .itemGapEqual(@40)
            .dataEqual(@[@"GML", @"PYP",@"WTC", @"ZTW"]);
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
                .restoreEqual([PYToolboxFeatureRestore initPYToolboxFeatureRestoreWithBlock:^(PYToolboxFeatureRestore *restore) {
                    restore.showEqual(YES);
                }]);
            }]);
        }])
        .gridEqual([PYGrid initPYGridWithBlock:^(PYGrid *grid) {
            grid.yEqual(@80).y2Equal(@30).xEqual(@40).x2Equal(@50);
        }])
        .addXAxis([PYAxis initPYAxisWithBlock:^(PYAxis *axis) {
            axis.typeEqual(PYAxisTypeValue)
            .positionEqual(PYPositionTop)
            .splitLineEqual([PYAxisSplitLine initPYAxisSplitLineWithBlock:^(PYAxisSplitLine *axisSpliteLine) {
                axisSpliteLine.showEqual(NO);
            }])
            .axisLabelEqual([PYAxisLabel initPYAxisLabelWithBlock:^(PYAxisLabel *axisLabel) {
                axisLabel.showEqual(NO);
            }]);
        }])
        .addYAxis([PYAxis initPYAxisWithBlock:^(PYAxis *axis) {
            axis.typeEqual(PYAxisTypeCategory)
            .splitLineEqual([PYAxisSplitLine initPYAxisSplitLineWithBlock:^(PYAxisSplitLine *axisSpliteLine) {
                axisSpliteLine.showEqual(NO);
            }])
            .addDataArr(@[@"重庆", @"天津", @"上海", @"北京"]);
        }])
        .addSeries([PYCartesianSeries initPYCartesianSeriesWithBlock:^(PYCartesianSeries *series) {
            series.stackEqual(@"总量")
            .nameEqual(@"GML")
            .typeEqual(PYSeriesTypeBar)
            .itemStyleEqual([self createDataStyle])
            .addDataArr(@[@38, @50, @33, @72]);
        }])
        .addSeries([PYCartesianSeries initPYCartesianSeriesWithBlock:^(PYCartesianSeries *series) {
            series.stackEqual(@"总量")
            .nameEqual(@"GML")
            .typeEqual(PYSeriesTypeBar)
            .itemStyleEqual([self createPlaceHolderStyle])
            .addDataArr(@[@62, @50, @67, @28]);
        }])
        .addSeries([PYCartesianSeries initPYCartesianSeriesWithBlock:^(PYCartesianSeries *series) {
            series.stackEqual(@"总量")
            .nameEqual(@"PYP")
            .typeEqual(PYSeriesTypeBar)
            .itemStyleEqual([self createDataStyle])
            .addDataArr(@[@61, @41, @42, @30]);
        }])
        .addSeries([PYCartesianSeries initPYCartesianSeriesWithBlock:^(PYCartesianSeries *series) {
            series.stackEqual(@"总量")
            .nameEqual(@"PYP")
            .typeEqual(PYSeriesTypeBar)
            .itemStyleEqual([self createPlaceHolderStyle])
            .addDataArr(@[@39, @59, @58, @70]);
        }])
        .addSeries([PYCartesianSeries initPYCartesianSeriesWithBlock:^(PYCartesianSeries *series) {
            series.stackEqual(@"总量")
            .nameEqual(@"WTC")
            .typeEqual(PYSeriesTypeBar)
            .itemStyleEqual([self createDataStyle])
            .addDataArr(@[@37, @35, @44, @60]);
        }])
        .addSeries([PYCartesianSeries initPYCartesianSeriesWithBlock:^(PYCartesianSeries *series) {
            series.stackEqual(@"总量")
            .nameEqual(@"WTC")
            .typeEqual(PYSeriesTypeBar)
            .itemStyleEqual([self createPlaceHolderStyle])
            .addDataArr(@[@63, @65, @56, @40]);
        }])
        .addSeries([PYCartesianSeries initPYCartesianSeriesWithBlock:^(PYCartesianSeries *series) {
            series.stackEqual(@"总量")
            .nameEqual(@"ZTW")
            .typeEqual(PYSeriesTypeBar)
            .itemStyleEqual([self createDataStyle])
            .addDataArr(@[@71, @50, @31, @39]);
        }])
        .addSeries([PYCartesianSeries initPYCartesianSeriesWithBlock:^(PYCartesianSeries *series) {
            series.stackEqual(@"总量")
            .nameEqual(@"ZTW")
            .typeEqual(PYSeriesTypeBar)
            .itemStyleEqual([self createPlaceHolderStyle])
            .addDataArr(@[@29, @50, @69, @61]);
        }]);
    }];
}

+ (PYItemStyle *)createPlaceHolderStyle {
    return [PYItemStyle initPYItemStyleWithBlock:^(PYItemStyle *itemStyle) {
        itemStyle.normalEqual([PYItemStyleProp initPYItemStylePropWithBlock:^(PYItemStyleProp *normal) {
            normal.barBorderColorEqual(PYRGBA(0, 0, 0, 0))
            .colorEqual(PYRGBA(0, 0, 0, 0));
        }])
        .emphasisEqual([PYItemStyleProp initPYItemStylePropWithBlock:^(PYItemStyleProp *emphasis) {
            emphasis.barBorderColorEqual(PYRGBA(0, 0, 0, 0))
            .colorEqual(PYRGBA(0, 0, 0, 0));
        }]);
    }];
}

+ (PYItemStyle *)createDataStyle {
    return [PYItemStyle initPYItemStyleWithBlock:^(PYItemStyle *itemStyle) {
        itemStyle.normalEqual([PYItemStyleProp initPYItemStylePropWithBlock:^(PYItemStyleProp *normal) {
            normal.labelEqual([PYLabel initPYLabelWithBlock:^(PYLabel *label) {
                label.showEqual(YES)
                .positionEqual(@"insideLeft")
                .formatterEqual(@"{c}%");
            }]);
        }]);
    }];
}

+ (PYOption *)tornadoOption {
    return [PYOption initPYOptionWithBlock:^(PYOption *option) {
        option.tooltipEqual([PYTooltip initPYTooltipWithBlock:^(PYTooltip *tooltip) {
            tooltip.triggerEqual(PYTooltipTriggerAxis)
            .axisPointerEqual([PYAxisPointer initPYAxisPointerWithBlock:^(PYAxisPointer *axisPoint) {
                axisPoint.typeEqual(PYAxisPointerTypeShadow);
            }]);
        }])
        .legendEqual([PYLegend initPYLegendWithBlock:^(PYLegend *legend) {
            legend.dataEqual(@[@"利润", @"支出", @"收入"]);
        }])
        .gridEqual([PYGrid initPYGridWithBlock:^(PYGrid *grid) {
            grid.xEqual(@40).x2Equal(@50);
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
            axis.typeEqual(PYAxisTypeValue);
        }])
        .addYAxis([PYAxis initPYAxisWithBlock:^(PYAxis *axis) {
            axis.typeEqual(PYAxisTypeCategory)
            .axisTickEqual([PYAxisTick initPYAxisTickWithBlock:^(PYAxisTick *axisTick) {
                axisTick.showEqual(NO);
            }])
            .addDataArr(@[@"周一", @"周二", @"周三", @"周四", @"周五", @"周六", @"周日"]);
        }])
        .addSeries([PYCartesianSeries initPYCartesianSeriesWithBlock:^(PYCartesianSeries *series) {
            series.nameEqual(@"利润")
            .typeEqual(PYSeriesTypeBar)
            .itemStyleEqual([PYItemStyle initPYItemStyleWithBlock:^(PYItemStyle *itemStyle) {
                itemStyle.normalEqual([PYItemStyleProp initPYItemStylePropWithBlock:^(PYItemStyleProp *normal) {
                    normal.labelEqual([PYLabel initPYLabelWithBlock:^(PYLabel *label) {
                        label.showEqual(YES)
                        .positionEqual(@"inside");
                    }]);
                }]);
            }])
            .addDataArr(@[@200, @170, @240, @244, @200, @220, @210]);
        }])
        .addSeries([PYCartesianSeries initPYCartesianSeriesWithBlock:^(PYCartesianSeries *series) {
            series.stackEqual(@"总量")
            .barWidthEqual(@5)
            .nameEqual(@"收入")
            .typeEqual(PYSeriesTypeBar)
            .itemStyleEqual([PYItemStyle initPYItemStyleWithBlock:^(PYItemStyle *itemStyle) {
                itemStyle.normalEqual([PYItemStyleProp initPYItemStylePropWithBlock:^(PYItemStyleProp *normal) {
                    normal.labelEqual([PYLabel initPYLabelWithBlock:^(PYLabel *label) {
                        label.showEqual(YES);
                    }]);
                }]);
            }])
            .addDataArr(@[@320, @302, @341, @374, @390, @450, @420]);
        }])
        .addSeries([PYCartesianSeries initPYCartesianSeriesWithBlock:^(PYCartesianSeries *series) {
            series.stackEqual(@"总量")
            .nameEqual(@"支出")
            .typeEqual(PYSeriesTypeBar)
            .itemStyleEqual([PYItemStyle initPYItemStyleWithBlock:^(PYItemStyle *itemStyle) {
                itemStyle.normalEqual([PYItemStyleProp initPYItemStylePropWithBlock:^(PYItemStyleProp *normal) {
                    normal.labelEqual([PYLabel initPYLabelWithBlock:^(PYLabel *label) {
                        label.showEqual(YES)
                        .positionEqual(PYPositionLeft);
                    }]);
                }]);
            }])
            .addDataArr(@[@(-120), @(-132), @(-101), @(-134), @(-190), @(-230), @(-210)]);
        }]);
    }];
}

+ (PYOption *)tornado2Option {
    return [PYOption initPYOptionWithBlock:^(PYOption *option) {
        option.titleEqual([PYTitle initPYTitleWithBlock:^(PYTitle *title) {
            title.textEqual(@"交错正负轴标签")
            .subtextEqual(@"From ExcelHome")
            .sublinkEqual(@"http://e.weibo.com/1341556070/AjwF2AgQm");
        }])
        .tooltipEqual([PYTooltip initPYTooltipWithBlock:^(PYTooltip *tooltip) {
            tooltip.triggerEqual(PYTooltipTriggerAxis)
            .axisPointerEqual([PYAxisPointer initPYAxisPointerWithBlock:^(PYAxisPointer *axisPoint) {
                axisPoint.typeEqual(PYAxisPointerTypeShadow);
            }]);
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
        .gridEqual([PYGrid initPYGridWithBlock:^(PYGrid *grid) {
            grid.yEqual(@80).y2Equal(@30).xEqual(@40).x2Equal(@50);
        }])
        .addXAxis([PYAxis initPYAxisWithBlock:^(PYAxis *axis) {
            axis.typeEqual(PYAxisTypeValue)
            .positionEqual(PYPositionTop)
            .splitLineEqual([PYAxisSplitLine initPYAxisSplitLineWithBlock:^(PYAxisSplitLine *axisSpliteLine) {
                axisSpliteLine.lineStyleEqual([PYLineStyle initPYLineStyleWithBlock:^(PYLineStyle *lineStyle) {
                    lineStyle.typeEqual(PYLineStyleTypeDashed);
                }]);
            }]);
        }])
        .addYAxis([PYAxis initPYAxisWithBlock:^(PYAxis *axis) {
            axis.typeEqual(PYAxisTypeCategory)
            .axisLineEqual([PYAxisLine initPYAxisLineWithBlock:^(PYAxisLine *axisLine) {
                axisLine.showEqual(NO);
            }])
            .axisLabelEqual([PYAxisLabel initPYAxisLabelWithBlock:^(PYAxisLabel *axisLabel) {
                axisLabel.showEqual(NO);
            }])
            .axisTickEqual([PYAxisTick initPYAxisTickWithBlock:^(PYAxisTick *axisTick) {
                axisTick.showEqual(NO);
            }])
            .splitLineEqual([PYAxisSplitLine initPYAxisSplitLineWithBlock:^(PYAxisSplitLine *axisSpliteLine) {
                axisSpliteLine.showEqual(NO);
            }])
            .addDataArr(@[@"ten", @"nine", @"eight", @"seven", @"six", @"five", @"four", @"three", @"two", @"one"]);
        }])
        .addSeries([PYCartesianSeries initPYCartesianSeriesWithBlock:^(PYCartesianSeries *series) {
            series.stackEqual(@"总量")
            .nameEqual(@"生活费")
            .typeEqual(PYSeriesTypeBar)
            .itemStyleEqual([PYItemStyle initPYItemStyleWithBlock:^(PYItemStyle *itemStyle) {
                itemStyle.normalEqual([PYItemStyleProp initPYItemStylePropWithBlock:^(PYItemStyleProp *normal) {
                    normal.colorEqual(@"orange")
                    .barBorderRadiusEqual(@5)
                    .labelEqual([PYLabel initPYLabelWithBlock:^(PYLabel *label) {
                        label.showEqual(YES)
                        .positionEqual(PYPositionLeft)
                        .formatterEqual(@"{b}");
                    }]);
                }]);
            }])
            .addData(@{@"value":@(-0.07), @"itemStyle":[self createLabelRight]})
            .addData(@{@"value":@(-0.09), @"itemStyle":[self createLabelRight]})
            .addData(@0.2)
            .addData(@0.44)
            .addData(@{@"value":@(-0.23), @"itemStyle":[self createLabelRight]})
            .addData(@0.08)
            .addData(@{@"value":@(-0.17), @"itemStyle":[self createLabelRight]})
            .addData(@0.47)
            .addData(@{@"value":@(-0.36), @"itemStyle":[self createLabelRight]})
            .addData(@0.18);
        }]);
    }];
}

+ (PYItemStyle *)createLabelRight {
    return [PYItemStyle initPYItemStyleWithBlock:^(PYItemStyle *itemStyle) {
        itemStyle.normalEqual([PYItemStyleProp initPYItemStylePropWithBlock:^(PYItemStyleProp *normal) {
            normal.labelEqual([PYLabel initPYLabelWithBlock:^(PYLabel *label) {
                label.positionEqual(PYPositionRight);
            }]);
        }]);
    }];
}

+ (PYOption *)irrgularBarOption {
    return [PYOption initPYOptionWithBlock:^(PYOption *option) {
        option.titleEqual([PYTitle initPYTitleWithBlock:^(PYTitle *title) {
            title.textEqual(@"双数值柱形图")
            .subtextEqual(@"纯属虚构");
        }])
        .gridEqual([PYGrid initPYGridWithBlock:^(PYGrid *grid) {
            grid.xEqual(@40).x2Equal(@40);
        }])
        .tooltipEqual([PYTooltip initPYTooltipWithBlock:^(PYTooltip *tooltip) {
            tooltip.triggerEqual(PYTooltipTriggerAxis)
            .axisPointerEqual([PYAxisPointer initPYAxisPointerWithBlock:^(PYAxisPointer *axisPoint) {
                axisPoint.showEqual(YES)
                .typeEqual(PYAxisPointerTypeCross)
                .lineStyleEqual([PYLineStyle initPYLineStyleWithBlock:^(PYLineStyle *lineStyle) {
                    lineStyle.typeEqual(PYLineStyleTypeDashed)
                    .widthEqual(@1);
                }]);
            }])
            .formatterEqual(@"(function (params) {return params.seriesName + \' : [ \' + params.value[0] + \', \' + params.value[1] + \' ]\';})");
        }])
        .legendEqual([PYLegend initPYLegendWithBlock:^(PYLegend *legend) {
            legend.dataEqual(@[@"数据1", @"数据2"]);
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
            axis.typeEqual(PYAxisTypeValue);
        }])
        .addYAxis([PYAxis initPYAxisWithBlock:^(PYAxis *axis) {
            axis.typeEqual(PYAxisTypeValue)
            .axisLineEqual([PYAxisLine initPYAxisLineWithBlock:^(PYAxisLine *axisLine) {
                axisLine.lineStyleEqual([PYLineStyle initPYLineStyleWithBlock:^(PYLineStyle *lineStyle) {
                    lineStyle.colorEqual([PYColor colorWithHexString:@"#dc143c"]);
                }]);
            }]);
        }])
        .addSeries([PYCartesianSeries initPYCartesianSeriesWithBlock:^(PYCartesianSeries *series) {
            series.nameEqual(@"数据1")
            .typeEqual(PYSeriesTypeBar)
            .addDataArr(@[
                          @[@1.5, @10],
                          @[@5, @7],
                          @[@8, @8],
                          @[@12, @6],
                          @[@11, @12],
                          @[@16, @9],
                          @[@14, @6],
                          @[@17, @4],
                          @[@19, @9]
                          ])
            .markPointEqual([PYMarkPoint initPYMarkPointWithBlock:^(PYMarkPoint *point) {
                point.addData(@{@"type":@"max", @"name":@"最大值", @"symbol":PYSymbolEmptyCircle, @"itemStyle":[PYItemStyle initPYItemStyleWithBlock:^(PYItemStyle *itemStyle) {
                    itemStyle.normalEqual([PYItemStyleProp initPYItemStylePropWithBlock:^(PYItemStyleProp *normal) {
                        normal.colorEqual([PYColor colorWithHexString:@"#dc143c"])
                        .labelEqual([PYLabel initPYLabelWithBlock:^(PYLabel *label) {
                            label.positionEqual(PYPositionTop);
                        }]);
                    }]);
                }]})
                .addData(@{@"type":@"min", @"name":@"最小值", @"symbol":PYSymbolEmptyCircle, @"itemStyle":[PYItemStyle initPYItemStyleWithBlock:^(PYItemStyle *itemStyle) {
                    itemStyle.normalEqual([PYItemStyleProp initPYItemStylePropWithBlock:^(PYItemStyleProp *normal) {
                        normal.colorEqual([PYColor colorWithHexString:@"#dc143c"])
                        .labelEqual([PYLabel initPYLabelWithBlock:^(PYLabel *label) {
                            label.positionEqual(PYPositionBottom);
                        }]);
                    }]);
                }]})
                .addData(@{@"type":@"max", @"name":@"最大值", @"valueIndex":@0, @"symbol":PYSymbolEmptyCircle, @"itemStyle":[PYItemStyle initPYItemStyleWithBlock:^(PYItemStyle *itemStyle) {
                    itemStyle.normalEqual([PYItemStyleProp initPYItemStylePropWithBlock:^(PYItemStyleProp *normal) {
                        normal.colorEqual([PYColor colorWithHexString:@"#1e90ff"])
                        .labelEqual([PYLabel initPYLabelWithBlock:^(PYLabel *label) {
                            label.positionEqual(PYPositionRight);
                        }]);
                    }]);
                }]})
                .addData(@{@"type":@"min", @"name":@"最小值", @"valueIndex":@0, @"symbol":PYSymbolEmptyCircle, @"itemStyle":[PYItemStyle initPYItemStyleWithBlock:^(PYItemStyle *itemStyle) {
                    itemStyle.normalEqual([PYItemStyleProp initPYItemStylePropWithBlock:^(PYItemStyleProp *normal) {
                        normal.colorEqual([PYColor colorWithHexString:@"#1e90ff"])
                        .labelEqual([PYLabel initPYLabelWithBlock:^(PYLabel *label) {
                            label.positionEqual(PYPositionLeft);
                        }]);
                    }]);
                }]});
            }])
            .markLineEqual([PYMarkLine initPYMarkLineWithBlock:^(PYMarkLine *markLine) {
                markLine.addData(@{@"type":@"max", @"name":@"最大值", @"itemStyle":[PYItemStyle initPYItemStyleWithBlock:^(PYItemStyle *itemStyle) {
                    itemStyle.normalEqual([PYItemStyleProp initPYItemStylePropWithBlock:^(PYItemStyleProp *normal) {
                        normal.colorEqual([PYColor colorWithHexString:@"#dc143c"]);
                    }]);
                }]})
                .addData(@{@"type":@"min", @"name":@"最小值", @"itemStyle":[PYItemStyle initPYItemStyleWithBlock:^(PYItemStyle *itemStyle) {
                    itemStyle.normalEqual([PYItemStyleProp initPYItemStylePropWithBlock:^(PYItemStyleProp *normal) {
                        normal.colorEqual([PYColor colorWithHexString:@"#dc143c"]);
                    }]);
                }]})
                .addData(@{@"type":@"average", @"name":@"平均值", @"itemStyle":[PYItemStyle initPYItemStyleWithBlock:^(PYItemStyle *itemStyle) {
                    itemStyle.normalEqual([PYItemStyleProp initPYItemStylePropWithBlock:^(PYItemStyleProp *normal) {
                        normal.colorEqual([PYColor colorWithHexString:@"#dc143c"]);
                    }]);
                }]})
                .addData(@{@"type":@"max", @"name":@"最大值", @"valueIndex":@0, @"itemStyle":[PYItemStyle initPYItemStyleWithBlock:^(PYItemStyle *itemStyle) {
                    itemStyle.normalEqual([PYItemStyleProp initPYItemStylePropWithBlock:^(PYItemStyleProp *normal) {
                        normal.colorEqual([PYColor colorWithHexString:@"#1e90ff"]);
                    }]);
                }]})
                .addData(@{@"type":@"min", @"name":@"最小值", @"valueIndex":@0, @"itemStyle":[PYItemStyle initPYItemStyleWithBlock:^(PYItemStyle *itemStyle) {
                    itemStyle.normalEqual([PYItemStyleProp initPYItemStylePropWithBlock:^(PYItemStyleProp *normal) {
                        normal.colorEqual([PYColor colorWithHexString:@"#1e90ff"]);
                    }]);
                }]})
                .addData(@{@"type":@"average", @"name":@"平均值", @"valueIndex":@0, @"itemStyle":[PYItemStyle initPYItemStyleWithBlock:^(PYItemStyle *itemStyle) {
                    itemStyle.normalEqual([PYItemStyleProp initPYItemStylePropWithBlock:^(PYItemStyleProp *normal) {
                        normal.colorEqual([PYColor colorWithHexString:@"#1e90ff"]);
                    }]);
                }]});
            }]);
        }])
        .addSeries([PYCartesianSeries initPYCartesianSeriesWithBlock:^(PYCartesianSeries *series) {
            series.barMinHeightEqual(@10)
            .nameEqual(@"数据2")
            .typeEqual(PYSeriesTypeBar)
            .addDataArr(@[
                          @[@1, @2], @[@2, @3], @[@4, @4], @[@7, @5], @[@11, @11], @[@18, @15]
                          ]);
        }]);
    }];
}


@end
