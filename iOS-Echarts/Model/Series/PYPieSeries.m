//
//  PYPieSeries.m
//  iOS-Echarts
//
//  Created by Pluto-Y on 15/10/3.
//  Copyright © 2015年 pluto-y. All rights reserved.
//

#import "PYPieSeries.h"

@implementation PYPieSeries

- (instancetype)init
{
    self = [super init];
    if (self) {
        _center = @[@"50%", @"50%"];
        _radius = @[@"0", @"75%"];
        _startAngle = @(90);
        _minAngle = @(0);
        _clockWise = YES;
        _selectedMode = @(10);
        _legendHoverLink = YES;
    }
    return self;
}

@end
