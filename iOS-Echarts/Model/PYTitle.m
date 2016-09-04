//
//  PYTitle.m
//  iOS-Echarts
//
//  Created by Pluto-Y on 15/9/14.
//  Copyright (c) 2015年 pluto-y. All rights reserved.
//

#import "PYTitle.h"
#import "PYColor.h"
#import "PYTextStyle.h"

@implementation PYTitle

- (instancetype)init
{
    self = [super init];
    if (self) {
        _show = YES;
        _zlevel = @(0);
        _z = @(0);
        _text = @"";
        _link = @"";
        _subtext = @"";
        _sublink = @"";
        _x = PYPositionLeft;
        _y = PYPositionTop;
        _backgroundColor = PYRGBA(0, 0, 0, 0);
        _borderColor = PYRGBA(12, 12, 12, 1);
        _borderWidth = @(0);
        _padding = @(5);
        _itemGap = @(5);
        _textStyle = [[PYTextStyle alloc] init];
        _textStyle.fontSize = @(18);
        _textStyle.fontWeight = PYTextStyleFontWeightBolder;
        _textStyle.color = PYRGBA(3, 3, 3, 1);
        _subtextStyle = [[PYTextStyle alloc] init];
        _subtextStyle.color = PYRGBA(10, 10, 10, 1);
    }
    return self;
}

PYInitializerImpTemplate(PYTitle);

PYPropertyEqualImpTemplate(PYTitle, BOOL, show);
PYPropertyEqualImpTemplate(PYTitle, NSNumber *, zlevel);
PYPropertyEqualImpTemplate(PYTitle, NSNumber *, z);
PYPropertyEqualImpTemplate(PYTitle, NSString *, text);
PYPropertyEqualImpTemplate(PYTitle, NSString *, link);
PYPropertyEqualImpTemplate(PYTitle, NSString *, target);
PYPropertyEqualImpTemplate(PYTitle, NSString *, subtext);
PYPropertyEqualImpTemplate(PYTitle, NSString *, sublink);
PYPropertyEqualImpTemplate(PYTitle, NSString *, subtarget);
PYPropertyEqualImpTemplate(PYTitle, id, x);
PYPropertyEqualImpTemplate(PYTitle, id, y);
PYPropertyEqualImpTemplate(PYTitle, NSString *, textAlign);
PYPropertyEqualImpTemplate(PYTitle, PYColor *, backgroundColor);
PYPropertyEqualImpTemplate(PYTitle, PYColor *, borderColor);
PYPropertyEqualImpTemplate(PYTitle, NSNumber *, borderWidth);
PYPropertyEqualImpTemplate(PYTitle, id, padding);
PYPropertyEqualImpTemplate(PYTitle, NSNumber *, itemGap);
PYPropertyEqualImpTemplate(PYTitle, PYTextStyle *, textStyle);
PYPropertyEqualImpTemplate(PYTitle, PYTextStyle *, subtextStyle);

@end
