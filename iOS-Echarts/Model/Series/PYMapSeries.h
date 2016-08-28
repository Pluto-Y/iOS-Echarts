//
//  PYMapSeries.h
//  iOS-Echarts
//
//  Created by Pluto Y on 16/2/17.
//  Copyright © 2016年 pluto-y. All rights reserved.
//

#import "PYSeries.h"

typedef NSString *PYMapSeriesMapValueCalculation;

extern PYMapSeriesMapValueCalculation const PYMapSeriesMapValueCalculationSum;
extern PYMapSeriesMapValueCalculation const PYMapSeriesMapValueCalculationAverage;

/**
 *
 *  You can goto this website for references:
 *  http://echarts.baidu.com/echarts2/doc/doc.html#SeriesMap
 *
 */
@interface PYMapSeries : PYSeries

@property (nonatomic, strong) id selectedMode;
@property (nonatomic, copy) NSString *mapType;
@property (nonatomic, assign) BOOL hoverable;
@property (nonatomic, assign) BOOL dataRangeHoverLink;
@property (nonatomic, copy) NSDictionary *mapLocation;
@property (nonatomic, copy) PYMapSeriesMapValueCalculation mapValueCalculation;
@property (nonatomic, strong) NSNumber *mapValuePrecision;
@property (nonatomic, assign) BOOL showLegendSymbol;
@property (nonatomic, strong) id roam;
@property (nonatomic, copy) NSDictionary *scaleLimit;
@property (nonatomic, copy) NSDictionary *nameMap;
@property (nonatomic, copy) NSDictionary *textFixed;
@property (nonatomic, copy) NSDictionary *geoCoord;
@property (nonatomic, copy) NSDictionary *heatmap;

PYInitializerTemplate(PYMapSeries, series);

@end
