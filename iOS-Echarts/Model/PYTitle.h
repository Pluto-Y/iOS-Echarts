//
//  PYTitle.h
//  iOS-Echarts
//
//  Created by Pluto-Y on 15/9/14.
//  Copyright (c) 2015年 pluto-y. All rights reserved.
//

#import <Foundation/Foundation.h>

@class PYColor, PYTextStyle;

/**
 *
 *  You can goto this website for references:
 *  http://echarts.baidu.com/echarts2/doc/doc.html#Title
 *
 */
@interface PYTitle : NSObject

@property (nonatomic, assign) BOOL show;
@property (nonatomic, strong) NSNumber *zlevel;
@property (nonatomic, strong) NSNumber *z;
@property (nonatomic, copy) NSString *text;
@property (nonatomic, copy) NSString *link;
@property (nonatomic, copy) NSString *target;
@property (nonatomic, copy) NSString *subtext;
@property (nonatomic, copy) NSString *sublink;
@property (nonatomic, copy) NSString *subtarget;
@property (nonatomic, strong) id x;
@property (nonatomic, strong) id y;
@property (nonatomic, copy) NSString *textAlign;
@property (nonatomic, strong) PYColor *backgroundColor;
@property (nonatomic, strong) PYColor *borderColor;
@property (nonatomic, strong) NSNumber *borderWidth;
@property (nonatomic, strong) id padding;
@property (nonatomic, strong) NSNumber *itemGap;
@property (nonatomic, strong) PYTextStyle *textStyle;
@property (nonatomic, strong) PYTextStyle *subtextStyle;

PYInitializerTemplate(PYTitle, title);

PYPropertyEqualTemplate(PYTitle, BOOL, show);
PYPropertyEqualTemplate(PYTitle, NSNumber *, zlevel);
PYPropertyEqualTemplate(PYTitle, NSNumber *, z);
PYPropertyEqualTemplate(PYTitle, NSString *, text);
PYPropertyEqualTemplate(PYTitle, NSString *, link);
PYPropertyEqualTemplate(PYTitle, NSString *, target);
PYPropertyEqualTemplate(PYTitle, NSString *, subtext);
PYPropertyEqualTemplate(PYTitle, NSString *, sublink);
PYPropertyEqualTemplate(PYTitle, NSString *, subtarget);
PYPropertyEqualTemplate(PYTitle, id, x);
PYPropertyEqualTemplate(PYTitle, id, y);
PYPropertyEqualTemplate(PYTitle, NSString *, textAlign);
PYPropertyEqualTemplate(PYTitle, PYColor *, backgroundColor);
PYPropertyEqualTemplate(PYTitle, PYColor *, borderColor);
PYPropertyEqualTemplate(PYTitle, NSNumber *, borderWidth);
PYPropertyEqualTemplate(PYTitle, id, padding);
PYPropertyEqualTemplate(PYTitle, NSNumber *, itemGap);
PYPropertyEqualTemplate(PYTitle, PYTextStyle *, textStyle);
PYPropertyEqualTemplate(PYTitle, PYTextStyle *, subtextStyle);

@end
