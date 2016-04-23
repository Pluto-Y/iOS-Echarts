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

@property (assign, nonatomic) BOOL show;
@property (strong, nonatomic) PYColor *backgroundColor;
@property (strong, nonatomic) NSNumber *borderWidth;
@property (strong, nonatomic) PYColor *borderColor;
@property (strong, nonatomic) NSNumber *width;
@property (strong, nonatomic) NSNumber *height;
@property (strong, nonatomic) NSArray *offsetCenter;
@property (strong, nonatomic) id formatter;
@property (strong, nonatomic) PYTextStyle *textStyle;

@end

@interface PYGaugePointer : NSObject

@property (strong, nonatomic) NSString *length;
@property (strong, nonatomic) NSNumber *width;
@property (strong, nonatomic) id color;

@end

@interface PYGaugeTitle : NSObject

@property (assign, nonatomic) BOOL show;
@property (strong, nonatomic) NSArray *offsetCenter;
@property (strong, nonatomic) PYTextStyle *textStyle;

@end

@interface PYGaugeSeries : PYSeries

@property (strong, nonatomic) NSArray *center;
@property (strong, nonatomic) id radius;
@property (strong, nonatomic) NSNumber *startAngle;
@property (strong, nonatomic) NSNumber *endAngle;
@property (strong, nonatomic) NSNumber *min;
@property (strong, nonatomic) NSNumber *max;
@property (strong, nonatomic) NSNumber *splitNumber;
@property (strong, nonatomic) PYAxisLine *axisLine;
@property (strong, nonatomic) PYAxisTick *axisTick;
@property (strong, nonatomic) PYAxisLabel *axisLabel;
@property (strong, nonatomic) NSDictionary *splitLine;
@property (strong, nonatomic) NSDictionary *pointer;
@property (strong, nonatomic) PYGaugeTitle *title;
@property (strong, nonatomic) PYGaugeDetail *detail;
@property (assign, nonatomic) BOOL legendHoverLink;

@end
