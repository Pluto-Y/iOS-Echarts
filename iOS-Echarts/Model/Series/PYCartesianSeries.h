//
//  PYLineSeries.h
//  iOS-Echarts
//
//  Created by Pluto Y on 15/9/8.
//  Copyright (c) 2015年 pluto-y. All rights reserved.
//

#import "PYSeries.h"

typedef NSString *PYCartesianSeriesDataFilter;

FOUNDATION_EXPORT PYCartesianSeriesDataFilter const PYCartesianSeriesDataFilterNearest;
FOUNDATION_EXPORT PYCartesianSeriesDataFilter const PYCartesianSeriesDataFilterMin;
FOUNDATION_EXPORT PYCartesianSeriesDataFilter const PYCartesianSeriesDataFilterMax;
FOUNDATION_EXPORT PYCartesianSeriesDataFilter const PYCartesianSeriesDataFilterAverage;

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

PYInitializerTemplate(PYCartesianSeries, series);

PYPropertyEqualTemplate(PYCartesianSeries, NSString *, stack);
PYPropertyEqualTemplate(PYCartesianSeries, NSNumber *, xAxisIndex);
PYPropertyEqualTemplate(PYCartesianSeries, NSNumber *, yAxisIndex);
PYPropertyEqualTemplate(PYCartesianSeries, NSString *, barGap);
PYPropertyEqualTemplate(PYCartesianSeries, NSString *, barCategoryGap);
PYPropertyEqualTemplate(PYCartesianSeries, NSNumber *, barMinHeight);
PYPropertyEqualTemplate(PYCartesianSeries, NSNumber *, barWidth);
PYPropertyEqualTemplate(PYCartesianSeries, NSNumber *, barMaxWidth);
PYPropertyEqualTemplate(PYCartesianSeries, PYSymbol, symbol);
PYPropertyEqualTemplate(PYCartesianSeries, id, symbolSize);
PYPropertyEqualTemplate(PYCartesianSeries, NSNumber *, symbolRotate);
PYPropertyEqualTemplate(PYCartesianSeries, BOOL, showAllSymbol);
PYPropertyEqualTemplate(PYCartesianSeries, BOOL, smooth);
PYPropertyEqualTemplate(PYCartesianSeries, PYCartesianSeriesDataFilter, dataFilter);
PYPropertyEqualTemplate(PYCartesianSeries, BOOL, large);
PYPropertyEqualTemplate(PYCartesianSeries, NSNumber *, largeThreshold);
PYPropertyEqualTemplate(PYCartesianSeries, BOOL, legendHoverLink);

@end
