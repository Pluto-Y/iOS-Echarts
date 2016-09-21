//
//  PYScatterDemoOptions.m
//  iOS-Echarts
//
//  Created by Pluto Y on 9/13/16.
//  Copyright © 2016 pluto-y. All rights reserved.
//

#import "PYScatterDemoOptions.h"

@implementation PYScatterDemoOptions

+ (PYOption *)basicScatterOption {
    return [PYOption initPYOptionWithBlock:^(PYOption *option) {
        option.titleEqual([PYTitle initPYTitleWithBlock:^(PYTitle *title) {
            title.textEqual(@"男性女性身高体重分布")
            .subtextEqual(@"抽样调查来自: Heinz  2003");
        }])
        .gridEqual([PYGrid initPYGridWithBlock:^(PYGrid *grid) {
            grid.xEqual(@50).x2Equal(@40);
        }])
        .tooltipEqual([PYTooltip initPYTooltipWithBlock:^(PYTooltip *tooltip) {
            tooltip.triggerEqual(PYTooltipTriggerAxis)
            .showDelayEqual(@0)
            .formatterEqual(@"(function (params) {\n            if (params.value.length > 1) {\n                return params.seriesName + \' :<br/>\'\n                   + params.value[0] + \'cm \' \n                   + params.value[1] + \'kg \';\n            }\n            else {\n                return params.seriesName + \' :<br/>\'\n                   + params.name + \' : \'\n                   + params.value + \'kg \';\n            }\n        })")
            .axisPointerEqual([PYAxisPointer initPYAxisPointerWithBlock:^(PYAxisPointer *axisPoint) {
                axisPoint.showEqual(YES)
                .typeEqual(PYAxisPointerTypeCross)
                .lineStyleEqual([PYLineStyle initPYLineStyleWithBlock:^(PYLineStyle *lineStyle) {
                    lineStyle.typeEqual(PYLineStyleTypeDashed)
                    .widthEqual(@1);
                }]);
            }]);
        }])
        .legendEqual([PYLegend initPYLegendWithBlock:^(PYLegend *legend) {
            legend.dataEqual(@[@"男性", @"女性"]);
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
            axis.typeEqual(PYAxisTypeValue)
            .scaleEqual(YES)
            .axisLabelEqual([PYAxisLabel initPYAxisLabelWithBlock:^(PYAxisLabel *axisLabel) {
                axisLabel.formatterEqual(@"{value} cm");
            }]);
        }])
        .addYAxis([PYAxis initPYAxisWithBlock:^(PYAxis *axis) {
            axis.typeEqual(PYAxisTypeValue)
            .scaleEqual(YES)
            .axisLabelEqual([PYAxisLabel initPYAxisLabelWithBlock:^(PYAxisLabel *axisLabel) {
                axisLabel.formatterEqual(@"{value} kg");
            }]);
        }])
        .addSeries([PYCartesianSeries initPYCartesianSeriesWithBlock:^(PYCartesianSeries *series) {
            series.nameEqual(@"女性")
            .typeEqual(PYSeriesTypeScatter)
            .addDataArr(@[@[@161.2, @51.6], @[@167.5, @59.0], @[@159.5, @49.2], @[@157.0, @63.0], @[@155.8, @53.6],
                          @[@170.0, @59.0], @[@159.1, @47.6], @[@166.0, @69.8], @[@176.2, @66.8], @[@160.2, @75.2],
                          @[@172.5, @55.2], @[@170.9, @54.2], @[@172.9, @62.5], @[@153.4, @42.0], @[@160.0, @50.0],
                          @[@147.2, @49.8], @[@168.2, @49.2], @[@175.0, @73.2], @[@157.0, @47.8], @[@167.6, @68.8],
                          @[@159.5, @50.6], @[@175.0, @82.5], @[@166.8, @57.2], @[@176.5, @87.8], @[@170.2, @72.8],
                          @[@174.0, @54.5], @[@173.0, @59.8], @[@179.9, @67.3], @[@170.5, @67.8], @[@160.0, @47.0],
                          @[@154.4, @46.2], @[@162.0, @55.0], @[@176.5, @83.0], @[@160.0, @54.4], @[@152.0, @45.8],
                          @[@162.1, @53.6], @[@170.0, @73.2], @[@160.2, @52.1], @[@161.3, @67.9], @[@166.4, @56.6],
                          @[@168.9, @62.3], @[@163.8, @58.5], @[@167.6, @54.5], @[@160.0, @50.2], @[@161.3, @60.3],
                          @[@167.6, @58.3], @[@165.1, @56.2], @[@160.0, @50.2], @[@170.0, @72.9], @[@157.5, @59.8],
                          @[@167.6, @61.0], @[@160.7, @69.1], @[@163.2, @55.9], @[@152.4, @46.5], @[@157.5, @54.3],
                          @[@168.3, @54.8], @[@180.3, @60.7], @[@165.5, @60.0], @[@165.0, @62.0], @[@164.5, @60.3],
                          @[@156.0, @52.7], @[@160.0, @74.3], @[@163.0, @62.0], @[@165.7, @73.1], @[@161.0, @80.0],
                          @[@162.0, @54.7], @[@166.0, @53.2], @[@174.0, @75.7], @[@172.7, @61.1], @[@167.6, @55.7],
                          @[@151.1, @48.7], @[@164.5, @52.3], @[@163.5, @50.0], @[@152.0, @59.3], @[@169.0, @62.5],
                          @[@164.0, @55.7], @[@161.2, @54.8], @[@155.0, @45.9], @[@170.0, @70.6], @[@176.2, @67.2],
                          @[@170.0, @69.4], @[@162.5, @58.2], @[@170.3, @64.8], @[@164.1, @71.6], @[@169.5, @52.8],
                          @[@163.2, @59.8], @[@154.5, @49.0], @[@159.8, @50.0], @[@173.2, @69.2], @[@170.0, @55.9],
                          @[@161.4, @63.4], @[@169.0, @58.2], @[@166.2, @58.6], @[@159.4, @45.7], @[@162.5, @52.2],
                          @[@159.0, @48.6], @[@162.8, @57.8], @[@159.0, @55.6], @[@179.8, @66.8], @[@162.9, @59.4],
                          @[@161.0, @53.6], @[@151.1, @73.2], @[@168.2, @53.4], @[@168.9, @69.0], @[@173.2, @58.4],
                          @[@171.8, @56.2], @[@178.0, @70.6], @[@164.3, @59.8], @[@163.0, @72.0], @[@168.5, @65.2],
                          @[@166.8, @56.6], @[@172.7, @105.2], @[@163.5, @51.8], @[@169.4, @63.4], @[@167.8, @59.0],
                          @[@159.5, @47.6], @[@167.6, @63.0], @[@161.2, @55.2], @[@160.0, @45.0], @[@163.2, @54.0],
                          @[@162.2, @50.2], @[@161.3, @60.2], @[@149.5, @44.8], @[@157.5, @58.8], @[@163.2, @56.4],
                          @[@172.7, @62.0], @[@155.0, @49.2], @[@156.5, @67.2], @[@164.0, @53.8], @[@160.9, @54.4],
                          @[@162.8, @58.0], @[@167.0, @59.8], @[@160.0, @54.8], @[@160.0, @43.2], @[@168.9, @60.5],
                          @[@158.2, @46.4], @[@156.0, @64.4], @[@160.0, @48.8], @[@167.1, @62.2], @[@158.0, @55.5],
                          @[@167.6, @57.8], @[@156.0, @54.6], @[@162.1, @59.2], @[@173.4, @52.7], @[@159.8, @53.2],
                          @[@170.5, @64.5], @[@159.2, @51.8], @[@157.5, @56.0], @[@161.3, @63.6], @[@162.6, @63.2],
                          @[@160.0, @59.5], @[@168.9, @56.8], @[@165.1, @64.1], @[@162.6, @50.0], @[@165.1, @72.3],
                          @[@166.4, @55.0], @[@160.0, @55.9], @[@152.4, @60.4], @[@170.2, @69.1], @[@162.6, @84.5],
                          @[@170.2, @55.9], @[@158.8, @55.5], @[@172.7, @69.5], @[@167.6, @76.4], @[@162.6, @61.4],
                          @[@167.6, @65.9], @[@156.2, @58.6], @[@175.2, @66.8], @[@172.1, @56.6], @[@162.6, @58.6],
                          @[@160.0, @55.9], @[@165.1, @59.1], @[@182.9, @81.8], @[@166.4, @70.7], @[@165.1, @56.8],
                          @[@177.8, @60.0], @[@165.1, @58.2], @[@175.3, @72.7], @[@154.9, @54.1], @[@158.8, @49.1],
                          @[@172.7, @75.9], @[@168.9, @55.0], @[@161.3, @57.3], @[@167.6, @55.0], @[@165.1, @65.5],
                          @[@175.3, @65.5], @[@157.5, @48.6], @[@163.8, @58.6], @[@167.6, @63.6], @[@165.1, @55.2],
                          @[@165.1, @62.7], @[@168.9, @56.6], @[@162.6, @53.9], @[@164.5, @63.2], @[@176.5, @73.6],
                          @[@168.9, @62.0], @[@175.3, @63.6], @[@159.4, @53.2], @[@160.0, @53.4], @[@170.2, @55.0],
                          @[@162.6, @70.5], @[@167.6, @54.5], @[@162.6, @54.5], @[@160.7, @55.9], @[@160.0, @59.0],
                          @[@157.5, @63.6], @[@162.6, @54.5], @[@152.4, @47.3], @[@170.2, @67.7], @[@165.1, @80.9],
                          @[@172.7, @70.5], @[@165.1, @60.9], @[@170.2, @63.6], @[@170.2, @54.5], @[@170.2, @59.1],
                          @[@161.3, @70.5], @[@167.6, @52.7], @[@167.6, @62.7], @[@165.1, @86.3], @[@162.6, @66.4],
                          @[@152.4, @67.3], @[@168.9, @63.0], @[@170.2, @73.6], @[@175.2, @62.3], @[@175.2, @57.7],
                          @[@160.0, @55.4], @[@165.1, @104.1], @[@174.0, @55.5], @[@170.2, @77.3], @[@160.0, @80.5],
                          @[@167.6, @64.5], @[@167.6, @72.3], @[@167.6, @61.4], @[@154.9, @58.2], @[@162.6, @81.8],
                          @[@175.3, @63.6], @[@171.4, @53.4], @[@157.5, @54.5], @[@165.1, @53.6], @[@160.0, @60.0],
                          @[@174.0, @73.6], @[@162.6, @61.4], @[@174.0, @55.5], @[@162.6, @63.6], @[@161.3, @60.9],
                          @[@156.2, @60.0], @[@149.9, @46.8], @[@169.5, @57.3], @[@160.0, @64.1], @[@175.3, @63.6],
                          @[@169.5, @67.3], @[@160.0, @75.5], @[@172.7, @68.2], @[@162.6, @61.4], @[@157.5, @76.8],
                          @[@176.5, @71.8], @[@164.4, @55.5], @[@160.7, @48.6], @[@174.0, @66.4], @[@163.8, @67.3]
                          ])
            .markPointEqual([PYMarkPoint initPYMarkPointWithBlock:^(PYMarkPoint *markPoint) {
                markPoint.addData(@{@"type":@"max", @"name":@"最大值"})
                .addData(@{@"type":@"min", @"name":@"最小值"});
            }])
            .markLineEqual([PYMarkLine initPYMarkLineWithBlock:^(PYMarkLine *markLine) {
                markLine.addData(@{@"type":@"average", @"name":@"平均值"});
            }]);
        }])
        .addSeries([PYCartesianSeries initPYCartesianSeriesWithBlock:^(PYCartesianSeries *series) {
            series.nameEqual(@"男性")
            .typeEqual(PYSeriesTypeScatter)
            .addDataArr(@[@[@174.0, @65.6], @[@175.3, @71.8], @[@193.5, @80.7], @[@186.5, @72.6], @[@187.2, @78.8],
                          @[@181.5, @74.8], @[@184.0, @86.4], @[@184.5, @78.4], @[@175.0, @62.0], @[@184.0, @81.6],
                          @[@180.0, @76.6], @[@177.8, @83.6], @[@192.0, @90.0], @[@176.0, @74.6], @[@174.0, @71.0],
                          @[@184.0, @79.6], @[@192.7, @93.8], @[@171.5, @70.0], @[@173.0, @72.4], @[@176.0, @85.9],
                          @[@176.0, @78.8], @[@180.5, @77.8], @[@172.7, @66.2], @[@176.0, @86.4], @[@173.5, @81.8],
                          @[@178.0, @89.6], @[@180.3, @82.8], @[@180.3, @76.4], @[@164.5, @63.2], @[@173.0, @60.9],
                          @[@183.5, @74.8], @[@175.5, @70.0], @[@188.0, @72.4], @[@189.2, @84.1], @[@172.8, @69.1],
                          @[@170.0, @59.5], @[@182.0, @67.2], @[@170.0, @61.3], @[@177.8, @68.6], @[@184.2, @80.1],
                          @[@186.7, @87.8], @[@171.4, @84.7], @[@172.7, @73.4], @[@175.3, @72.1], @[@180.3, @82.6],
                          @[@182.9, @88.7], @[@188.0, @84.1], @[@177.2, @94.1], @[@172.1, @74.9], @[@167.0, @59.1],
                          @[@169.5, @75.6], @[@174.0, @86.2], @[@172.7, @75.3], @[@182.2, @87.1], @[@164.1, @55.2],
                          @[@163.0, @57.0], @[@171.5, @61.4], @[@184.2, @76.8], @[@174.0, @86.8], @[@174.0, @72.2],
                          @[@177.0, @71.6], @[@186.0, @84.8], @[@167.0, @68.2], @[@171.8, @66.1], @[@182.0, @72.0],
                          @[@167.0, @64.6], @[@177.8, @74.8], @[@164.5, @70.0], @[@192.0, @101.6], @[@175.5, @63.2],
                          @[@171.2, @79.1], @[@181.6, @78.9], @[@167.4, @67.7], @[@181.1, @66.0], @[@177.0, @68.2],
                          @[@174.5, @63.9], @[@177.5, @72.0], @[@170.5, @56.8], @[@182.4, @74.5], @[@197.1, @90.9],
                          @[@180.1, @93.0], @[@175.5, @80.9], @[@180.6, @72.7], @[@184.4, @68.0], @[@175.5, @70.9],
                          @[@180.6, @72.5], @[@177.0, @72.5], @[@177.1, @83.4], @[@181.6, @75.5], @[@176.5, @73.0],
                          @[@175.0, @70.2], @[@174.0, @73.4], @[@165.1, @70.5], @[@177.0, @68.9], @[@192.0, @102.3],
                          @[@176.5, @68.4], @[@169.4, @65.9], @[@182.1, @75.7], @[@179.8, @84.5], @[@175.3, @87.7],
                          @[@184.9, @86.4], @[@177.3, @73.2], @[@167.4, @53.9], @[@178.1, @72.0], @[@168.9, @55.5],
                          @[@157.2, @58.4], @[@180.3, @83.2], @[@170.2, @72.7], @[@177.8, @64.1], @[@172.7, @72.3],
                          @[@165.1, @65.0], @[@186.7, @86.4], @[@165.1, @65.0], @[@174.0, @88.6], @[@175.3, @84.1],
                          @[@185.4, @66.8], @[@177.8, @75.5], @[@180.3, @93.2], @[@180.3, @82.7], @[@177.8, @58.0],
                          @[@177.8, @79.5], @[@177.8, @78.6], @[@177.8, @71.8], @[@177.8, @116.4], @[@163.8, @72.2],
                          @[@188.0, @83.6], @[@198.1, @85.5], @[@175.3, @90.9], @[@166.4, @85.9], @[@190.5, @89.1],
                          @[@166.4, @75.0], @[@177.8, @77.7], @[@179.7, @86.4], @[@172.7, @90.9], @[@190.5, @73.6],
                          @[@185.4, @76.4], @[@168.9, @69.1], @[@167.6, @84.5], @[@175.3, @64.5], @[@170.2, @69.1],
                          @[@190.5, @108.6], @[@177.8, @86.4], @[@190.5, @80.9], @[@177.8, @87.7], @[@184.2, @94.5],
                          @[@176.5, @80.2], @[@177.8, @72.0], @[@180.3, @71.4], @[@171.4, @72.7], @[@172.7, @84.1],
                          @[@172.7, @76.8], @[@177.8, @63.6], @[@177.8, @80.9], @[@182.9, @80.9], @[@170.2, @85.5],
                          @[@167.6, @68.6], @[@175.3, @67.7], @[@165.1, @66.4], @[@185.4, @102.3], @[@181.6, @70.5],
                          @[@172.7, @95.9], @[@190.5, @84.1], @[@179.1, @87.3], @[@175.3, @71.8], @[@170.2, @65.9],
                          @[@193.0, @95.9], @[@171.4, @91.4], @[@177.8, @81.8], @[@177.8, @96.8], @[@167.6, @69.1],
                          @[@167.6, @82.7], @[@180.3, @75.5], @[@182.9, @79.5], @[@176.5, @73.6], @[@186.7, @91.8],
                          @[@188.0, @84.1], @[@188.0, @85.9], @[@177.8, @81.8], @[@174.0, @82.5], @[@177.8, @80.5],
                          @[@171.4, @70.0], @[@185.4, @81.8], @[@185.4, @84.1], @[@188.0, @90.5], @[@188.0, @91.4],
                          @[@182.9, @89.1], @[@176.5, @85.0], @[@175.3, @69.1], @[@175.3, @73.6], @[@188.0, @80.5],
                          @[@188.0, @82.7], @[@175.3, @86.4], @[@170.5, @67.7], @[@179.1, @92.7], @[@177.8, @93.6],
                          @[@175.3, @70.9], @[@182.9, @75.0], @[@170.8, @93.2], @[@188.0, @93.2], @[@180.3, @77.7],
                          @[@177.8, @61.4], @[@185.4, @94.1], @[@168.9, @75.0], @[@185.4, @83.6], @[@180.3, @85.5],
                          @[@174.0, @73.9], @[@167.6, @66.8], @[@182.9, @87.3], @[@160.0, @72.3], @[@180.3, @88.6],
                          @[@167.6, @75.5], @[@186.7, @101.4], @[@175.3, @91.1], @[@175.3, @67.3], @[@175.9, @77.7],
                          @[@175.3, @81.8], @[@179.1, @75.5], @[@181.6, @84.5], @[@177.8, @76.6], @[@182.9, @85.0],
                          @[@177.8, @102.5], @[@184.2, @77.3], @[@179.1, @71.8], @[@176.5, @87.9], @[@188.0, @94.3],
                          @[@174.0, @70.9], @[@167.6, @64.5], @[@170.2, @77.3], @[@167.6, @72.3], @[@188.0, @87.3],
                          @[@174.0, @80.0], @[@176.5, @82.3], @[@180.3, @73.6], @[@167.6, @74.1], @[@188.0, @85.9],
                          @[@180.3, @73.2], @[@167.6, @76.3], @[@183.0, @65.9], @[@183.0, @90.9], @[@179.1, @89.1],
                          @[@170.2, @62.3], @[@177.8, @82.7], @[@179.1, @79.1], @[@190.5, @98.2], @[@177.8, @84.1],
                          @[@180.3, @83.2], @[@180.3, @83.2]
                          ])
            .markPointEqual([PYMarkPoint initPYMarkPointWithBlock:^(PYMarkPoint *markPoint) {
                markPoint.addData(@{@"type":@"max", @"name":@"最大值"})
                .addData(@{@"type":@"min", @"name":@"最小值"});
            }])
            .markLineEqual([PYMarkLine initPYMarkLineWithBlock:^(PYMarkLine *markLine) {
                markLine.addData(@{@"type":@"average", @"name":@"平均值"});
            }]);
        }]);
    }];
}

