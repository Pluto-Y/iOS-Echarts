//
//  PYTextStyle.m
//  iOS-Echarts
//
//  Created by Pluto Y on 15/9/8.
//  Copyright (c) 2015年 pluto-y. All rights reserved.
//

#import "PYTextStyle.h"

PYTextStyleFontStyle const PYTextStyleFontStyleNormal    = @"normal";
PYTextStyleFontStyle const PYTextStyleFontStyleItalic    = @"italic";
PYTextStyleFontStyle const PYTextStyleFontStyleOblique   = @"oblique";

PYTextStyleFontWeight const PYTextStyleFontWeightNormal  = @"normal";
PYTextStyleFontWeight const PYTextStyleFontWeightBold    = @"bold";
PYTextStyleFontWeight const PYTextStyleFontWeightBolder  = @"bolder";
PYTextStyleFontWeight const PYTextStyleFontWeightLighter = @"lighter";

static NSArray<PYTextStyleFontStyle> *textStyleFontStyle;
@implementation PYTextStyle

+ (void)initialize
{
    if (self == [PYTextStyle class]) {
        textStyleFontStyle = @[PYTextStyleFontStyleNormal, PYTextStyleFontStyleItalic, PYTextStyleFontStyleOblique];
    }
}

- (instancetype)init
{
    self = [super init];
    if (self) {
        _decoration = @"none";
        _fontFamily = @"Arial, Verdana, sans-serif";
        _fontSize = @(12);
        _fontStyle = PYTextStyleFontStyleNormal;
        _fontWeight = PYTextStyleFontWeightNormal;
    }
    return self;
}

- (void)setFontStyle:(PYTextStyleFontStyle)fontStyle {
    if (![textStyleFontStyle containsObject:fontStyle]) {
        NSLog(@"ERROR: TextStyle does not support the font style --- %@", fontStyle);
        _fontStyle = PYTextStyleFontStyleNormal;
        return;
    }
    _fontStyle = [fontStyle copy];
}

PYInitializerImpTemplate(PYTextStyle);

PYPropertyEqualImpTemplate(PYTextStyle, id, color);
PYPropertyEqualImpTemplate(PYTextStyle, NSString *, decoration);
PYPropertyEqualImpTemplate(PYTextStyle, NSString *, align);
PYPropertyEqualImpTemplate(PYTextStyle, NSString *, baseLine);
PYPropertyEqualImpTemplate(PYTextStyle, NSString *, fontFamily);
PYPropertyEqualImpTemplate(PYTextStyle, NSNumber *, fontSize);
PYPropertyEqualImpTemplate(PYTextStyle, PYTextStyleFontStyle, fontStyle);
PYPropertyEqualImpTemplate(PYTextStyle, id, fontWeight);
PYPropertyEqualImpTemplate(PYTextStyle, id, shadowColor);
PYPropertyEqualImpTemplate(PYTextStyle, NSNumber *, shadowBlur);

@end
