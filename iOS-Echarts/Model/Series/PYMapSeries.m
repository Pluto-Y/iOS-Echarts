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
        _mapLocation = @{@"x":PYPositionCenter, @"y":PYPositionCenter};
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

PYPropertyEqualImpTemplate(PYMapSeries, id, selectedMode);
PYPropertyEqualImpTemplate(PYMapSeries, NSString *, mapType);
PYPropertyEqualImpTemplate(PYMapSeries, BOOL, hoverable);
PYPropertyEqualImpTemplate(PYMapSeries, BOOL, dataRangeHoverLink);
PYPropertyEqualImpTemplate(PYMapSeries, NSDictionary *, mapLocation);
PYPropertyEqualImpTemplate(PYMapSeries, PYMapSeriesMapValueCalculation, mapValueCalculation);
PYPropertyEqualImpTemplate(PYMapSeries, NSNumber *, mapValuePrecision);
PYPropertyEqualImpTemplate(PYMapSeries, BOOL, showLegendSymbol);
PYPropertyEqualImpTemplate(PYMapSeries, id, roam);
PYPropertyEqualImpTemplate(PYMapSeries, NSDictionary *, scaleLimit);
PYPropertyEqualImpTemplate(PYMapSeries, NSDictionary *, nameMap);
PYPropertyEqualImpTemplate(PYMapSeries, NSDictionary *, textFixed);
PYPropertyEqualImpTemplate(PYMapSeries, NSDictionary *, geoCoord);
PYPropertyEqualImpTemplate(PYMapSeries, NSDictionary *, heatmap);

@end
