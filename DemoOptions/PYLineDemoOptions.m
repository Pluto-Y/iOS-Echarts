//
//  PYLineDemoOptions.m
//  iOS-Echarts
//
//  Created by Pluto Y on 9/1/16.
//  Copyright © 2016 pluto-y. All rights reserved.
//

#import "PYLineDemoOptions.h"

@implementation PYLineDemoOptions

+ (PYOption *)standardLineOption {
    return nil;
}

+ (PYOption *)stackedLineOption {
    return nil;
}

+ (PYOption *)basicLinOption {
    return nil;
}

+ (PYOption *)basicAreaOption {
    return nil;
}

+ (PYOption *)stackedAreaOption {
    return nil;
}

+ (PYOption *)irregularLineOption {
    return nil;
}

+ (PYOption *)irregularLine2Option {
    return nil;
}

+ (PYOption *)lineOption {
    return nil;
}

+ (PYOption *)logarithmicOption {
    return [PYOption initPYOptionWithBlock:^(PYOption *option) {
        
        PYAxis *xAxis = [PYAxis initPYAxisWithBlock:^(PYAxis *axis) {
            axis.typeEqual(PYAxisTypeCategory)
            .nameEqual(@"x")
            .splitLineEqual([PYAxisSplitLine initPYAxisSplitLineWithBlock:^(PYAxisSplitLine *axisSpliteLine) {
                axisSpliteLine.showEqual(NO);
            }]);
            axis.data = @[@"一",@"二",@"三",@"四",@"五",@"六",@"七",@"八",@"九"];
        }];
        
        PYAxis *yAxis = [PYAxis initPYAxisWithBlock:^(PYAxis *axis) {
            axis.typeEqual(PYAxisTypeLog).nameEqual(@"y");
        }];
        
        PYSeries *series1 = [PYSeries initPYSeriesWithBlock:^(PYSeries *series) {
            series.nameEqual(@"3的指数")
            .typeEqual(PYSeriesTypeLine)
            .dataEqual([[NSMutableArray alloc] initWithArray:@[@(1),@(3),@(9),@(27),@(81),@(247),@(741),@(2223),@(6669)]]);
        }];
        
        PYSeries *series2 = [PYSeries initPYSeriesWithBlock:^(PYSeries *series) {
            series.nameEqual(@"2的指数")
            .typeEqual(PYSeriesTypeLine)
            .dataEqual([[NSMutableArray alloc] initWithArray:@[@(1),@(2),@(4),@(8),@(16),@(32),@(64),@(128),@(256)]]);
        }];
        
        option.titleEqual([PYTitle initPYTitleWithBlock:^(PYTitle *title) {
            title.textEqual(@"对数轴实例")
            .xEqual(PYPositionCenter);
        }])
        .tooltipEqual([PYTooltip initPYTooltipWithBlock:^(PYTooltip *tooltip) {
            tooltip.triggerEqual(PYTooltipTriggerItem)
            .formatterEqual(@"{a} <br/>{b} : {c}");
        }])
        .legendEqual([PYLegend initPYLegendWithBlock:^(PYLegend *legend) {
            legend.xEqual(PYPositionLeft)
            .dataEqual(@[@"2的指数", @"3的指数"]);
        }])
        .gridEqual([PYGrid initPYGridWithBlock:^(PYGrid *grid) {
            grid.xEqual(@40).x2Equal(@50);
        }])
        .xAxisEqual([[NSMutableArray alloc] initWithArray:@[xAxis]])
        .yAxisEqual([[NSMutableArray alloc] initWithArray:@[yAxis]])
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
                    magicType.showEqual(YES).typeEqual(@[PYSeriesTypeLine, PYSeriesTypeBar, @"stack", @"tiled"]);
                }])
                .restoreEqual([PYToolboxFeatureRestore initPYToolboxFeatureRestoreWithBlock:^(PYToolboxFeatureRestore *restore) {
                    restore.showEqual(YES);
                }]);
            }]);
        }])
        .calculableEqual(YES)
        .seriesEqual([[NSMutableArray alloc] initWithArray:@[series1, series2]]);
    }];;
}

@end
