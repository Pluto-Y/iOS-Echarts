//
//  PYWorldCloudDemoOptions.m
//  iOS-Echarts
//
//  Created by Pluto Y on 9/8/16.
//  Copyright © 2016 pluto-y. All rights reserved.
//

#import "PYWorldCloudDemoOptions.h"

@implementation PYWorldCloudDemoOptions

+ (PYOption *)worldCloudOption {
    return [PYOption initPYOptionWithBlock:^(PYOption *option) {
        option.titleEqual([PYTitle initPYTitleWithBlock:^(PYTitle *title) {
            title.textEqual(@"Google Trends")
            .linkEqual(@"http://www.google.com/trends/hottrends");
        }])
        .tooltipEqual([PYTooltip initPYTooltipWithBlock:^(PYTooltip *tooltip) {
            tooltip.showEqual(YES);
        }])
        .addSeries([PYWordCloudSeries initPYWordCloudSeriesWithBlock:^(PYWordCloudSeries *series) {
            series.sizeEqual(@[@"80%", @"80%"])
            .textRotationEqual(@[@0, @45, @90, @(-45)])
            .textPaddingEqual(@0)
            .autoSizeEqual(@{@"enable":@YES, @"minSize":@14})
            .nameEqual(@"Google Trends")
            .typeEqual(PYSeriesTypeWordCloud)
            .addData(@{@"name":@"Sam S Club", @"value":@10000, @"itemStyle":[PYItemStyle initPYItemStyleWithBlock:^(PYItemStyle *itemStyle) {
                itemStyle.normalEqual([PYItemStyleProp initPYItemStylePropWithBlock:^(PYItemStyleProp *normal) {
                    normal.colorEqual(@"black");
                }]);
            }]})
            .addData(@{@"name":@"Macys", @"value":@6181, @"itemStyle":[self createRandomItemStyle]})
            .addData(@{@"name":@"Amy Schumer", @"value":@4386, @"itemStyle":[self createRandomItemStyle]})
            .addData(@{@"name":@"Jurassic World", @"value":@4055, @"itemStyle":[self createRandomItemStyle]})
            .addData(@{@"name":@"Charter Communications", @"value":@2467, @"itemStyle":[self createRandomItemStyle]})
            .addData(@{@"name":@"Chick Fil A", @"value":@2244, @"itemStyle":[self createRandomItemStyle]})
            .addData(@{@"name":@"Planet Fitness", @"value":@1898, @"itemStyle":[self createRandomItemStyle]})
            .addData(@{@"name":@"Pitch Perfect", @"value":@1484, @"itemStyle":[self createRandomItemStyle]})
            .addData(@{@"name":@"Express", @"value":@1112, @"itemStyle":[self createRandomItemStyle]})
            .addData(@{@"name":@"Home", @"value":@965, @"itemStyle":[self createRandomItemStyle]})
            .addData(@{@"name":@"Johnny Depp", @"value":@847, @"itemStyle":[self createRandomItemStyle]})
            .addData(@{@"name":@"Lena Dunham", @"value":@587, @"itemStyle":[self createRandomItemStyle]})
            .addData(@{@"name":@"Lewis Hamilton", @"value":@555, @"itemStyle":[self createRandomItemStyle]})
            .addData(@{@"name":@"KXAN", @"value":@550, @"itemStyle":[self createRandomItemStyle]})
            .addData(@{@"name":@"Mary Ellen Mark", @"value":@462, @"itemStyle":[self createRandomItemStyle]})
            .addData(@{@"name":@"Farrah Abraham", @"value":@366, @"itemStyle":[self createRandomItemStyle]})
            .addData(@{@"name":@"Rita Ora", @"value":@360, @"itemStyle":[self createRandomItemStyle]})
            .addData(@{@"name":@"Serena Williams", @"value":@282, @"itemStyle":[self createRandomItemStyle]})
            .addData(@{@"name":@"NCAA baseball tournament", @"value":@273, @"itemStyle":[self createRandomItemStyle]})
            .addData(@{@"name":@"Point Break", @"value":@265, @"itemStyle":[self createRandomItemStyle]});
        }]);
    }];
}

+ (PYItemStyle *)createRandomItemStyle {
    return [PYItemStyle initPYItemStyleWithBlock:^(PYItemStyle *itemStyle) {
        itemStyle.normalEqual([PYItemStyleProp initPYItemStylePropWithBlock:^(PYItemStyleProp *normal) {
            normal.colorEqual(PYRGBA((arc4random() % 256)*160.0/256, (arc4random() % 256)*160.0/256, (arc4random() % 256)*160.0/256, 1.0));
        }]);
    }];
}

@end
