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

PYInitializerImpTemplate(PYGrid);

PYPropertyEqualImpTemplate(PYGrid, NSNumber *, zlevel);
PYPropertyEqualImpTemplate(PYGrid, NSNumber *, z);
PYPropertyEqualImpTemplate(PYGrid, id, x);
PYPropertyEqualImpTemplate(PYGrid, id, y);
PYPropertyEqualImpTemplate(PYGrid, id, x2);
PYPropertyEqualImpTemplate(PYGrid, id, y2);
PYPropertyEqualImpTemplate(PYGrid, NSNumber *, width);
PYPropertyEqualImpTemplate(PYGrid, NSNumber *, height);
PYPropertyEqualImpTemplate(PYGrid, PYColor *, backgroundColor);
PYPropertyEqualImpTemplate(PYGrid, NSNumber *, borderWidth);
PYPropertyEqualImpTemplate(PYGrid, PYColor *, borderColor);

@end
