//
//  PYFunnelSeries.m
//  iOS-Echarts
//
//  Created by Pluto Y on 4/24/16.
//  Copyright © 2016 Pluto-y. All rights reserved.
//

#import "PYFunnelSeries.h"

PYFunnelSeriesSort const PYFunnelSeriesSortAscending = @"ascending";
PYFunnelSeriesSort const PYFunnelSeriesSortDescending = @"descending";

static NSArray *funnelSeriesSortScope;
@implementation PYFunnelSeries

+ (void)initialize
{
    if (self == [PYFunnelSeries class]) {
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated"
        funnelSeriesSortScope = @[PYSortNone, PYSortAscending, PYSortDescending, PYFunnelSeriesSortAscending, PYFunnelSeriesSortDescending];
#pragma clang diagnostic pop
    }
}

- (instancetype)init {
    self = [super init];
    if (self) {
        self.type = PYSeriesTypeFunnel;
        _x = @(80);
        _y = @(60);
        _x2 = @(80);
        _y2 = @(60);
        _funnelAlign = PYPositionCenter;
        _min = 0;
        _max = @(100);
        _minSize = @"0%";
        _maxSize = @"100%";
        _sort = PYSortDescending;
        _legendHoverLink = YES;
    }
    return self;
}

- (void)setSort:(PYSort)sort {
    if (![funnelSeriesSortScope containsObject:sort]) {
        NSLog(@"ERROR: FunnelSeries does not support the sort --- %@", sort);
        _sort = PYSortDescending;
        return;
    }
    _sort = [sort copy];
}

PYInitializerImpTemplate(PYFunnelSeries);

PYPropertyEqualImpTemplate(PYFunnelSeries, id, x);
PYPropertyEqualImpTemplate(PYFunnelSeries, id, y);
PYPropertyEqualImpTemplate(PYFunnelSeries, id, x2);
PYPropertyEqualImpTemplate(PYFunnelSeries, id, y2);
PYPropertyEqualImpTemplate(PYFunnelSeries, id, width);
PYPropertyEqualImpTemplate(PYFunnelSeries, id, height);
PYPropertyEqualImpTemplate(PYFunnelSeries, NSString *, funnelAlign);
PYPropertyEqualImpTemplate(PYFunnelSeries, NSNumber *, min);
PYPropertyEqualImpTemplate(PYFunnelSeries, NSNumber *, max);
PYPropertyEqualImpTemplate(PYFunnelSeries, NSString *, minSize);
PYPropertyEqualImpTemplate(PYFunnelSeries, NSString *, maxSize);
PYPropertyEqualImpTemplate(PYFunnelSeries, PYSort, sort);
PYPropertyEqualImpTemplate(PYFunnelSeries, NSNumber *, gap);
PYPropertyEqualImpTemplate(PYFunnelSeries, BOOL, legendHoverLink);

@end