+ (PYOption *)basicBubbleOption {
    return [PYOption initPYOptionWithBlock:^(PYOption *option) {
        option.tooltipEqual([PYTooltip initPYTooltipWithBlock:^(PYTooltip *tooltip) {
            tooltip.triggerEqual(PYTooltipTriggerAxis)
            .showDelayEqual(@0)
            .axisPointerEqual([PYAxisPointer initPYAxisPointerWithBlock:^(PYAxisPointer *axisPoint) {
                axisPoint.showEqual(YES)
                .typeEqual(PYAxisPointerTypeCross)
                .lineStyleEqual([PYLineStyle initPYLineStyleWithBlock:^(PYLineStyle *lineStyle) {
                    lineStyle.typeEqual(PYLineStyleTypeDashed)
                    .widthEqual(@1);
                }]);
            }]);
        }])
        .gridEqual([PYGrid initPYGridWithBlock:^(PYGrid *grid) {
            grid.xEqual(@50).x2Equal(@40);
        }])
        .legendEqual([PYLegend initPYLegendWithBlock:^(PYLegend *legend) {
            legend.dataEqual(@[@"scatter1", @"scatter2"]);
        }])
        .toolboxEqual([PYToolbox initPYToolboxWithBlock:^(PYToolbox *toolbox) {
            toolbox.showEqual(YES)
            .featureEqual([PYToolboxFeature initPYToolboxFeatureWithBlock:^(PYToolboxFeature *feature) {
                feature.markEqual([PYToolboxFeatureMark initPYToolboxFeatureMarkWithBlock:^(PYToolboxFeatureMark *mark) {
                    mark.showEqual(YES);
                }])
                .dataZoomEqual([PYToolboxFeatureDataZoom initPYToolboxFeatureDataZoomWithBlock:^(PYToolboxFeatureDataZoom *dataZoom) {
                    dataZoom.showEqual(YES);
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
            axis.typeEqual(PYAxisTypeValue)
            .splitNumberEqual(@4)
            .scaleEqual(YES);
        }])
        .addYAxis([PYAxis initPYAxisWithBlock:^(PYAxis *axis) {
            axis.typeEqual(PYAxisTypeValue)
            .splitNumberEqual(@4)
            .scaleEqual(YES);
        }])
        .addSeries([PYCartesianSeries initPYCartesianSeriesWithBlock:^(PYCartesianSeries *series) {
            series.symbolSizeEqual(@"(function (value){return Math.round(value[2] / 15);})")
            .nameEqual(@"scatter1")
            .typeEqual(PYSeriesTypeScatter)
            .dataEqual([self randomDataArray]);
        }])
        .addSeries([PYCartesianSeries initPYCartesianSeriesWithBlock:^(PYCartesianSeries *series) {
            series.symbolSizeEqual(@"(function (value){return Math.round(value[2] / 15);})")
            .nameEqual(@"scatter2")
            .typeEqual(PYSeriesTypeScatter)
            .dataEqual([self randomDataArray]);
        }]);
    }];
}

+ (CGFloat) random {
    CGFloat r = round(arc4random_uniform(100) + 1);
    return (r * ((NSInteger)r % 2 == 0 ? 1 : -1));
}

+ (NSArray *)randomDataArray {
    NSMutableArray *d = [NSMutableArray new];
    NSUInteger len = 100;
    while (len --) {
        [d addObject:@[@([self random]), @([self random]), @(fabs([self random]))]];
    }
    return d;
}

+ (PYOption *)largeScaleScatterOption {
    return [PYOption initPYOptionWithBlock:^(PYOption *option) {
        option.tooltipEqual([PYTooltip initPYTooltipWithBlock:^(PYTooltip *tooltip) {
            tooltip.triggerEqual(PYTooltipTriggerAxis)
            .showDelayEqual(@0)
            .axisPointerEqual([PYAxisPointer initPYAxisPointerWithBlock:^(PYAxisPointer *axisPoint) {
                axisPoint.showEqual(YES)
                .typeEqual(PYAxisPointerTypeCross)
                .lineStyleEqual([PYLineStyle initPYLineStyleWithBlock:^(PYLineStyle *lineStyle) {
                    lineStyle.typeEqual(PYLineStyleTypeDashed)
                    .widthEqual(@1);
                }]);
            }]);
        }])
        .gridEqual([PYGrid initPYGridWithBlock:^(PYGrid *grid) {
            grid.xEqual(@30).x2Equal(@30);
        }])
        .legendEqual([PYLegend initPYLegendWithBlock:^(PYLegend *legend) {
            legend.dataEqual(@[@"sin", @"cos"]);
        }])
        .toolboxEqual([PYToolbox initPYToolboxWithBlock:^(PYToolbox *toolbox) {
            toolbox.showEqual(YES)
            .featureEqual([PYToolboxFeature initPYToolboxFeatureWithBlock:^(PYToolboxFeature *feature) {
                feature.markEqual([PYToolboxFeatureMark initPYToolboxFeatureMarkWithBlock:^(PYToolboxFeatureMark *mark) {
                    mark.showEqual(YES);
                }])
                .dataZoomEqual([PYToolboxFeatureDataZoom initPYToolboxFeatureDataZoomWithBlock:^(PYToolboxFeatureDataZoom *dataZoom) {
                    dataZoom.showEqual(YES);
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
            axis.typeEqual(PYAxisTypeValue)
            .scaleEqual(YES);
        }])
        .addYAxis([PYAxis initPYAxisWithBlock:^(PYAxis *axis) {
            axis.typeEqual(PYAxisTypeValue)
            .scaleEqual(YES);
        }])
        .addSeries([PYCartesianSeries initPYCartesianSeriesWithBlock:^(PYCartesianSeries *series) {
            series.largeEqual(YES)
            .dataEqual(@"(function () {var d = [];var len = 10000;var x = 0;while (len--) {x = (Math.random() * 10).toFixed(3) - 0;d.push([x,(Math.sin(x) - x * (len % 2 ? 0.1 : -0.1) * Math.random()).toFixed(3) - 0]);}return d;})()")
            .nameEqual(@"sin")
            .typeEqual(PYSeriesTypeScatter);
        }])
        .addSeries([PYCartesianSeries initPYCartesianSeriesWithBlock:^(PYCartesianSeries *series) {
            series.largeEqual(YES)
            .dataEqual(@"(function () {var d = [];var len = 10000;var x = 0;while (len--) {x = (Math.random() * 10).toFixed(3) - 0;d.push([x,(Math.cos(x) - x * (len % 2 ? 0.1 : -0.1) * Math.random()).toFixed(3) - 0]);}return d;})()")
            .nameEqual(@"cos")
            .typeEqual(PYSeriesTypeScatter);
        }]);
    }];
}

+ (PYOption *)categoryScatterOption {
    return [PYOption initPYOptionWithBlock:^(PYOption *option) {
        option.titleEqual([PYTitle initPYTitleWithBlock:^(PYTitle *title) {
            title.textEqual(@"类目坐标散点图")
            .subtextEqual(@"dataZoom支持");
        }])
        .gridEqual([PYGrid initPYGridWithBlock:^(PYGrid *grid) {
            grid.xEqual(@30).x2Equal(@30);
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
                .restoreEqual([PYToolboxFeatureRestore initPYToolboxFeatureRestoreWithBlock:^(PYToolboxFeatureRestore *restore) {
                    restore.showEqual(YES);
                }]);
            }]);
        }])
        .dataZoomEqual([PYDataZoom initPYDataZoomWithBlock:^(PYDataZoom *dataZoom) {
            dataZoom.showEqual(YES)
            .startEqual(@30)
            .endEqual(@70);
        }])
        .legendEqual([PYLegend initPYLegendWithBlock:^(PYLegend *legend) {
            legend.dataEqual(@[@"series1", @"series2"]);
        }])
        .dataRangeEqual([PYDataRange initPYDataRangeWithBlock:^(PYDataRange *dataRange) {
            dataRange.minEqual(@0)
            .maxEqual(@100)
            .orientEqual(PYOrientHorizontal)
            .yEqual(@30)
            .xEqual(PYPositionCenter)
            .colorEqual([[NSMutableArray alloc] initWithArray:@[@"lightgreen", @"orange"]])
            .splitNumberEqual(@5);
        }])
        .addXAxis([PYAxis initPYAxisWithBlock:^(PYAxis *axis) {
            NSMutableArray *datas = [NSMutableArray new];
            NSUInteger len = 0;
            while (len ++ < 500) {
                [datas addObject:@(len)];
            }
            axis.typeEqual(PYAxisTypeCategory)
            .axisLabelEqual([PYAxisLabel initPYAxisLabelWithBlock:^(PYAxisLabel *axisLabel) {
                axisLabel.formatterEqual(@"(function(v) {return \'类目\' + v;})");
            }])
            .dataEqual(datas);
        }])
        .addYAxis([PYAxis initPYAxisWithBlock:^(PYAxis *axis) {
            axis.typeEqual(PYAxisTypeValue);
        }])
        .animationEqual(NO)
        .addSeries([PYCartesianSeries initPYCartesianSeriesWithBlock:^(PYCartesianSeries *series) {
            NSMutableArray *datas = [NSMutableArray new];
            NSUInteger len = 0;
            while (len++ < 500) {
                [datas addObject:@[@(len), [NSString stringWithFormat:@"%.2f", (float)((arc4random_uniform(10000)/10000.0) * 30)], [NSString stringWithFormat:@"%.2f", (float)((arc4random_uniform(10000)/10000.0) * 100)]]];
            }
            series.symbolSizeEqual(@"(function (value){return Math.round(value[2] / 10);})")
            .nameEqual(@"series1")
            .typeEqual(PYSeriesTypeScatter)
            .tooltipEqual([PYTooltip initPYTooltipWithBlock:^(PYTooltip *tooltip) {
                tooltip.triggerEqual(PYTooltipTriggerItem)
                .formatterEqual(@"(function (params) {return params.seriesName + ' （'  + '类目' + params.value[0] + '）<br/>' + params.value[1] + ', ' + params.value[2];})")
                .axisPointerEqual([PYAxisPointer initPYAxisPointerWithBlock:^(PYAxisPointer *axisPoint) {
                    axisPoint.showEqual(YES);
                }]);
            }])
            .addDataArr(datas);
        }])
        .addSeries([PYCartesianSeries initPYCartesianSeriesWithBlock:^(PYCartesianSeries *series) {
            NSMutableArray *datas = [NSMutableArray new];
            NSUInteger len = 0;
            while (len++ < 500) {
                [datas addObject:@[@(len), [NSString stringWithFormat:@"%.2f", (float)((arc4random_uniform(10000)/10000.0) * 30)], [NSString stringWithFormat:@"%.2f", (float)((arc4random_uniform(10000)/10000.0) * 100)]]];
            }
            series.symbolSizeEqual(@"(function (value){return Math.round(value[2] / 10);})")
            .nameEqual(@"series2")
            .typeEqual(PYSeriesTypeScatter)
            .tooltipEqual([PYTooltip initPYTooltipWithBlock:^(PYTooltip *tooltip) {
                tooltip.triggerEqual(PYTooltipTriggerItem)
                .formatterEqual(@"(function (params) {return params.seriesName + ' （'  + '类目' + params.value[0] + '）<br/>' + params.value[1] + ', ' + params.value[2];})")
                .axisPointerEqual([PYAxisPointer initPYAxisPointerWithBlock:^(PYAxisPointer *axisPoint) {
                    axisPoint.showEqual(YES);
                }]);
            }])
            .addDataArr(datas);
        }]);
    }];
}

+ (PYOption *)timeDataOption {
    return [PYOption initPYOptionWithBlock:^(PYOption *option) {
        option.titleEqual([PYTitle initPYTitleWithBlock:^(PYTitle *title) {
            title.textEqual(@"时间坐标散点图")
            .subtextEqual(@"dataZoom支持");
        }])
        .gridEqual([PYGrid initPYGridWithBlock:^(PYGrid *grid) {
            grid.xEqual(@30).x2Equal(@30).yEqual(@80);
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
            }]);
        }])
        .toolboxEqual([PYToolbox initPYToolboxWithBlock:^(PYToolbox *toolbox) {
            toolbox.showEqual(YES)
            .featureEqual([PYToolboxFeature initPYToolboxFeatureWithBlock:^(PYToolboxFeature *feature) {
                feature.markEqual([PYToolboxFeatureMark initPYToolboxFeatureMarkWithBlock:^(PYToolboxFeatureMark *mark) {
                    mark.showEqual(YES);
                }])
                .dataZoomEqual([PYToolboxFeatureDataZoom initPYToolboxFeatureDataZoomWithBlock:^(PYToolboxFeatureDataZoom *dataZoom) {
                    dataZoom.showEqual(YES);
                }])
                .dataViewEqual([PYToolboxFeatureDataView initPYToolboxFeatureDataViewWithBlock:^(PYToolboxFeatureDataView *dataView) {
                    dataView.showEqual(YES).readOnlyEqual(NO);
                }])
                .restoreEqual([PYToolboxFeatureRestore initPYToolboxFeatureRestoreWithBlock:^(PYToolboxFeatureRestore *restore) {
                    restore.showEqual(YES);
                }]);
            }]);
        }])
        .dataZoomEqual([PYDataZoom initPYDataZoomWithBlock:^(PYDataZoom *dataZoom) {
            dataZoom.showEqual(YES)
            .startEqual(@30)
            .endEqual(@70);
        }])
        .legendEqual([PYLegend initPYLegendWithBlock:^(PYLegend *legend) {
            legend.dataEqual(@[@"series1"]);
        }])
        .dataRangeEqual([PYDataRange initPYDataRangeWithBlock:^(PYDataRange *dataRange) {
            dataRange.minEqual(@0)
            .maxEqual(@100)
            .orientEqual(PYOrientHorizontal)
            .yEqual(@30)
            .xEqual(PYPositionCenter)
            .colorEqual([[NSMutableArray alloc] initWithArray:@[@"lightgreen", @"orange"]])
            .splitNumberEqual(@5);
        }])
        .addXAxis([PYAxis initPYAxisWithBlock:^(PYAxis *axis) {
            axis.typeEqual(PYAxisTypeTime)
            .splitNumberEqual(@10);
        }])
        .addYAxis([PYAxis initPYAxisWithBlock:^(PYAxis *axis) {
            axis.typeEqual(PYAxisTypeValue);
        }])
        .animationEqual(NO)
        .addSeries([PYCartesianSeries initPYCartesianSeriesWithBlock:^(PYCartesianSeries *series) {
            series.symbolSizeEqual(@"(function (value){return Math.round(value[2]/20);})")
            .nameEqual(@"series1")
            .typeEqual(PYSeriesTypeScatter)
            .tooltipEqual([PYTooltip initPYTooltipWithBlock:^(PYTooltip *tooltip) {
                tooltip.triggerEqual(PYTooltipTriggerAxis)
                .formatterEqual(@"(function (params) { var date = new Date(params.value[0]); return params.seriesName + ' （' + date.getFullYear() + '-' + (date.getMonth() + 1) + '-' + date.getDate() + ' ' + date.getHours() + ':' + date.getMinutes() +  '）<br/>' + params.value[1] + ', ' + params.value[2];})")
                .axisPointerEqual([PYAxisPointer initPYAxisPointerWithBlock:^(PYAxisPointer *axisPoint) {
                    axisPoint.typeEqual(PYAxisPointerTypeCross)
                    .lineStyleEqual([PYLineStyle initPYLineStyleWithBlock:^(PYLineStyle *lineStyle) {
                        lineStyle.typeEqual(PYLineStyleTypeDashed)
                        .widthEqual(@1);
                    }]);
                }]);
            }])
            .dataEqual(@"(function () {var d = [];var len = 0;var now = new Date();var value;while (len++ < 1500) {d.push([new Date(2014, 9, 1, 0, Math.round(Math.random()*10000)),(Math.random()*30).toFixed(2) - 0,(Math.random()*100).toFixed(2) - 0]);}return d;})()");
        }]);
    }];
}

+ (PYOption *)timeLineOption {
    NSString *json = @"{\"grid\":{\"x\":30,\"x2\":45},\"timeline\":{\"data\":[\"2002-01-01\",\"2003-01-01\",\"2004-01-01\",\"2005-01-01\",\"2006-01-01\",\"2007-01-01\",\"2008-01-01\",\"2009-01-01\",\"2010-01-01\",\"2011-01-01\"],\"label\":{\"formatter\":\"(function(s) {return s.slice(0, 4);})\"},\"autoPlay\":true,\"playInterval\":1000},\"options\":[{\"title\":{\"text\":\"2002全国宏观经济关联分析（GDP vs 房地产）\",\"subtext\":\"数据来自国家统计局\"},\"tooltip\":{\"trigger\":\"axis\",\"showDelay\":0,\"axisPointer\":{\"show\":true,\"type\":\"cross\",\"lineStyle\":{\"type\":\"dashed\",\"width\":1}}},\"toolbox\":{\"show\":true,\"orient\":\"vertical\",\"x\":\"right\",\"y\":\"center\",\"feature\":{\"mark\":{\"show\":true},\"dataView\":{\"show\":true,\"readOnly\":false},\"restore\":{\"show\":true},\"saveAsImage\":{\"show\":true}}},\"grid\":{\"y\":80,\"y2\":100},\"xAxis\":[{\"type\":\"value\",\"name\":\"房地产（亿元）\",\"max\":3400}],\"yAxis\":[{\"type\":\"value\",\"name\":\"GDP（亿元）\",\"max\":53500}],\"series\":[{\"name\":\"GDP\",\"type\":\"scatter\",\"markLine\":{\"data\":[{\"type\":\"average\",\"name\":\"y平均值\",\"itemStyle\":{\"normal\":{\"borderColor\":\"red\"}}},{\"type\":\"average\",\"name\":\"x平均值\",\"valueIndex\":0,\"itemStyle\":{\"normal\":{\"borderColor\":\"red\"}}}]},\"symbolSize\":5,\"itemStyle\":{\"normal\":{\"label\":{\"show\":true,\"formatter\":\"{b}\"}}},\"data\":[{\"name\":\"北京\",\"value\":[298.02,4315]},{\"name\":\"天津\",\"value\":[73.04,2150.76]},{\"name\":\"河北\",\"value\":[140.89,6018.28]},{\"name\":\"山西\",\"value\":[65.83,2324.8]},{\"name\":\"内蒙古\",\"value\":[51.48,1940.94]},{\"name\":\"辽宁\",\"value\":[130.94,5458.22]},{\"name\":\"吉林\",\"value\":[76.11,2348.54]},{\"name\":\"黑龙江\",\"value\":[118.7,3637.2]},{\"name\":\"上海\",\"value\":[384.86,5741.03]},{\"name\":\"江苏\",\"value\":[371.09,10606.85]},{\"name\":\"浙江\",\"value\":[360.63,8003.67]},{\"name\":\"安徽\",\"value\":[139.18,3519.72]},{\"name\":\"福建\",\"value\":[188.09,4467.55]},{\"name\":\"江西\",\"value\":[125.27,2450.48]},{\"name\":\"山东\",\"value\":[371.13,10275.5]},{\"name\":\"河南\",\"value\":[199.31,6035.48]},{\"name\":\"湖北\",\"value\":[145.17,4212.82]},{\"name\":\"湖南\",\"value\":[165.29,4151.54]},{\"name\":\"广东\",\"value\":[808.16,13502.42]},{\"name\":\"广西\",\"value\":[82.83,2523.73]},{\"name\":\"海南\",\"value\":[21.45,642.73]},{\"name\":\"重庆\",\"value\":[90.48,2232.86]},{\"name\":\"四川\",\"value\":[210.82,4725.01]},{\"name\":\"贵州\",\"value\":[53.49,1243.43]},{\"name\":\"云南\",\"value\":[95.68,2312.82]},{\"name\":\"西藏\",\"value\":[3.42,162.04]},{\"name\":\"陕西\",\"value\":[77.68,2253.39]},{\"name\":\"甘肃\",\"value\":[41.52,1232.03]},{\"name\":\"青海\",\"value\":[9.74,340.65]},{\"name\":\"宁夏\",\"value\":[13.46,377.16]},{\"name\":\"新疆\",\"value\":[43.04,1612.6]}]}]},{\"title\":{\"text\":\"2003全国宏观经济关联分析（GDP vs 房地产）\"},\"series\":[{\"data\":[{\"name\":\"北京\",\"value\":[341.88,5007.21]},{\"name\":\"天津\",\"value\":[92.31,2578.03]},{\"name\":\"河北\",\"value\":[185.19,6921.29]},{\"name\":\"山西\",\"value\":[78.73,2855.23]},{\"name\":\"内蒙古\",\"value\":[61.05,2388.38]},{\"name\":\"辽宁\",\"value\":[188.49,6002.54]},{\"name\":\"吉林\",\"value\":[91.99,2662.08]},{\"name\":\"黑龙江\",\"value\":[127.2,4057.4]},{\"name\":\"上海\",\"value\":[487.82,6694.23]},{\"name\":\"江苏\",\"value\":[447.47,12442.87]},{\"name\":\"浙江\",\"value\":[473.16,9705.02]},{\"name\":\"安徽\",\"value\":[162.63,3923.11]},{\"name\":\"福建\",\"value\":[215.84,4983.67]},{\"name\":\"江西\",\"value\":[138.02,2807.41]},{\"name\":\"山东\",\"value\":[418.21,12078.15]},{\"name\":\"河南\",\"value\":[217.58,6867.7]},{\"name\":\"湖北\",\"value\":[176.8,4757.45]},{\"name\":\"湖南\",\"value\":[186.49,4659.99]},{\"name\":\"广东\",\"value\":[955.66,15844.64]},{\"name\":\"广西\",\"value\":[100.93,2821.11]},{\"name\":\"海南\",\"value\":[25.14,713.96]},{\"name\":\"重庆\",\"value\":[113.69,2555.72]},{\"name\":\"四川\",\"value\":[231.72,5333.09]},{\"name\":\"贵州\",\"value\":[59.86,1426.34]},{\"name\":\"云南\",\"value\":[103.79,2556.02]},{\"name\":\"西藏\",\"value\":[4.35,185.09]},{\"name\":\"陕西\",\"value\":[83.9,2587.72]},{\"name\":\"甘肃\",\"value\":[48.09,1399.83]},{\"name\":\"青海\",\"value\":[11.41,390.2]},{\"name\":\"宁夏\",\"value\":[16.85,445.36]},{\"name\":\"新疆\",\"value\":[47.84,1886.35]}]}]},{\"title\":{\"text\":\"2004全国宏观经济关联分析（GDP vs 房地产）\"},\"series\":[{\"data\":[{\"name\":\"北京\",\"value\":[436.11,6033.21]},{\"name\":\"天津\",\"value\":[106.14,3110.97]},{\"name\":\"河北\",\"value\":[231.08,8477.63]},{\"name\":\"山西\",\"value\":[95.1,3571.37]},{\"name\":\"内蒙古\",\"value\":[73.81,3041.07]},{\"name\":\"辽宁\",\"value\":[203.1,6672]},{\"name\":\"吉林\",\"value\":[97.93,3122.01]},{\"name\":\"黑龙江\",\"value\":[137.74,4750.6]},{\"name\":\"上海\",\"value\":[666.3,8072.83]},{\"name\":\"江苏\",\"value\":[534.17,15003.6]},{\"name\":\"浙江\",\"value\":[587.83,11648.7]},{\"name\":\"安徽\",\"value\":[188.28,4759.3]},{\"name\":\"福建\",\"value\":[248.44,5763.35]},{\"name\":\"江西\",\"value\":[167.2,3456.7]},{\"name\":\"山东\",\"value\":[473.27,15021.84]},{\"name\":\"河南\",\"value\":[236.44,8553.79]},{\"name\":\"湖北\",\"value\":[204.8,5633.24]},{\"name\":\"湖南\",\"value\":[191.5,5641.94]},{\"name\":\"广东\",\"value\":[1103.75,18864.62]},{\"name\":\"广西\",\"value\":[122.52,3433.5]},{\"name\":\"海南\",\"value\":[30.64,819.66]},{\"name\":\"重庆\",\"value\":[129.12,3034.58]},{\"name\":\"四川\",\"value\":[264.3,6379.63]},{\"name\":\"贵州\",\"value\":[68.3,1677.8]},{\"name\":\"云南\",\"value\":[116.54,3081.91]},{\"name\":\"西藏\",\"value\":[5.8,220.34]},{\"name\":\"陕西\",\"value\":[95.9,3175.58]},{\"name\":\"甘肃\",\"value\":[56.84,1688.49]},{\"name\":\"青海\",\"value\":[13,466.1]},{\"name\":\"宁夏\",\"value\":[20.78,537.11]},{\"name\":\"新疆\",\"value\":[53.55,2209.09]}]}]},{\"title\":{\"text\":\"2005全国宏观经济关联分析（GDP vs 房地产）\"},\"series\":[{\"data\":[{\"name\":\"北京\",\"value\":[493.73,6969.52]},{\"name\":\"天津\",\"value\":[122.67,3905.64]},{\"name\":\"河北\",\"value\":[330.87,10012.11]},{\"name\":\"山西\",\"value\":[106,4230.53]},{\"name\":\"内蒙古\",\"value\":[98.75,3905.03]},{\"name\":\"辽宁\",\"value\":[256.77,8047.26]},{\"name\":\"吉林\",\"value\":[112.29,3620.27]},{\"name\":\"黑龙江\",\"value\":[163.34,5513.7]},{\"name\":\"上海\",\"value\":[715.97,9247.66]},{\"name\":\"江苏\",\"value\":[799.73,18598.69]},{\"name\":\"浙江\",\"value\":[688.86,13417.68]},{\"name\":\"安徽\",\"value\":[231.66,5350.17]},{\"name\":\"福建\",\"value\":[331.8,6554.69]},{\"name\":\"江西\",\"value\":[171.88,4056.76]},{\"name\":\"山东\",\"value\":[664.9,18366.87]},{\"name\":\"河南\",\"value\":[298.19,10587.42]},{\"name\":\"湖北\",\"value\":[217.17,6590.19]},{\"name\":\"湖南\",\"value\":[215.63,6596.1]},{\"name\":\"广东\",\"value\":[1430.37,22557.37]},{\"name\":\"广西\",\"value\":[165.05,3984.1]},{\"name\":\"海南\",\"value\":[38.2,918.75]},{\"name\":\"重庆\",\"value\":[143.88,3467.72]},{\"name\":\"四川\",\"value\":[286.23,7385.1]},{\"name\":\"贵州\",\"value\":[76.38,2005.42]},{\"name\":\"云南\",\"value\":[148.69,3462.73]},{\"name\":\"西藏\",\"value\":[10.02,248.8]},{\"name\":\"陕西\",\"value\":[108.62,3933.72]},{\"name\":\"甘肃\",\"value\":[63.78,1933.98]},{\"name\":\"青海\",\"value\":[14.1,543.32]},{\"name\":\"宁夏\",\"value\":[22.97,612.61]},{\"name\":\"新疆\",\"value\":[55.79,2604.19]}]}]},{\"title\":{\"text\":\"2006全国宏观经济关联分析（GDP vs 房地产）\"},\"series\":[{\"data\":[{\"name\":\"北京\",\"value\":[658.3,8117.78]},{\"name\":\"天津\",\"value\":[156.64,4462.74]},{\"name\":\"河北\",\"value\":[397.14,11467.6]},{\"name\":\"山西\",\"value\":[117.01,4878.61]},{\"name\":\"内蒙古\",\"value\":[136.5,4944.25]},{\"name\":\"辽宁\",\"value\":[318.54,9304.52]},{\"name\":\"吉林\",\"value\":[131.01,4275.12]},{\"name\":\"黑龙江\",\"value\":[194.7,6211.8]},{\"name\":\"上海\",\"value\":[773.61,10572.24]},{\"name\":\"江苏\",\"value\":[1017.91,21742.05]},{\"name\":\"浙江\",\"value\":[794.41,15718.47]},{\"name\":\"安徽\",\"value\":[281.98,6112.5]},{\"name\":\"福建\",\"value\":[435.22,7583.85]},{\"name\":\"江西\",\"value\":[184.67,4820.53]},{\"name\":\"山东\",\"value\":[786.51,21900.19]},{\"name\":\"河南\",\"value\":[348.7,12362.79]},{\"name\":\"湖北\",\"value\":[294.73,7617.47]},{\"name\":\"湖南\",\"value\":[254.81,7688.67]},{\"name\":\"广东\",\"value\":[1722.07,26587.76]},{\"name\":\"广西\",\"value\":[192.2,4746.16]},{\"name\":\"海南\",\"value\":[44.45,1065.67]},{\"name\":\"重庆\",\"value\":[158.2,3907.23]},{\"name\":\"四川\",\"value\":[336.2,8690.24]},{\"name\":\"贵州\",\"value\":[80.24,2338.98]},{\"name\":\"云南\",\"value\":[165.92,3988.14]},{\"name\":\"西藏\",\"value\":[11.92,290.76]},{\"name\":\"陕西\",\"value\":[125.2,4743.61]},{\"name\":\"甘肃\",\"value\":[73.21,2277.35]},{\"name\":\"青海\",\"value\":[15.17,648.5]},{\"name\":\"宁夏\",\"value\":[25.53,725.9]},{\"name\":\"新疆\",\"value\":[68.9,3045.26]}]}]},{\"title\":{\"text\":\"2007全国宏观经济关联分析（GDP vs 房地产）\"},\"series\":[{\"data\":[{\"name\":\"北京\",\"value\":[821.5,9846.81]},{\"name\":\"天津\",\"value\":[183.44,5252.76]},{\"name\":\"河北\",\"value\":[467.97,13607.32]},{\"name\":\"山西\",\"value\":[134.12,6024.45]},{\"name\":\"内蒙古\",\"value\":[191.01,6423.18]},{\"name\":\"辽宁\",\"value\":[410.43,11164.3]},{\"name\":\"吉林\",\"value\":[153.03,5284.69]},{\"name\":\"黑龙江\",\"value\":[225.81,7104]},{\"name\":\"上海\",\"value\":[958.06,12494.01]},{\"name\":\"江苏\",\"value\":[1365.71,26018.48]},{\"name\":\"浙江\",\"value\":[981.42,18753.73]},{\"name\":\"安徽\",\"value\":[366.57,7360.92]},{\"name\":\"福建\",\"value\":[511.5,9248.53]},{\"name\":\"江西\",\"value\":[225.96,5800.25]},{\"name\":\"山东\",\"value\":[953.69,25776.91]},{\"name\":\"河南\",\"value\":[447.44,15012.46]},{\"name\":\"湖北\",\"value\":[409.65,9333.4]},{\"name\":\"湖南\",\"value\":[301.8,9439.6]},{\"name\":\"广东\",\"value\":[2029.77,31777.01]},{\"name\":\"广西\",\"value\":[239.45,5823.41]},{\"name\":\"海南\",\"value\":[67.19,1254.17]},{\"name\":\"重庆\",\"value\":[196.06,4676.13]},{\"name\":\"四川\",\"value\":[376.84,10562.39]},{\"name\":\"贵州\",\"value\":[93.19,2884.11]},{\"name\":\"云南\",\"value\":[193.59,4772.52]},{\"name\":\"西藏\",\"value\":[13.24,341.43]},{\"name\":\"陕西\",\"value\":[153.98,5757.29]},{\"name\":\"甘肃\",\"value\":[83.52,2703.98]},{\"name\":\"青海\",\"value\":[16.98,797.35]},{\"name\":\"宁夏\",\"value\":[29.49,919.11]},{\"name\":\"新疆\",\"value\":[91.28,3523.16]}]}]},{\"title\":{\"text\":\"2008全国宏观经济关联分析（GDP vs 房地产）\"},\"series\":[{\"data\":[{\"name\":\"北京\",\"value\":[844.59,11115]},{\"name\":\"天津\",\"value\":[227.88,6719.01]},{\"name\":\"河北\",\"value\":[513.81,16011.97]},{\"name\":\"山西\",\"value\":[166.04,7315.4]},{\"name\":\"内蒙古\",\"value\":[273.3,8496.2]},{\"name\":\"辽宁\",\"value\":[500.81,13668.58]},{\"name\":\"吉林\",\"value\":[182.7,6426.1]},{\"name\":\"黑龙江\",\"value\":[244.47,8314.37]},{\"name\":\"上海\",\"value\":[939.34,14069.87]},{\"name\":\"江苏\",\"value\":[1626.13,30981.98]},{\"name\":\"浙江\",\"value\":[1052.03,21462.69]},{\"name\":\"安徽\",\"value\":[431.27,8851.66]},{\"name\":\"福建\",\"value\":[506.98,10823.01]},{\"name\":\"江西\",\"value\":[281.96,6971.05]},{\"name\":\"山东\",\"value\":[1104.95,30933.28]},{\"name\":\"河南\",\"value\":[512.42,18018.53]},{\"name\":\"湖北\",\"value\":[526.88,11328.92]},{\"name\":\"湖南\",\"value\":[340.07,11555]},{\"name\":\"广东\",\"value\":[2057.45,36796.71]},{\"name\":\"广西\",\"value\":[282.96,7021]},{\"name\":\"海南\",\"value\":[95.6,1503.06]},{\"name\":\"重庆\",\"value\":[191.21,5793.66]},{\"name\":\"四川\",\"value\":[453.63,12601.23]},{\"name\":\"贵州\",\"value\":[104.81,3561.56]},{\"name\":\"云南\",\"value\":[195.48,5692.12]},{\"name\":\"西藏\",\"value\":[15.08,394.85]},{\"name\":\"陕西\",\"value\":[193.27,7314.58]},{\"name\":\"甘肃\",\"value\":[93.8,3166.82]},{\"name\":\"青海\",\"value\":[19.96,1018.62]},{\"name\":\"宁夏\",\"value\":[38.85,1203.92]},{\"name\":\"新疆\",\"value\":[89.79,4183.21]}]}]},{\"title\":{\"text\":\"2009全国宏观经济关联分析（GDP vs 房地产）\"},\"series\":[{\"data\":[{\"name\":\"北京\",\"value\":[1062.47,12153.03]},{\"name\":\"天津\",\"value\":[308.73,7521.85]},{\"name\":\"河北\",\"value\":[612.4,17235.48]},{\"name\":\"山西\",\"value\":[173.31,7358.31]},{\"name\":\"内蒙古\",\"value\":[286.65,9740.25]},{\"name\":\"辽宁\",\"value\":[605.27,15212.49]},{\"name\":\"吉林\",\"value\":[200.14,7278.75]},{\"name\":\"黑龙江\",\"value\":[301.18,8587]},{\"name\":\"上海\",\"value\":[1237.56,15046.45]},{\"name\":\"江苏\",\"value\":[2025.39,34457.3]},{\"name\":\"浙江\",\"value\":[1316.84,22990.35]},{\"name\":\"安徽\",\"value\":[497.94,10062.82]},{\"name\":\"福建\",\"value\":[656.61,12236.53]},{\"name\":\"江西\",\"value\":[305.9,7655.18]},{\"name\":\"山东\",\"value\":[1329.59,33896.65]},{\"name\":\"河南\",\"value\":[622.98,19480.46]},{\"name\":\"湖北\",\"value\":[546.11,12961.1]},{\"name\":\"湖南\",\"value\":[400.11,13059.69]},{\"name\":\"广东\",\"value\":[2470.63,39482.56]},{\"name\":\"广西\",\"value\":[348.98,7759.16]},{\"name\":\"海南\",\"value\":[121.76,1654.21]},{\"name\":\"重庆\",\"value\":[229.09,6530.01]},{\"name\":\"四川\",\"value\":[548.14,14151.28]},{\"name\":\"贵州\",\"value\":[136.15,3912.68]},{\"name\":\"云南\",\"value\":[205.14,6169.75]},{\"name\":\"西藏\",\"value\":[13.28,441.36]},{\"name\":\"陕西\",\"value\":[239.92,8169.8]},{\"name\":\"甘肃\",\"value\":[101.37,3387.56]},{\"name\":\"青海\",\"value\":[23.05,1081.27]},{\"name\":\"宁夏\",\"value\":[47.56,1353.31]},{\"name\":\"新疆\",\"value\":[115.23,4277.05]}]}]},{\"title\":{\"text\":\"2010全国宏观经济关联分析（GDP vs 房地产）\"},\"series\":[{\"data\":[{\"name\":\"北京\",\"value\":[1006.52,14113.58]},{\"name\":\"天津\",\"value\":[377.59,9224.46]},{\"name\":\"河北\",\"value\":[697.79,20394.26]},{\"name\":\"山西\",\"value\":[192,9200.86]},{\"name\":\"内蒙古\",\"value\":[309.25,11672]},{\"name\":\"辽宁\",\"value\":[733.37,18457.27]},{\"name\":\"吉林\",\"value\":[212.32,8667.58]},{\"name\":\"黑龙江\",\"value\":[391.89,10368.6]},{\"name\":\"上海\",\"value\":[1002.5,17165.98]},{\"name\":\"江苏\",\"value\":[2600.95,41425.48]},{\"name\":\"浙江\",\"value\":[1618.17,27722.31]},{\"name\":\"安徽\",\"value\":[532.17,12359.33]},{\"name\":\"福建\",\"value\":[679.03,14737.12]},{\"name\":\"江西\",\"value\":[340.56,9451.26]},{\"name\":\"山东\",\"value\":[1622.15,39169.92]},{\"name\":\"河南\",\"value\":[773.23,23092.36]},{\"name\":\"湖北\",\"value\":[564.41,15967.61]},{\"name\":\"湖南\",\"value\":[464.21,16037.96]},{\"name\":\"广东\",\"value\":[2813.95,46013.06]},{\"name\":\"广西\",\"value\":[405.79,9569.85]},{\"name\":\"海南\",\"value\":[188.33,2064.5]},{\"name\":\"重庆\",\"value\":[266.38,7925.58]},{\"name\":\"四川\",\"value\":[558.56,17185.48]},{\"name\":\"贵州\",\"value\":[139.64,4602.16]},{\"name\":\"云南\",\"value\":[223.45,7224.18]},{\"name\":\"西藏\",\"value\":[14.54,507.46]},{\"name\":\"陕西\",\"value\":[315.95,10123.48]},{\"name\":\"甘肃\",\"value\":[110.02,4120.75]},{\"name\":\"青海\",\"value\":[25.41,1350.43]},{\"name\":\"宁夏\",\"value\":[60.53,1689.65]},{\"name\":\"新疆\",\"value\":[143.44,5437.47]}]}]},{\"title\":{\"text\":\"2011全国宏观经济关联分析（GDP vs 房地产）\"},\"series\":[{\"data\":[{\"name\":\"北京\",\"value\":[1074.93,16251.93]},{\"name\":\"天津\",\"value\":[411.46,11307.28]},{\"name\":\"河北\",\"value\":[918.02,24515.76]},{\"name\":\"山西\",\"value\":[224.91,11237.55]},{\"name\":\"内蒙古\",\"value\":[384.76,14359.88]},{\"name\":\"辽宁\",\"value\":[876.12,22226.7]},{\"name\":\"吉林\",\"value\":[238.61,10568.83]},{\"name\":\"黑龙江\",\"value\":[492.1,12582]},{\"name\":\"上海\",\"value\":[1019.68,19195.69]},{\"name\":\"江苏\",\"value\":[2747.89,49110.27]},{\"name\":\"浙江\",\"value\":[1677.13,32318.85]},{\"name\":\"安徽\",\"value\":[634.92,15300.65]},{\"name\":\"福建\",\"value\":[911.16,17560.18]},{\"name\":\"江西\",\"value\":[402.51,11702.82]},{\"name\":\"山东\",\"value\":[1838.14,45361.85]},{\"name\":\"河南\",\"value\":[987,26931.03]},{\"name\":\"湖北\",\"value\":[634.67,19632.26]},{\"name\":\"湖南\",\"value\":[518.04,19669.56]},{\"name\":\"广东\",\"value\":[3321.31,53210.28]},{\"name\":\"广西\",\"value\":[465.68,11720.87]},{\"name\":\"海南\",\"value\":[208.71,2522.66]},{\"name\":\"重庆\",\"value\":[396.28,10011.37]},{\"name\":\"四川\",\"value\":[620.62,21026.68]},{\"name\":\"贵州\",\"value\":[160.3,5701.84]},{\"name\":\"云南\",\"value\":[222.31,8893.12]},{\"name\":\"西藏\",\"value\":[17.44,605.83]},{\"name\":\"陕西\",\"value\":[398.03,12512.3]},{\"name\":\"甘肃\",\"value\":[134.25,5020.37]},{\"name\":\"青海\",\"value\":[29.05,1670.44]},{\"name\":\"宁夏\",\"value\":[79.01,2102.21]},{\"name\":\"新疆\",\"value\":[176.22,6610.05]}]}]}]}";
    NSData *jsonData = [json dataUsingEncoding:NSUTF8StringEncoding];
    NSDictionary *jsonDic = [NSJSONSerialization JSONObjectWithData:jsonData options:NSJSONReadingAllowFragments error:nil];
    PYOption *option = [RMMapper objectWithClass:[PYOption class] fromDictionary:jsonDic];
    return option;
}

+ (PYOption *)scaleRoamingOption {
    return [PYOption initPYOptionWithBlock:^(PYOption *option) {
        option.tooltipEqual([PYTooltip initPYTooltipWithBlock:^(PYTooltip *tooltip) {
            tooltip.triggerEqual(PYTooltipTriggerItem);
        }])
        .gridEqual([PYGrid initPYGridWithBlock:^(PYGrid *grid) {
            grid.xEqual(@60).x2Equal(@40);
        }])
        .toolboxEqual([PYToolbox initPYToolboxWithBlock:^(PYToolbox *toolbox) {
            toolbox.showEqual(YES)
            .featureEqual([PYToolboxFeature initPYToolboxFeatureWithBlock:^(PYToolboxFeature *feature) {
                feature.markEqual([PYToolboxFeatureMark initPYToolboxFeatureMarkWithBlock:^(PYToolboxFeatureMark *mark) {
                    mark.showEqual(YES);
                }])
                .dataZoomEqual([PYToolboxFeatureDataZoom initPYToolboxFeatureDataZoomWithBlock:^(PYToolboxFeatureDataZoom *dataZoom) {
                    dataZoom.showEqual(YES);
                }])
                .dataViewEqual([PYToolboxFeatureDataView initPYToolboxFeatureDataViewWithBlock:^(PYToolboxFeatureDataView *dataView) {
                    dataView.showEqual(YES).readOnlyEqual(NO);
                }])
                .restoreEqual([PYToolboxFeatureRestore initPYToolboxFeatureRestoreWithBlock:^(PYToolboxFeatureRestore *restore) {
                    restore.showEqual(YES);
                }]);
            }]);
        }])
        .dataRangeEqual([PYDataRange initPYDataRangeWithBlock:^(PYDataRange *dataRange) {
            dataRange.minEqual(@0)
            .maxEqual(@100)
            .yEqual(PYPositionCenter)
            .textEqual([[NSMutableArray alloc] initWithArray:@[@"高", @"低"]])
            .colorEqual([[NSMutableArray alloc] initWithArray:@[@"lightgreen", @"yellow"]])
            .calculableEqual(YES);
        }])
        .addXAxis([PYAxis initPYAxisWithBlock:^(PYAxis *axis) {
            axis.typeEqual(PYAxisTypeValue)
            .scaleEqual(YES);
        }])
        .addYAxis([PYAxis initPYAxisWithBlock:^(PYAxis *axis) {
            axis.typeEqual(PYAxisTypeValue)
            .positionEqual(PYPositionRight)
            .scaleEqual(YES);
        }])
        .animationEqual(NO)
        .addSeries([PYCartesianSeries initPYCartesianSeriesWithBlock:^(PYCartesianSeries *series) {
            series.symbolSizeEqual(@5)
            .nameEqual(@"scatter1")
            .typeEqual(PYSeriesTypeScatter)
            .dataEqual(@"(function () {var d = [];var len = 500;var value;while (len--) {value = (Math.random()*100).toFixed(2) - 0;d.push([(Math.random()*value + value).toFixed(2) - 0,(Math.random()*value).toFixed(2) - 0,value]);}return d;})()");
        }]);
    }];
}

+ (PYOption *)scatterOption {
    return [PYOption initPYOptionWithBlock:^(PYOption *option) {
        option.tooltipEqual([PYTooltip initPYTooltipWithBlock:^(PYTooltip *tooltip) {
            tooltip.triggerEqual(PYTooltipTriggerAxis)
            .axisPointerEqual([PYAxisPointer initPYAxisPointerWithBlock:^(PYAxisPointer *axisPoint) {
                axisPoint.showEqual(YES)
                .typeEqual(PYAxisPointerTypeCross)
                .lineStyleEqual([PYLineStyle initPYLineStyleWithBlock:^(PYLineStyle *lineStyle) {
                    lineStyle.typeEqual(PYLineStyleTypeDashed)
                    .widthEqual(@1);
                }]);
            }]);
        }])
        .gridEqual([PYGrid initPYGridWithBlock:^(PYGrid *grid) {
            grid.xEqual(@30).x2Equal(@30);
        }])
        .legendEqual([PYLegend initPYLegendWithBlock:^(PYLegend *legend) {
            legend.dataEqual(@[@"scatter1", @"scatter2"]);
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
            axis.typeEqual(PYAxisTypeValue);
        }])
        .addYAxis([PYAxis initPYAxisWithBlock:^(PYAxis *axis) {
            axis.typeEqual(PYAxisTypeValue);
        }])
        .addSeries([PYCartesianSeries initPYCartesianSeriesWithBlock:^(PYCartesianSeries *series) {
            series.symbolEqual(PYSymbolEmptyCircle)
            .symbolSizeEqual(@"(function (value){if (value[0] < 2) {return 2;}else if (value[0] < 8) {return Math.round(value[2] * 3);}else {return 20;}})")
            .nameEqual(@"scatter1")
            .typeEqual(PYSeriesTypeScatter)
            .itemStyleEqual([PYItemStyle initPYItemStyleWithBlock:^(PYItemStyle *itemStyle) {
                itemStyle.normalEqual([PYItemStyleProp initPYItemStylePropWithBlock:^(PYItemStyleProp *normal) {
                    normal.colorEqual(@"lightblue")
                    .borderWidthEqual(@4)
                    .labelEqual([PYLabel initPYLabelWithBlock:^(PYLabel *label) {
                        label.showEqual(YES);
                    }]);
                }])
                .emphasisEqual([PYItemStyleProp initPYItemStylePropWithBlock:^(PYItemStyleProp *emphasis) {
                    emphasis.colorEqual(@"lightblue");
                }]);
            }])
            .dataEqual(@"(function () {var d = [];var len = 20;while (len--) {d.push([(Math.random()*10).toFixed(2) - 0,(Math.random()*10).toFixed(2) - 0,(Math.random()*10).toFixed(2) - 0]);}return d;})()")
            .markPointEqual([PYMarkPoint initPYMarkPointWithBlock:^(PYMarkPoint *markPoint) {
                markPoint.addData(@{@"type" : @"max", @"name": @"y最大值"})
                .addData(@{@"type" : @"min", @"name": @"y最小值"})
                .addData(@{@"type" : @"max", @"name": @"x最大值", @"valueIndex" : @0, @"symbol":@"arrow",@"itemStyle":@{@"normal":@{@"borderColor":@"red"}}})
                .addData(@{@"type" : @"min", @"name": @"x最小值", @"valueIndex" : @0, @"symbol":@"arrow",@"itemStyle":@{@"normal":@{@"borderColor":@"red"}}});
            }])
            .markLineEqual([PYMarkLine initPYMarkLineWithBlock:^(PYMarkLine *markLine) {
                markLine.addData( @{@"type" : @"average", @"name": @"y平均值"})
                .addData(@{@"type" : @"average", @"name": @"x平均值", @"valueIndex" : @0, @"itemStyle":@{@"normal":@{@"borderColor":@"red"}}});
            }]);
        }])
        .addSeries([PYCartesianSeries initPYCartesianSeriesWithBlock:^(PYCartesianSeries *series) {
            series.symbolEqual(@"image://http://echarts.baidu.com/echarts2/doc/asset/ico/favicon.png")
            .symbolSizeEqual(@"(function (value){return Math.round(value[2] * 3);})")
            .itemStyleEqual([PYItemStyle initPYItemStyleWithBlock:^(PYItemStyle *itemStyle) {
                itemStyle.emphasisEqual([PYItemStyleProp initPYItemStylePropWithBlock:^(PYItemStyleProp *emphasis) {
                    emphasis.labelEqual([PYLabel initPYLabelWithBlock:^(PYLabel *label) {
                        label.showEqual(YES);
                    }]);
                }]);
            }])
            .nameEqual(@"scatter2")
            .typeEqual(PYSeriesTypeScatter)
            .dataEqual(@"(function () {var d = [];var len = 20;while (len--) {d.push([(Math.random()*10).toFixed(2) - 0,(Math.random()*10).toFixed(2) - 0,(Math.random()*10).toFixed(2) - 0]);}d.push({value : [5,5,1000],itemStyle: {normal: {borderWidth: 8,color: 'orange'},emphasis: {borderWidth: 10,color: '#ff4500'}},symbol: 'emptyTriangle',symbolRotate:90,symbolSize:30})return d;})()")
            .markPointEqual([PYMarkPoint initPYMarkPointWithBlock:^(PYMarkPoint *markPoint) {
                markPoint.symbolEqual(PYSymbolEmptyCircle)
                .itemStyleEqual([PYItemStyle initPYItemStyleWithBlock:^(PYItemStyle *itemStyle) {
                    itemStyle.normalEqual([PYItemStyleProp initPYItemStylePropWithBlock:^(PYItemStyleProp *normal) {
                        normal.labelEqual([PYLabel initPYLabelWithBlock:^(PYLabel *label) {
                            label.positionEqual(PYPositionTop);
                        }]);
                    }]);
                }])
                .addDataArr(@[@{@"name" : @"有个东西", @"value" : @1000, @"xAxis": @5, @"yAxis": @5, @"symbolSize":@80}]);
            }]);
        }]);
    }];
}

@end
