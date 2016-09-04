//
//  PYRoamController.m
//  iOS-Echarts
//
//  Created by Pluto Y on 15/12/27.
//  Copyright © 2015年 pluto-y. All rights reserved.
//

#import "PYRoamController.h"
#import "PYColor.h"

@implementation PYRoamController

- (instancetype)init {
    self = [super init];
    if (self) {
        _show = YES;
        _zlevel = @0;
        _z = @4;
        _x = PYPositionLeft;
        _y = PYPositionTop;
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

PYInitializerImpTemplate(PYRoamController);

PYPropertyEqualImpTemplate(PYRoamController, BOOL, show);
PYPropertyEqualImpTemplate(PYRoamController, NSNumber *, zlevel);
PYPropertyEqualImpTemplate(PYRoamController, NSNumber *, z);
PYPropertyEqualImpTemplate(PYRoamController, id, x);
PYPropertyEqualImpTemplate(PYRoamController, id, y);
PYPropertyEqualImpTemplate(PYRoamController, NSNumber *, width);
PYPropertyEqualImpTemplate(PYRoamController, NSNumber *, height);
PYPropertyEqualImpTemplate(PYRoamController, PYColor *, backgroundColor);
PYPropertyEqualImpTemplate(PYRoamController, PYColor *, borderColor);
PYPropertyEqualImpTemplate(PYRoamController, NSNumber *, borderWidth);
PYPropertyEqualImpTemplate(PYRoamController, id, padding);
PYPropertyEqualImpTemplate(PYRoamController, PYColor *, fillerColor);
PYPropertyEqualImpTemplate(PYRoamController, PYColor *, handleColor);
PYPropertyEqualImpTemplate(PYRoamController, NSNumber *, step);
PYPropertyEqualImpTemplate(PYRoamController, NSDictionary *, mapTypeControl);

@end
