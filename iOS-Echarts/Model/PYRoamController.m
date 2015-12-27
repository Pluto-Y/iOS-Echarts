//
//  PYRoamController.m
//  iOS-Echarts
//
//  Created by Pluto Y on 15/12/27.
//  Copyright © 2015年 pluto-y. All rights reserved.
//

#import "PYRoamController.h"

@implementation PYRoamController

- (instancetype)init {
    self = [super init];
    if (self) {
        _show = YES;
        _zlevel = @0;
        _z = @4;
        _x = @"left";
        _y = @"top";
        _width = @80;
        _height = @120;
        _backgroundColor = PYRGBA(0, 0, 0, 0);
        _borderColor = PYRGBA(12, 12, 12, 1);
        _borderWidth = @0;
        _padding = @5;
        _fillerColor = PYRGBA(15, 15, 15, 1);
        _handleColor = PYRGBA(100, 149, 237, 1);
        _step = @15;
        _mapTypeControl = nil;
    }
    return self;
}

@end
