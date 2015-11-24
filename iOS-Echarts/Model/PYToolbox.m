//
//  PYToolbox.m
//  iOS-Echarts
//
//  Created by Pluto-Y on 15/9/16.
//  Copyright (c) 2015年 pluto-y. All rights reserved.
//

#import "PYToolbox.h"
#import "PYColor.h"

@implementation PYToolbox

- (instancetype)init
{
    self = [super init];
    if (self) {
        _show = NO;
        _zlevel = @(0);
        _z = @(6);
        _orient = @"horizontal";
        _x = @"right";
        _y = @"top";
        _backgroundColor = PYRGBA(0, 0, 0, 0);
        _borderColor = PYRGBA(12, 12, 12, 1);
        _borderWidth = @(0);
        _padding = @(5);
        _itemGap = @(10);
        _itemSize = @(16);
        _color = @[PYRGBA(30, 144, 255, 1), PYRGBA(34, 187, 34, 1), PYRGBA(75, 0, 130, 1), PYRGBA(210, 105, 30, 1)];
        _disableColor = PYRGBA(13, 13, 13, 0);
        _effectiveColor = PYRGBA(255, 0, 0, 1);
        _showTitle = YES;
        _feature = [[PYToolboxFeature alloc] init];
    }
    return self;
}

@end
