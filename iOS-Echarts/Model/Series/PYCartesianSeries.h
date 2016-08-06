//
//  PYLineSeries.h
//  iOS-Echarts
//
//  Created by Pluto Y on 15/9/8.
//  Copyright (c) 2015年 pluto-y. All rights reserved.
//

#import "PYSeries.h"
#import "PYUtilities.h"

typedef NSString *PYCartesianSeriesDataFilter;

extern PYCartesianSeriesDataFilter const PYCartesianSeriesDataFilterNearest;
extern PYCartesianSeriesDataFilter const PYCartesianSeriesDataFilterMin;
extern PYCartesianSeriesDataFilter const PYCartesianSeriesDataFilterMax;
extern PYCartesianSeriesDataFilter const PYCartesianSeriesDataFilterAverage;

/**
 *
 *  You can goto this website for references:
 *  http://echarts.baidu.com/echarts2/doc/doc.html#SeriesCartesian
 *
 */
@interface PYCartesianSeries : PYSeries

@property (nonatomic, copy) NSString *stack;
@property (nonatomic, strong) NSNumber *xAxisIndex;
@property (nonatomic, strong) NSNumber *yAxisIndex;
@property (nonatomic, copy) NSString *barGap;
@property (nonatomic, copy) NSString *barCategoryGap;
@property (nonatomic, strong) NSNumber *barMinHeight;
@property (nonatomic, strong) NSNumber *barWidth;
@property (nonatomic, strong) NSNumber *barMaxWidth;
@property (nonatomic, copy) PYSymbol symbol;
@property (nonatomic, strong) id symbolSize;
@property (nonatomic, strong) NSNumber *symbolRotate;
@property (nonatomic, assign) BOOL showAllSymbol;
@property (nonatomic, assign) BOOL smooth;
@property (nonatomic, copy) PYCartesianSeriesDataFilter dataFilter;
@property (nonatomic, assign) BOOL large;
@property (nonatomic, strong) NSNumber *largeThreshold;
@property (nonatomic, assign) BOOL legendHoverLink;

@end
