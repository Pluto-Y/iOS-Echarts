//
//  PYSeries.h
//  iOS-Echarts
//
//  Created by Pluto Y on 15/9/8.
//  Copyright (c) 2015年 pluto-y. All rights reserved.
//

#import <Foundation/Foundation.h>

@class PYItemStyle, PYTooltip, PYMarkLine, PYMarkPoint;

typedef NSString *PYSeriesType;

FOUNDATION_EXPORT PYSeriesType const PYSeriesTypeLine;
FOUNDATION_EXPORT PYSeriesType const PYSeriesTypeBar;
FOUNDATION_EXPORT PYSeriesType const PYSeriesTypeScatter;
FOUNDATION_EXPORT PYSeriesType const PYSeriesTypeK;
FOUNDATION_EXPORT PYSeriesType const PYSeriesTypePie;
FOUNDATION_EXPORT PYSeriesType const PYSeriesTypeRadar;
FOUNDATION_EXPORT PYSeriesType const PYSeriesTypeChord;
FOUNDATION_EXPORT PYSeriesType const PYSeriesTypeForce;
FOUNDATION_EXPORT PYSeriesType const PYSeriesTypeMap;
FOUNDATION_EXPORT PYSeriesType const PYSeriesTypeWordCloud;
FOUNDATION_EXPORT PYSeriesType const PYSeriesTypeVenn;
FOUNDATION_EXPORT PYSeriesType const PYSeriesTypeTreemap;
FOUNDATION_EXPORT PYSeriesType const PYSeriesTypeGauge;
FOUNDATION_EXPORT PYSeriesType const PYSeriesTypeEventRiver;
FOUNDATION_EXPORT PYSeriesType const PYSeriesTypeFunnel;
FOUNDATION_EXPORT PYSeriesType const PYSeriesTypeHeatmap;
FOUNDATION_EXPORT PYSeriesType const PYSeriesTypeTree;

/**
 *
 *  You can goto this website for references:
 *  http://echarts.baidu.com/echarts2/doc/doc.html#Series
 *
 */
@interface PYSeries : NSObject

@property (nonatomic, strong) NSNumber *zlevel;
@property (nonatomic, strong) NSNumber *z;
@property (nonatomic, copy) PYSeriesType type;
@property (nonatomic, copy) NSString *name;
@property (nonatomic, strong) PYTooltip *tooltip;
@property (nonatomic, assign) BOOL clickable;
@property (nonatomic, strong) PYItemStyle *itemStyle;
@property (nonatomic, strong) id data;
@property (nonatomic, strong) PYMarkPoint *markPoint;
@property (nonatomic, strong) PYMarkLine *markLine;

PYInitializerTemplate(PYSeries, series);

PYPropertyEqualTemplate(PYSeries, NSNumber *, zlevel);
PYPropertyEqualTemplate(PYSeries, NSNumber *, z);
PYPropertyEqualTemplate(PYSeries, PYSeriesType, type);
PYPropertyEqualTemplate(PYSeries, NSString *, name);
PYPropertyEqualTemplate(PYSeries, PYTooltip *, tooltip);
PYPropertyEqualTemplate(PYSeries, BOOL, clickable);
PYPropertyEqualTemplate(PYSeries, PYItemStyle *, itemStyle);
PYPropertyEqualTemplate(PYSeries, id, data);
PYPropertyEqualTemplate(PYSeries, PYMarkPoint *, markPoint);
PYPropertyEqualTemplate(PYSeries, PYMarkLine *, markLine);

PYAddMethodTemplate(PYSeries, NSObject, Data, data);


@end
