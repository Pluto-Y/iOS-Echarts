//
//  PYEventRiverSeries.m
//  iOS-Echarts
//
//  Created by Pluto Y on 4/24/16.
//  Copyright © 2016 Pluto-y. All rights reserved.
//

#import "PYEventRiverSeries.h"

@implementation PYEventRiverSeries

- (instancetype)init {
    self = [super init];
    if (self) {
        self.type = PYSeriesTypeEventRiver;
        _xAxisIndex = 0;
        _weight = @(1);
        _legendHoverLink = YES;
    }
    return self;
}

PYInitializerImpTemplate(PYEventRiverSeries);

PYPropertyEqualImpTemplate(PYEventRiverSeries, NSNumber *, xAxisIndex);
PYPropertyEqualImpTemplate(PYEventRiverSeries, NSNumber *, weight);
PYPropertyEqualImpTemplate(PYEventRiverSeries, BOOL, legendHoverLink);

@end
