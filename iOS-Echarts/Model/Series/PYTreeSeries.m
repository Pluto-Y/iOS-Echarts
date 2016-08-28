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

PYPropertyEqualImpTemplate(PYTreeSeriesData, PYItemStyle, itemStyle);

@end

@implementation PYTreeSeries

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.type = PYSeriesTypeTree;
        _layerPadding = @100;
        _nodePadding = @30;
        _orient = @"vertical";
        _roam = @NO;
        _symbol = PYSymbolCircle;
        _symbolSize = @20;
    }
    return self;
}

PYInitializerImpTemplate(PYTreeSeries);

@end
