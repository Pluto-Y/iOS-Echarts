//
//  PYLineSeries.m
//  iOS-Echarts
//
//  Created by Pluto Y on 15/9/8.
//  Copyright (c) 2015年 pluto-y. All rights reserved.
//

#import "PYCartesianSeries.h"

PYCartesianSeriesDataFilter const PYCartesianSeriesDataFilterNearest = @"nearest";
PYCartesianSeriesDataFilter const PYCartesianSeriesDataFilterMin = @"min";
PYCartesianSeriesDataFilter const PYCartesianSeriesDataFilterMax = @"max";
PYCartesianSeriesDataFilter const PYCartesianSeriesDataFilterAverage = @"average";

static NSArray<PYCartesianSeriesDataFilter> *cartesianSeriesDataFilterScope;
@implementation PYCartesianSeries

+ (void)initialize
{
    if (self == [PYCartesianSeries class]) {
        cartesianSeriesDataFilterScope = @[PYCartesianSeriesDataFilterNearest, PYCartesianSeriesDataFilterMin, PYCartesianSeriesDataFilterMax, PYCartesianSeriesDataFilterAverage];
    }
}

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.type = PYSeriesTypeLine;
        _barGap = @"30%";
        _barCategoryGap = @"30%";
        _showAllSymbol = NO;
        _smooth = NO;
        _dataFilter = PYCartesianSeriesDataFilterNearest;
        _large = NO;
        _largeThreshold = @(2000);
        _legendHoverLink = YES;
    }
    return self;
}

- (void)setDataFilter:(PYCartesianSeriesDataFilter)dataFilter {
    if (![cartesianSeriesDataFilterScope containsObject:dataFilter]) {
        NSLog(@"ERROR: Tooltip does not support the trigger --- %@", dataFilter);
        _dataFilter = PYCartesianSeriesDataFilterNearest;
        return;
    }
    _dataFilter = [dataFilter copy];
}

@end
