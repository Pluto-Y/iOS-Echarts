//
//  PYMapSeries.m
//  iOS-Echarts
//
//  Created by Pluto Y on 16/2/17.
//  Copyright © 2016年 pluto-y. All rights reserved.
//

#import "PYMapSeries.h"

PYMapSeriesMapValueCalculation const PYMapSeriesMapValueCalculationSum = @"sum";
PYMapSeriesMapValueCalculation const PYMapSeriesMapValueCalculationAverage = @"average";

static NSArray<PYMapSeriesMapValueCalculation> *mapValueCalculationScope;
@implementation PYMapSeries

+ (void)initialize
{
    if (self == [PYMapSeries class]) {
        mapValueCalculationScope = @[PYMapSeriesMapValueCalculationSum, PYMapSeriesMapValueCalculationAverage];
    }
}

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.type = PYSeriesTypeMap;
        _mapType = @"China";
        _hoverable = YES;
        _dataRangeHoverLink = YES;
        _mapLocation = @{@"x":@"center", @"y":@"center"};
        _mapValueCalculation = PYMapSeriesMapValueCalculationSum;
        _showLegendSymbol = YES;
        _roam = @(NO);
    }
    return self;
}

- (void)setMapValueCalculation:(PYMapSeriesMapValueCalculation)mapValueCalculation {
    if (![mapValueCalculationScope containsObject:mapValueCalculation]) {
        NSLog(@"ERROR: MapSeries does not support the mapValueCalculation --- %@", mapValueCalculation);
        _mapValueCalculation = PYMapSeriesMapValueCalculationSum;
        return;
    }
    _mapValueCalculation = [mapValueCalculation copy];
}

PYInitializerImpTemplate(PYMapSeries);

@end
