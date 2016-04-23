//
//  PYFunnelSeries.m
//  iOS-Echarts
//
//  Created by Pluto Y on 4/24/16.
//  Copyright © 2016 Pluto-y. All rights reserved.
//

#import "PYFunnelSeries.h"

@implementation PYFunnelSeries

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
        _sort = @"descending";
        _legendHoverLink = YES;
    }
    return self;
}

@end
