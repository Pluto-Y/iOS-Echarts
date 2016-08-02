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
#import "PYSplitLine.h"
#import "PYAxisTick.h"
#import "PYTextStyle.h"
#import "PYSplitArea.h"

@interface PYAxis : NSObject

@property (nonatomic, copy) NSString * type;
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
@property (nonatomic, strong) PYSplitLine *splitLine;
@property (nonatomic, strong) PYSplitArea *splitArea;
@property (nonatomic, copy) NSArray *data;

@end
