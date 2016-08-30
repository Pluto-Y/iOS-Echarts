//
//  PYDataRange.h
//  iOS-Echarts
//
//  Created by Pluto-Y on 15/11/23.
//  Copyright © 2015年 pluto-y. All rights reserved.
//

#import <Foundation/Foundation.h>

@class PYColor, PYTextStyle;

/**
 *
 *  You can goto this website for references:
 *  http://echarts.baidu.com/echarts2/doc/doc.html#DataRange
 *
 */
@interface PYDataRange : NSObject

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
@property (nonatomic, strong) NSNumber *itemWidth;
@property (nonatomic, strong) NSNumber *itemHeight;
@property (nonatomic, strong) NSNumber *min;
@property (nonatomic, strong) NSNumber *max;
@property (nonatomic, strong) NSNumber *precision;
@property (nonatomic, strong) NSNumber *splitNumber;
@property (nonatomic, strong) NSMutableArray *splitList;
@property (nonatomic, strong) NSObject *range;
@property (nonatomic, strong) id selectedMode;
@property (nonatomic, assign) BOOL calculable;
@property (nonatomic, assign) BOOL hoverLink;
@property (nonatomic, assign) BOOL realtime;
@property (nonatomic, strong) NSMutableArray *color;
@property (nonatomic, strong) id formatter;
@property (nonatomic, strong) NSMutableArray *text;
@property (nonatomic, strong) PYTextStyle *textStyle;

PYInitializerTemplate(PYDataRange, dataRange);

PYPropertyEqualTemplate(PYDataRange, BOOL, show);
PYPropertyEqualTemplate(PYDataRange, NSNumber *, zlevel);
PYPropertyEqualTemplate(PYDataRange, NSNumber *, z);
PYPropertyEqualTemplate(PYDataRange, PYOrient, orient);
PYPropertyEqualTemplate(PYDataRange, id, x);
PYPropertyEqualTemplate(PYDataRange, id, y);
PYPropertyEqualTemplate(PYDataRange, PYColor *, backgroundColor);
PYPropertyEqualTemplate(PYDataRange, PYColor *, borderColor);
PYPropertyEqualTemplate(PYDataRange, NSNumber *, borderWidth);
PYPropertyEqualTemplate(PYDataRange, id, padding);
PYPropertyEqualTemplate(PYDataRange, NSNumber *, itemGap);
PYPropertyEqualTemplate(PYDataRange, NSNumber *, itemWidth);
PYPropertyEqualTemplate(PYDataRange, NSNumber *, itemHeight);
PYPropertyEqualTemplate(PYDataRange, NSNumber *, min);
PYPropertyEqualTemplate(PYDataRange, NSNumber *, max);
PYPropertyEqualTemplate(PYDataRange, NSNumber *, precision);
PYPropertyEqualTemplate(PYDataRange, NSNumber *, splitNumber);
PYPropertyEqualTemplate(PYDataRange, NSMutableArray *, splitList);
PYPropertyEqualTemplate(PYDataRange, NSObject *, range);
PYPropertyEqualTemplate(PYDataRange, id, selectedMode);
PYPropertyEqualTemplate(PYDataRange, BOOL, calculable);
PYPropertyEqualTemplate(PYDataRange, BOOL, hoverLink);
PYPropertyEqualTemplate(PYDataRange, BOOL, realtime);
PYPropertyEqualTemplate(PYDataRange, NSMutableArray *, color);
PYPropertyEqualTemplate(PYDataRange, id, formatter);
PYPropertyEqualTemplate(PYDataRange, NSMutableArray *, text);
PYPropertyEqualTemplate(PYDataRange, PYTextStyle *, textStyle);

@end
