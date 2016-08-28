//
//  PYGaugeSeries.h
//  iOS-Echarts
//
//  Created by Pluto Y on 4/24/16.
//  Copyright © 2016 Pluto-y. All rights reserved.
//

#import "PYSeries.h"
#import "PYTextStyle.h"
#import "PYAxisLine.h"
#import "PYAxisLabel.h"
#import "PYAxisTick.h"
#import "PYLineStyle.h"

@class PYColor;

@interface PYGaugeSpliteLine : NSObject

@property (nonatomic, assign) BOOL show;
@property (nonatomic, strong) NSNumber *length;
@property (nonatomic, strong) PYLineStyle *lineStyle;

PYInitializerTemplate(PYGaugeSpliteLine, spliteLine);

PYPropertyEqualTemplate(PYGaugeSpliteLine, PYLineStyle *, lineStyle);

@end

@interface PYGaugeDetail : NSObject

@property (nonatomic, assign) BOOL show;
@property (nonatomic, strong) PYColor *backgroundColor;
@property (nonatomic, strong) NSNumber *borderWidth;
@property (nonatomic, strong) PYColor *borderColor;
@property (nonatomic, strong) NSNumber *width;
@property (nonatomic, strong) NSNumber *height;
@property (nonatomic, copy) NSArray *offsetCenter;
@property (nonatomic, strong) id formatter;
@property (nonatomic, strong) PYTextStyle *textStyle;
@property (nonatomic, strong) id shadowColor;
@property (nonatomic, strong) NSNumber *shadowBlur;

PYInitializerTemplate(PYGaugeDetail, detail);

PYPropertyEqualTemplate(PYGaugeDetail, PYTextStyle *, textStyle);

@end

@interface PYGaugePointer : NSObject

@property (nonatomic, copy) NSString *length;
@property (nonatomic, strong) NSNumber *width;
@property (nonatomic, strong) id color;
@property (nonatomic, strong) id shadowColor;
@property (nonatomic, strong) NSNumber *shadowBlur;

PYInitializerTemplate(PYGaugePointer, pointer);

@end

@interface PYGaugeTitle : NSObject

@property (nonatomic, strong) id color;
@property (nonatomic, strong) id shadowColor;
@property (nonatomic, strong) NSNumber *shadowBlur;
@property (nonatomic, assign) BOOL show;
@property (nonatomic, copy) NSArray *offsetCenter;
@property (nonatomic, strong) PYTextStyle *textStyle;

PYInitializerTemplate(PYGaugeTitle, title);

PYPropertyEqualTemplate(PYGaugeTitle, PYTextStyle *, textStyle);

@end

/**
 *
 *  You can goto this website for references:
 *  http://echarts.baidu.com/echarts2/doc/doc.html#SeriesGauge
 *
 */
@interface PYGaugeSeries : PYSeries

@property (nonatomic, copy) NSArray *center;
@property (nonatomic, strong) id radius;
@property (nonatomic, strong) NSNumber *startAngle;
@property (nonatomic, strong) NSNumber *endAngle;
@property (nonatomic, strong) NSNumber *min;
@property (nonatomic, strong) NSNumber *max;
@property (nonatomic, strong) NSNumber *splitNumber;
@property (nonatomic, strong) PYAxisLine *axisLine;
@property (nonatomic, strong) PYAxisTick *axisTick;
@property (nonatomic, strong) PYAxisLabel *axisLabel;
@property (nonatomic, copy) PYGaugeSpliteLine *splitLine;
@property (nonatomic, copy) PYGaugePointer *pointer;
@property (nonatomic, strong) PYGaugeTitle *title;
@property (nonatomic, strong) PYGaugeDetail *detail;
@property (nonatomic, assign) BOOL legendHoverLink;

PYInitializerTemplate(PYGaugeSeries, series);

PYPropertyEqualTemplate(PYGaugeSeries, PYAxisLine *, axisLine);
PYPropertyEqualTemplate(PYGaugeSeries, PYAxisTick *, axisTick);
PYPropertyEqualTemplate(PYGaugeSeries, PYAxisLabel *, axisLabel);
PYPropertyEqualTemplate(PYGaugeSeries, PYGaugeSpliteLine *, splitLine);
PYPropertyEqualTemplate(PYGaugeSeries, PYGaugePointer *, pointer);
PYPropertyEqualTemplate(PYGaugeSeries, PYGaugeTitle *, title);
PYPropertyEqualTemplate(PYGaugeSeries, PYGaugeDetail *, detail);

@end
