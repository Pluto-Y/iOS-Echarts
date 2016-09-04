//
//  PYToolbox.m
//  iOS-Echarts
//
//  Created by Pluto-Y on 15/9/16.
//  Copyright (c) 2015年 pluto-y. All rights reserved.
//

#import "PYToolbox.h"
#import "PYColor.h"
#import "PYToolboxFeature.h"
#import "PYTextStyle.h"

@implementation PYToolbox

- (instancetype)init
{
    self = [super init];
    if (self) {
        _show = NO;
        _zlevel = @(0);
        _z = @(6);
        _orient = PYOrientHorizontal;
        _x = PYPositionRight;
        _y = PYPositionTop;
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

PYInitializerImpTemplate(PYToolbox);

PYPropertyEqualImpTemplate(PYToolbox, BOOL, show);
PYPropertyEqualImpTemplate(PYToolbox, NSNumber *, zlevel);
PYPropertyEqualImpTemplate(PYToolbox, NSNumber *, z);
PYPropertyEqualImpTemplate(PYToolbox, PYOrient, orient);
PYPropertyEqualImpTemplate(PYToolbox, id, x);
PYPropertyEqualImpTemplate(PYToolbox, id, y);
PYPropertyEqualImpTemplate(PYToolbox, PYColor *, backgroundColor);
PYPropertyEqualImpTemplate(PYToolbox, PYColor *, borderColor);
PYPropertyEqualImpTemplate(PYToolbox, NSNumber *, borderWidth);
PYPropertyEqualImpTemplate(PYToolbox, id, padding);
PYPropertyEqualImpTemplate(PYToolbox, NSNumber *, itemGap);
PYPropertyEqualImpTemplate(PYToolbox, NSNumber *, itemSize);
PYPropertyEqualImpTemplate(PYToolbox, NSArray *, color);
PYPropertyEqualImpTemplate(PYToolbox, PYColor *, disableColor);
PYPropertyEqualImpTemplate(PYToolbox, PYColor *, effectiveColor);
PYPropertyEqualImpTemplate(PYToolbox, BOOL, showTitle);
PYPropertyEqualImpTemplate(PYToolbox, PYTextStyle *, textStyle);
PYPropertyEqualImpTemplate(PYToolbox, PYToolboxFeature *, feature);

@end
