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
        funnelSeriesSortScope = @[PYFunnelSeriesSortAscending, PYFunnelSeriesSortDescending];
    }
}

- (instancetype)init {
    self = [super init];
    if (self) {
        _x = @(80);
        _y = @(60);
        _x2 = @(80);
        _y2 = @(60);
        _funnelAlign = @"center";
        _min = 0;
        _max = @(100);
        _minSize = @"0%";
        _maxSize = @"100%";
        _sort = PYFunnelSeriesSortDescending;
        _legendHoverLink = YES;
    }
    return self;
}

- (void)setSort:(PYFunnelSeriesSort)sort {
    if (![funnelSeriesSortScope containsObject:sort]) {
        NSLog(@"ERROR: FunnelSeries does not support the sort --- %@", sort);
        _sort = PYFunnelSeriesSortDescending;
        return;
    }
    _sort = [sort copy];
}

@end
