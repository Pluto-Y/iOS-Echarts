//
//  PYItemStyleProp.m
//  iOS-Echarts
//
//  Created by Pluto Y on 15/9/8.
//  Copyright (c) 2015年 pluto-y. All rights reserved.
//

#import "PYItemStyleProp.h"
#import "PYColor.h"
#import "PYLineStyle.h"
#import "PYAreaStyle.h"
#import "PYNodeStyle.h"
#import "PYLinkStyle.h"
#import "PYLinks.h"
#import "PYTextStyle.h"
#import "PYChordStyle.h"

@implementation PYLabelLine

- (instancetype)init
{
    self = [super init];
    if (self) {
        _show = YES;
        _length = @(40);
        _lineStyle = [[PYLineStyle alloc] init];
    }
    return self;
}

PYInitializerImpTemplate(PYLabelLine);

PYPropertyEqualImpTemplate(PYLabelLine, BOOL, show);
PYPropertyEqualImpTemplate(PYLabelLine, NSNumber *, length);
PYPropertyEqualImpTemplate(PYLabelLine, PYLineStyle *, lineStyle);

@end

@implementation PYLabel

- (instancetype)init
{
    self = [super init];
    if (self) {
        _show = YES;
        _rotate = NO;
        _distance = @(10);
    }
    return self;
}

PYInitializerImpTemplate(PYLabel);

PYPropertyEqualImpTemplate(PYLabel, BOOL, show);
PYPropertyEqualImpTemplate(PYLabel, NSString *, position);
PYPropertyEqualImpTemplate(PYLabel, BOOL, rotate);
PYPropertyEqualImpTemplate(PYLabel, NSNumber *, distance);
PYPropertyEqualImpTemplate(PYLabel, id, formatter);
PYPropertyEqualImpTemplate(PYLabel, PYTextStyle *, textStyle);
PYPropertyEqualImpTemplate(PYLabel, NSNumber *, x);
PYPropertyEqualImpTemplate(PYLabel, NSNumber *, y);

@end

@implementation PYItemStyleProp

- (instancetype)init
{
    self = [super init];
    if (self) {
        _barBorderColor = PYRGBA(0xf, 0xf, 0xf, 1);
        _label = [[PYLabel alloc] init];
        _label.show = YES;
        _label.position = @"outer";
        _labelLine = [[PYLabelLine alloc] init];
        _labelLine.show = YES;
    }
    return self;
}

PYInitializerImpTemplate(PYItemStyleProp);

PYPropertyEqualImpTemplate(PYItemStyleProp, id, color);
PYPropertyEqualImpTemplate(PYItemStyleProp, id, color0);
PYPropertyEqualImpTemplate(PYItemStyleProp, PYLineStyle *, lineStyle);
PYPropertyEqualImpTemplate(PYItemStyleProp, PYAreaStyle *, areaStyle);
PYPropertyEqualImpTemplate(PYItemStyleProp, PYChordStyle *, chordStyle);
PYPropertyEqualImpTemplate(PYItemStyleProp, PYNodeStyle *, nodeStyle);
PYPropertyEqualImpTemplate(PYItemStyleProp, PYLinkStyle *, linkStyle);
PYPropertyEqualImpTemplate(PYItemStyleProp, id, borderColor);
PYPropertyEqualImpTemplate(PYItemStyleProp, NSNumber *, borderWidth);
PYPropertyEqualImpTemplate(PYItemStyleProp, id, barBorderColor);
PYPropertyEqualImpTemplate(PYItemStyleProp, id, barBorderRadius);
PYPropertyEqualImpTemplate(PYItemStyleProp, NSNumber *, barBorderWidth);
PYPropertyEqualImpTemplate(PYItemStyleProp, PYLabel *, label);
PYPropertyEqualImpTemplate(PYItemStyleProp, PYLabelLine *, labelLine);

@end
