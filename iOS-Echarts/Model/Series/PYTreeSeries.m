//
//  PYTreeSeries.m
//  iOS-Echarts
//
//  Created by Pluto Y on 4/22/16.
//  Copyright © 2016 Pluto-y. All rights reserved.
//

#import "PYTreeSeries.h"

@implementation PYTreeSeriesData

PYInitializerImpTemplate(PYTreeSeriesData);

PYPropertyEqualImpTemplate(PYTreeSeriesData, NSString *, name);
PYPropertyEqualImpTemplate(PYTreeSeriesData, NSNumber *, value);
PYPropertyEqualImpTemplate(PYTreeSeriesData, NSString *, symbol);
PYPropertyEqualImpTemplate(PYTreeSeriesData, id, symbolSize);
PYPropertyEqualImpTemplate(PYTreeSeriesData, NSArray *, children);
PYPropertyEqualImpTemplate(PYTreeSeriesData, PYItemStyle *, itemStyle);

@end

@implementation PYTreeSeries

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.type = PYSeriesTypeTree;
        _layerPadding = @100;
        _nodePadding = @30;
        _orient = PYOrientVertical;
        _roam = @NO;
        _symbol = PYSymbolCircle;
        _symbolSize = @20;
    }
    return self;
}

PYInitializerImpTemplate(PYTreeSeries);

PYPropertyEqualImpTemplate(PYTreeSeries, NSDictionary *, rootLocation);
PYPropertyEqualImpTemplate(PYTreeSeries, NSNumber *, layerPadding);
PYPropertyEqualImpTemplate(PYTreeSeries, NSNumber *, nodePadding);
PYPropertyEqualImpTemplate(PYTreeSeries, PYOrient, orient);
PYPropertyEqualImpTemplate(PYTreeSeries, NSString *, direction);
PYPropertyEqualImpTemplate(PYTreeSeries, id, roam);
PYPropertyEqualImpTemplate(PYTreeSeries, PYSymbol, symbol);
PYPropertyEqualImpTemplate(PYTreeSeries, id, symbolSize);
PYPropertyEqualImpTemplate(PYTreeSeries, BOOL, hoverable);

@end
