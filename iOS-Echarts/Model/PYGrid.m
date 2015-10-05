//
//  PYGrid.m
//  iOS-Echarts
//
//  Created by ChipSea on 15/9/23.
//  Copyright © 2015年 pluto-y. All rights reserved.
//

#import "PYGrid.h"
#import "PYColor.h"

@implementation PYGrid

- (instancetype)init
{
    self = [super init];
    if (self) {
        _zlevel = @(0);
        _z = @(0);
        _x = @(80);
        _y = @(60);
        _x2 = @(80);
        _y2 = @(60);
        _backgroundColor = PYRGBA(0, 0, 0, 0);
        _borderWidth = @(1);
        _borderColor = PYRGBA(12, 12, 12, 1);
    }
    return self;
}

@end
