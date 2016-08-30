//
//  PYToolbox.h
//  iOS-Echarts
//
//  Created by Pluto-Y on 15/9/16.
//  Copyright (c) 2015年 pluto-y. All rights reserved.
//

#import <Foundation/Foundation.h>

@class PYColor, PYToolboxFeature, PYTextStyle;

/**
 *
 *  You can goto this website for references:
 *  http://echarts.baidu.com/echarts2/doc/doc.html#Toolbox
 *
 */
@interface PYToolbox : NSObject

@property (nonatomic, assign) BOOL show;
@property (nonatomic, strong) NSNumber *zlevel;
@property (nonatomic, strong) NSNumber *z;
@property (nonatomic, copy) PYOrient orient;
@property (nonatomic, strong) id x;
@property (nonatomic, strong) id y;
@property (nonatomic, strong) PYColor *backgroundColor;
@property (nonatomic, strong) PYColor *borderColor;
@property (nonatomic, strong) NSNumber *borderWidth;
@property (nonatomic, strong) id padding;
@property (nonatomic, strong) NSNumber *itemGap;
@property (nonatomic, strong) NSNumber *itemSize;
@property (nonatomic, copy) NSArray *color;
@property (nonatomic, strong) PYColor *disableColor;
@property (nonatomic, strong) PYColor *effectiveColor;
@property (nonatomic, assign) BOOL showTitle;
@property (nonatomic, strong) PYTextStyle *textStyle;
@property (nonatomic, strong) PYToolboxFeature *feature;

PYInitializerTemplate(PYToolbox, toolbox);

PYPropertyEqualTemplate(PYToolbox, BOOL, show);
PYPropertyEqualTemplate(PYToolbox, NSNumber *, zlevel);
PYPropertyEqualTemplate(PYToolbox, NSNumber *, z);
PYPropertyEqualTemplate(PYToolbox, PYOrient, orient);
PYPropertyEqualTemplate(PYToolbox, id, x);
PYPropertyEqualTemplate(PYToolbox, id, y);
PYPropertyEqualTemplate(PYToolbox, PYColor *, backgroundColor);
PYPropertyEqualTemplate(PYToolbox, PYColor *, borderColor);
PYPropertyEqualTemplate(PYToolbox, NSNumber *, borderWidth);
PYPropertyEqualTemplate(PYToolbox, id, padding);
PYPropertyEqualTemplate(PYToolbox, NSNumber *, itemGap);
PYPropertyEqualTemplate(PYToolbox, NSNumber *, itemSize);
PYPropertyEqualTemplate(PYToolbox, NSArray *, color);
PYPropertyEqualTemplate(PYToolbox, PYColor *, disableColor);
PYPropertyEqualTemplate(PYToolbox, PYColor *, effectiveColor);
PYPropertyEqualTemplate(PYToolbox, BOOL, showTitle);
PYPropertyEqualTemplate(PYToolbox, PYTextStyle *, textStyle);
PYPropertyEqualTemplate(PYToolbox, PYToolboxFeature *, feature);

@end
