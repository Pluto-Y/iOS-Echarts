//
//  PYRadarSeries.m
//  iOS-Echarts
//
//  Created by Pluto Y on 15/12/21.
//  Copyright © 2015年 pluto-y. All rights reserved.
//

#import "PYRadarSeries.h"

@implementation PYRadarSeries

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.type = PYSeriesTypeRadar;
        _polarIndex = (0);
        _symbolSize = @(2);
        _legendHoverLink = YES;
    }
    return self;
}

PYInitializerImpTemplate(PYRadarSeries);

PYPropertyEqualImpTemplate(PYRadarSeries, NSNumber *, polarIndex);
PYPropertyEqualImpTemplate(PYRadarSeries, PYSymbol, symbol);
PYPropertyEqualImpTemplate(PYRadarSeries, id, symbolSize);
PYPropertyEqualImpTemplate(PYRadarSeries, NSNumber *, symbolRotate);
PYPropertyEqualImpTemplate(PYRadarSeries, BOOL, legendHoverLink);

@end
