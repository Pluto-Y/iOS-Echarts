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

extern PYTextStyleFontStyle const PYTextStyleFontStyleNormal;
extern PYTextStyleFontStyle const PYTextStyleFontStyleItalic;
extern PYTextStyleFontStyle const PYTextStyleFontStyleOblique;

extern PYTextStyleFontWeight const PYTextStyleFontWeightNormal;
extern PYTextStyleFontWeight const PYTextStyleFontWeightBold;
extern PYTextStyleFontWeight const PYTextStyleFontWeightBolder;
extern PYTextStyleFontWeight const PYTextStyleFontWeightLighter;

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

@end
