//
//  PYLineSeries.h
//  iOS-Echarts
//
//  Created by Pluto Y on 15/9/8.
//  Copyright (c) 2015年 pluto-y. All rights reserved.
//

#import "PYSeries.h"

@interface PYCartesianSeries : PYSeries

@property (retain, nonatomic) NSString *stack;
@property (retain, nonatomic) NSNumber *xAxisIndex;
@property (retain, nonatomic) NSNumber *yAxisIndex;
@property (retain, nonatomic) NSString *barGap;
@property (retain, nonatomic) NSString *barCategoryGap;
@property (retain, nonatomic) NSNumber *barMinHeight;
@property (retain, nonatomic) NSNumber *barWidth;
@property (retain, nonatomic) NSNumber *barMaxWidth;
@property (retain, nonatomic) NSString *symbol;
@property (retain, nonatomic) id symbolSize;
@property (retain, nonatomic) NSNumber *symbolRotate;
@property (assign, nonatomic) BOOL showAllSymbol;
@property (assign, nonatomic) BOOL smooth;
@property (retain, nonatomic) NSString *dataFilter;
@property (assign, nonatomic) BOOL large;
@property (retain, nonatomic) NSNumber *largeThreshold;
@property (assign, nonatomic) BOOL legendHoverLink;

@end
