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
        _polarIndex = (0);
        _symbolSize = @(2);
        _legendHoverLink = YES;
    }
    return self;
}

@end
