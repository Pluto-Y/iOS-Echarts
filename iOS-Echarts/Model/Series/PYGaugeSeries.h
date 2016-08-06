//
//  PYGaugeSeries.h
//  iOS-Echarts
//
//  Created by Pluto Y on 4/24/16.
//  Copyright © 2016 Pluto-y. All rights reserved.
//

#import "PYSeries.h"

@class PYAxisLine, PYAxisLabel, PYAxisTick, PYTextStyle, PYColor;

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

@end

@interface PYGaugePointer : NSObject

@property (nonatomic, copy) NSString *length;
@property (nonatomic, strong) NSNumber *width;
@property (nonatomic, strong) id color;

@end

@interface PYGaugeTitle : NSObject

@property (nonatomic, assign) BOOL show;
@property (nonatomic, copy) NSArray *offsetCenter;
@property (nonatomic, strong) PYTextStyle *textStyle;

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
@property (nonatomic, copy) NSDictionary *splitLine;
@property (nonatomic, copy) NSDictionary *pointer;
@property (nonatomic, strong) PYGaugeTitle *title;
@property (nonatomic, strong) PYGaugeDetail *detail;
@property (nonatomic, assign) BOOL legendHoverLink;

@end
