//
//  PYMapSeries.m
//  iOS-Echarts
//
//  Created by Pluto Y on 16/2/17.
//  Copyright © 2016年 pluto-y. All rights reserved.
//

#import "PYMapSeries.h"

@implementation PYMapSeries

- (instancetype)init
{
    self = [super init];
    if (self) {
        _mapType = @"China";
        _hoverable = YES;
        _dataRangeHoverLink = YES;
        _mapLocation = @{@"x":@"center", @"y":@"center"};
        _mapValueCalculation = @"sum";
        _showLegendSymbol = YES;
        _roam = @(NO);
    }
    return self;
}

@end
