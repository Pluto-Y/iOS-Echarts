//
//  PYSeries.m
//  iOS-Echarts
//
//  Created by Pluto Y on 15/9/8.
//  Copyright (c) 2015年 pluto-y. All rights reserved.
//

#import "PYSeries.h"

PYSeriesType const PYSeriesTypeLine       = @"line";
PYSeriesType const PYSeriesTypeBar        = @"bar";
PYSeriesType const PYSeriesTypeScatter    = @"scatter";
PYSeriesType const PYSeriesTypeK          = @"k";
PYSeriesType const PYSeriesTypePie        = @"pie";
PYSeriesType const PYSeriesTypeRadar      = @"radar";
PYSeriesType const PYSeriesTypeChord      = @"chord";
PYSeriesType const PYSeriesTypeForce      = @"force";
PYSeriesType const PYSeriesTypeMap        = @"map";
PYSeriesType const PYSeriesTypeWordCloud  = @"wordCloud";
PYSeriesType const PYSeriesTypeVenn       = @"venn";
PYSeriesType const PYSeriesTypeTreemap    = @"treemap";
PYSeriesType const PYSeriesTypeGauge      = @"gauge";
PYSeriesType const PYSeriesTypeEventRiver = @"eventRiver";
PYSeriesType const PYSeriesTypeFunnel     = @"funnel";
PYSeriesType const PYSeriesTypeHeatmap    = @"heatmap";
PYSeriesType const PYSeriesTypeTree       = @"tree";

static NSArray<PYSeriesType> *seriesTypeScope;
@interface PYSeries()

@end

@implementation PYSeries

+ (void)initialize
{
    if (self == [PYSeries class]) {
        seriesTypeScope = @[PYSeriesTypeLine, PYSeriesTypeBar, PYSeriesTypeScatter, PYSeriesTypeK, PYSeriesTypePie, PYSeriesTypeRadar, PYSeriesTypeChord, PYSeriesTypeForce, PYSeriesTypeMap, PYSeriesTypeWordCloud, PYSeriesTypeVenn, PYSeriesTypeTreemap, PYSeriesTypeGauge, PYSeriesTypeEventRiver, PYSeriesTypeFunnel, PYSeriesTypeHeatmap, PYSeriesTypeTree];
    }
}

- (instancetype)init
{
    self = [super init];
    if (self) {
        _zlevel = 0;
        _z = @(2);
        _clickable = YES;
        _data = @[];
    }
    return self;
}

- (void)setType:(NSString *)type {
    if (type != nil && ![seriesTypeScope containsObject:type]) {
        NSLog(@"ERROR: Series does not support type --- %@", type);
        type = nil;
        return;
    }
    _type = [type copy];
}

@end
