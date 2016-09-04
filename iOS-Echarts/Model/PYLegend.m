//
//  PYLegend.m
//  iOS-Echarts
//
//  Created by Pluto Y on 15/9/8.
//  Copyright (c) 2015年 pluto-y. All rights reserved.
//

#import "PYLegend.h"
#import "PYColor.h"

@implementation PYLegend

- (instancetype)init
{
    self = [super init];
    if (self) {
        _show = YES;
        _zlevel = 0;
        _z = @(4);
        _orient = PYOrientHorizontal;
        _x = PYPositionCenter;
        _y = PYPositionTop;
//        _backgroundColor = PYRGBA(0, 0, 0, 0);
        _borderColor = @"#ccc";
        _borderWidth = 0;
        _itemGap = @(10);
        _itemWidth = @(20);
        _itemHeight = @(14);
        _textStyle = [[PYTextStyle alloc] init];
        _selectedMode = @(YES);
        _textStyle.color = PYRGBA(3, 3, 3, 1);
        _data = @[];
    }
    return self;
}

PYInitializerImpTemplate(PYLegend);

PYPropertyEqualImpTemplate(PYLegend, BOOL, show);
PYPropertyEqualImpTemplate(PYLegend, NSNumber *, zlevel);
PYPropertyEqualImpTemplate(PYLegend, NSNumber *, z);
PYPropertyEqualImpTemplate(PYLegend, PYOrient, orient);
PYPropertyEqualImpTemplate(PYLegend, id, x);
PYPropertyEqualImpTemplate(PYLegend, id, y);
PYPropertyEqualImpTemplate(PYLegend, PYColor *, backgroundColor);
PYPropertyEqualImpTemplate(PYLegend, NSString *, borderColor);
PYPropertyEqualImpTemplate(PYLegend, NSNumber *, borderWidth);
PYPropertyEqualImpTemplate(PYLegend, id, padding);
PYPropertyEqualImpTemplate(PYLegend, NSNumber *, itemGap);
PYPropertyEqualImpTemplate(PYLegend, NSNumber *, itemWidth);
PYPropertyEqualImpTemplate(PYLegend, NSNumber *, itemHeight);
PYPropertyEqualImpTemplate(PYLegend, PYTextStyle *, textStyle);
PYPropertyEqualImpTemplate(PYLegend, id, formatter);
PYPropertyEqualImpTemplate(PYLegend, id, selectedMode);
PYPropertyEqualImpTemplate(PYLegend, NSDictionary *, selected);
PYPropertyEqualImpTemplate(PYLegend, NSArray *, data);

@end
