//
//  PYChordSeries.m
//  iOS-Echarts
//
//  Created by Pluto Y on 8/24/16.
//  Copyright © 2016 pluto-y. All rights reserved.
//

#import "PYChordSeries.h"

@implementation PYChordSeries

- (instancetype)init
{
    self = [super init];
    if (self) {
        _ribbonType = YES;
        _symbol = PYSymbolCircle;
        _minRadius = @10;
        _maxRadius = @20;
        _showScale = NO;
        _showScaleText = NO;
        _padding = @2;
        _sort = PYSortNone;
        _sortSub = PYSortNone;
        _clockWise = NO;
    }
    return self;
}

@end
