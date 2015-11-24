//
//  PYDataZoom.m
//  iOS-Echarts
//
//  Created by Pluto-Y on 15/9/23.
//  Copyright © 2015年 pluto-y. All rights reserved.
//

#import "PYDataZoom.h"
#import "PYColor.h"

@implementation PYDataZoom

- (instancetype)init
{
    self = [super init];
    if (self) {
        _zlevel = @(0);
        _z = @(4);
        _show = NO;
        _orient = @"horizontal";
        _backgroundColor = PYRGBA(0, 0, 0, 0);
        _dataBackgroundColor = PYRGBA(14, 14, 14, 1);
        _fillerColor = PYRGBA(144, 197, 237, .2);
        _handleColor = PYRGBA(70, 130, 180, .8);
        _handleSize = @(8);
        _start = @(0);
        _end = @(100);
        _showDetail = YES;
        _realtime = NO;
        _zoomLock = NO;
    }
    return self;
}

@end
