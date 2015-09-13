//
//  PYLineSeries.m
//  iOS-Echarts
//
//  Created by Pluto Y on 15/9/8.
//  Copyright (c) 2015年 pluto-y. All rights reserved.
//

#import "PYCartesianSeries.h"

@implementation PYCartesianSeries

- (instancetype)init
{
    self = [super init];
    if (self) {
        _barGap = @"30%";
        _barCategoryGap = @"30%";
        _showAllSymbol = NO;
        _smooth = NO;
        _dataFilter = @"nearst";
        _large = NO;
        _largeThreshold = @(2000);
        _legendHoverLink = YES;
    }
    return self;
}

@end
