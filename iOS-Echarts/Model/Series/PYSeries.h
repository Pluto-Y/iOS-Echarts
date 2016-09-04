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

extern PYSeriesType const PYSeriesTypeLine;
extern PYSeriesType const PYSeriesTypeBar;
extern PYSeriesType const PYSeriesTypeScatter;
extern PYSeriesType const PYSeriesTypeK;
extern PYSeriesType const PYSeriesTypePie;
extern PYSeriesType const PYSeriesTypeRadar;
extern PYSeriesType const PYSeriesTypeChord;
extern PYSeriesType const PYSeriesTypeForce;
extern PYSeriesType const PYSeriesTypeMap;
extern PYSeriesType const PYSeriesTypeWordCloud;
extern PYSeriesType const PYSeriesTypeVenn;
extern PYSeriesType const PYSeriesTypeTreemap;
extern PYSeriesType const PYSeriesTypeGauge;
extern PYSeriesType const PYSeriesTypeEventRiver;
extern PYSeriesType const PYSeriesTypeFunnel;
extern PYSeriesType const PYSeriesTypeHeatmap;
extern PYSeriesType const PYSeriesTypeTree;

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
