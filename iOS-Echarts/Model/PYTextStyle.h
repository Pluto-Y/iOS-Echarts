//
//  PYTextStyle.h
//  iOS-Echarts
//
//  Created by Pluto Y on 15/9/8.
//  Copyright (c) 2015年 pluto-y. All rights reserved.
//

#import <Foundation/Foundation.h>

@class PYColor;

typedef NSString *PYTextStyleFontStyle;
typedef NSString *PYTextStyleFontWeight;

FOUNDATION_EXPORT PYTextStyleFontStyle const PYTextStyleFontStyleNormal;
FOUNDATION_EXPORT PYTextStyleFontStyle const PYTextStyleFontStyleItalic;
FOUNDATION_EXPORT PYTextStyleFontStyle const PYTextStyleFontStyleOblique;

FOUNDATION_EXPORT PYTextStyleFontWeight const PYTextStyleFontWeightNormal;
FOUNDATION_EXPORT PYTextStyleFontWeight const PYTextStyleFontWeightBold;
FOUNDATION_EXPORT PYTextStyleFontWeight const PYTextStyleFontWeightBolder;
FOUNDATION_EXPORT PYTextStyleFontWeight const PYTextStyleFontWeightLighter;

/**
 *
 *  You can goto this website for references:
 *  http://echarts.baidu.com/echarts2/doc/doc.html#TextStyle
 *
 */
@interface PYTextStyle : NSObject

@property (nonatomic, strong) id color;
@property (nonatomic, copy) NSString *decoration;
@property (nonatomic, copy) NSString *align;
@property (nonatomic, copy) NSString *baseLine;
@property (nonatomic, copy) NSString *fontFamily;
@property (nonatomic, strong) NSNumber *fontSize;
@property (nonatomic, copy) PYTextStyleFontStyle fontStyle;
@property (nonatomic, copy) id fontWeight;
@property (nonatomic, strong) id shadowColor;
@property (nonatomic, strong) NSNumber *shadowBlur;

PYInitializerTemplate(PYTextStyle, textStyle);

PYPropertyEqualTemplate(PYTextStyle, id, color);
PYPropertyEqualTemplate(PYTextStyle, NSString *, decoration);
PYPropertyEqualTemplate(PYTextStyle, NSString *, align);
PYPropertyEqualTemplate(PYTextStyle, NSString *, baseLine);
PYPropertyEqualTemplate(PYTextStyle, NSString *, fontFamily);
PYPropertyEqualTemplate(PYTextStyle, NSNumber *, fontSize);
PYPropertyEqualTemplate(PYTextStyle, PYTextStyleFontStyle, fontStyle);
PYPropertyEqualTemplate(PYTextStyle, id, fontWeight);
PYPropertyEqualTemplate(PYTextStyle, id, shadowColor);
PYPropertyEqualTemplate(PYTextStyle, NSNumber *, shadowBlur);

@end
