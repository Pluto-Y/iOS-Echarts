//
//  PYGrid.m
//  iOS-Echarts
//
//  Created by Pluto-Y on 15/9/23.
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
//        _x = @(0);
//        _y = @(0);
//        _x2 = @(0);
//        _y2 = @(0);
        _backgroundColor = PYRGBA(0, 0, 0, 0);
        _borderWidth = @(1);
        _borderColor = PYRGBA(12, 12, 12, 1);
    }
    return self;
}

@end
