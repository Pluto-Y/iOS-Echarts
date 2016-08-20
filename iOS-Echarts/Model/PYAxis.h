//
//  PYAxis.h
//  iOS-Echarts
//
//  Created by Pluto Y on 15/9/7.
//  Copyright (c) 2015年 pluto-y. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PYAxisLine.h"
#import "PYAxisLabel.h"
#import "PYAxisSplitLine.h"
#import "PYAxisTick.h"
#import "PYTextStyle.h"
#import "PYSplitArea.h"

typedef NSString *PYAxisType;

extern PYAxisType const PYAxisTypeCategory;
extern PYAxisType const PYAxisTypeValue;
extern PYAxisType const PYAxisTypeTime;
extern PYAxisType const PYAxisTypeLog;

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
@property (nonatomic, copy) NSArray *data;

@end
