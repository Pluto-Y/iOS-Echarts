//
//  PYLegend.h
//  iOS-Echarts
//
//  Created by Pluto Y on 15/9/8.
//  Copyright (c) 2015年 pluto-y. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PYTextStyle.h"

/**
 *
 *  You can goto this website for references:
 *  http://echarts.baidu.com/echarts2/doc/doc.html#Legend
 *
 */
@interface PYLegend : NSObject

@property (nonatomic, assign) BOOL show;
@property (nonatomic, strong) NSNumber *zlevel;
@property (nonatomic, strong) NSNumber *z;
@property (nonatomic, copy) PYOrient orient;
@property (nonatomic, strong) id x;
@property (nonatomic, strong) id y;
@property (nonatomic, strong) PYColor *backgroundColor;
@property (nonatomic, copy) NSString *borderColor;
@property (nonatomic, strong) NSNumber *borderWidth;
@property (nonatomic, strong) id padding;
@property (nonatomic, strong) NSNumber *itemGap;
@property (nonatomic, strong) NSNumber *itemWidth;
@property (nonatomic, strong) NSNumber *itemHeight;
@property (nonatomic, strong) PYTextStyle *textStyle;
@property (nonatomic, strong) id formatter;
@property (nonatomic, strong) id selectedMode;
@property (nonatomic, copy) NSDictionary *selected;
@property (nonatomic, copy) NSArray *data;

PYInitializerTemplate(PYLegend, legend);

PYPropertyEqualTemplate(PYLegend, BOOL, show);
PYPropertyEqualTemplate(PYLegend, NSNumber *, zlevel);
PYPropertyEqualTemplate(PYLegend, NSNumber *, z);
PYPropertyEqualTemplate(PYLegend, PYOrient, orient);
PYPropertyEqualTemplate(PYLegend, id, x);
PYPropertyEqualTemplate(PYLegend, id, y);
PYPropertyEqualTemplate(PYLegend, PYColor *, backgroundColor);
PYPropertyEqualTemplate(PYLegend, NSString *, borderColor);
PYPropertyEqualTemplate(PYLegend, NSNumber *, borderWidth);
PYPropertyEqualTemplate(PYLegend, id, padding);
PYPropertyEqualTemplate(PYLegend, NSNumber *, itemGap);
PYPropertyEqualTemplate(PYLegend, NSNumber *, itemWidth);
PYPropertyEqualTemplate(PYLegend, NSNumber *, itemHeight);
PYPropertyEqualTemplate(PYLegend, PYTextStyle *, textStyle);
PYPropertyEqualTemplate(PYLegend, id, formatter);
PYPropertyEqualTemplate(PYLegend, id, selectedMode);
PYPropertyEqualTemplate(PYLegend, NSDictionary *, selected);
PYPropertyEqualTemplate(PYLegend, NSArray *, data);

@end
