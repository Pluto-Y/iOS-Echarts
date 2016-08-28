//
//  PYHeatmapSeries.m
//  iOS-Echarts
//
//  Created by Pluto Y on 15/12/28.
//  Copyright © 2015年 pluto-y. All rights reserved.
//

#import "PYHeatmapSeries.h"

@implementation PYHeatmapSeries

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.type = PYSeriesTypeHeatmap;
        _blurSize = @30;
        _gradientColors = @[@"blue", @"cyan", @"lime", @"yellow", @"red"];
        _minAlpha = @0.05;
        _valueScale = @1;
        _opacity = @1;
    }
    return self;
}

PYInitializerImpTemplate(PYHeatmapSeries);

PYPropertyEqualImpTemplate(PYHeatmapSeries, NSNumber *, blurSize);
PYPropertyEqualImpTemplate(PYHeatmapSeries, NSArray *, gradientColors);
PYPropertyEqualImpTemplate(PYHeatmapSeries, NSNumber *, minAlpha);
PYPropertyEqualImpTemplate(PYHeatmapSeries, NSNumber *, valueScale);
PYPropertyEqualImpTemplate(PYHeatmapSeries, NSNumber *, opacity);

@end
