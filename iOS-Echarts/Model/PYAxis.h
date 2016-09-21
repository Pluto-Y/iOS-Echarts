//
//  PYAxis.h
//  iOS-Echarts
//
//  Created by Pluto Y on 15/9/7.
//  Copyright (c) 2015年 pluto-y. All rights reserved.
//

#import <Foundation/Foundation.h>

@class PYAxisLine, PYAxisLabel, PYAxisSplitLine, PYAxisTick, PYTextStyle, PYSplitArea;

typedef NSString *PYAxisType;

FOUNDATION_EXPORT PYAxisType const PYAxisTypeCategory;
FOUNDATION_EXPORT PYAxisType const PYAxisTypeValue;
FOUNDATION_EXPORT PYAxisType const PYAxisTypeTime;
FOUNDATION_EXPORT PYAxisType const PYAxisTypeLog;

/**
 *
 *  You can goto this website for references:
 *  http://echarts.baidu.com/echarts2/doc/doc.html#Axis
 *
 */
@interface PYAxis : NSObject

@property (nonatomic, copy) PYAxisType type;
@property (nonatomic, assign) BOOL show;
@property (nonatomic, strong) NSNumber *zlevel;
@property (nonatomic, strong) NSNumber *z;
@property (nonatomic, copy) NSString *position;
@property (nonatomic, copy) NSString *name;
@property (nonatomic, copy) NSString *nameLocation;
@property (nonatomic, strong) PYTextStyle *nameTextStyle;
@property (nonatomic, strong) id boundaryGap;
@property (nonatomic, strong) NSNumber *min;
@property (nonatomic, strong) NSNumber *max;
@property (nonatomic, assign) BOOL scale;
@property (nonatomic, strong) NSNumber *splitNumber;
@property (nonatomic, strong) NSNumber *logLabelBase;
@property (nonatomic, copy) NSDictionary *logPositive;
@property (nonatomic, strong) PYAxisLine *axisLine;
@property (nonatomic, strong) PYAxisTick *axisTick;
@property (nonatomic, strong) PYAxisLabel *axisLabel;
@property (nonatomic, strong) PYAxisSplitLine *splitLine;
@property (nonatomic, strong) PYSplitArea *splitArea;
@property (nonatomic, strong) NSMutableArray *data;

PYInitializerTemplate(PYAxis, axis);

PYPropertyEqualTemplate(PYAxis, PYAxisType, type);
PYPropertyEqualTemplate(PYAxis, BOOL, show);
PYPropertyEqualTemplate(PYAxis, NSNumber *, zlevel);
PYPropertyEqualTemplate(PYAxis, NSNumber *, z);
PYPropertyEqualTemplate(PYAxis, NSString *, position);
PYPropertyEqualTemplate(PYAxis, NSString *, name);
PYPropertyEqualTemplate(PYAxis, NSString *, nameLocation);
PYPropertyEqualTemplate(PYAxis, PYTextStyle *, nameTextStyle);
PYPropertyEqualTemplate(PYAxis, id, boundaryGap);
PYPropertyEqualTemplate(PYAxis, NSNumber *, min);
PYPropertyEqualTemplate(PYAxis, NSNumber *, max);
PYPropertyEqualTemplate(PYAxis, BOOL, scale);
PYPropertyEqualTemplate(PYAxis, NSNumber *, splitNumber);
PYPropertyEqualTemplate(PYAxis, NSNumber *, logLabelBase);
PYPropertyEqualTemplate(PYAxis, NSDictionary *, logPositive);
PYPropertyEqualTemplate(PYAxis, PYAxisLine *, axisLine);
PYPropertyEqualTemplate(PYAxis, PYAxisTick *, axisTick);
PYPropertyEqualTemplate(PYAxis, PYAxisLabel *, axisLabel);
PYPropertyEqualTemplate(PYAxis, PYAxisSplitLine *, splitLine);
PYPropertyEqualTemplate(PYAxis, PYSplitArea *, splitArea);
PYPropertyEqualTemplate(PYAxis, NSMutableArray *, data);

PYAddMethodTemplate(PYAxis, NSObject, Data, data);


@end
