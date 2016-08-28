//
//  PYEventRiverSeries.h
//  iOS-Echarts
//
//  Created by Pluto Y on 4/24/16.
//  Copyright © 2016 Pluto-y. All rights reserved.
//

#import "PYSeries.h"

/**
 *
 *  You can goto this website for references:
 *  http://echarts.baidu.com/echarts2/doc/doc.html#SeriesEventRiver
 *
 */
@interface PYEventRiverSeries : PYSeries

@property (nonatomic, strong) NSNumber *xAxisIndex;
@property (nonatomic, strong) NSNumber *weight;
@property (nonatomic, assign) BOOL legendHoverLink;

PYInitializerTemplate(PYEventRiverSeries, series);

PYPropertyEqualTemplate(PYEventRiverSeries, NSNumber *, xAxisIndex);
PYPropertyEqualTemplate(PYEventRiverSeries, NSNumber *, weight);
PYPropertyEqualTemplate(PYEventRiverSeries, BOOL, legendHoverLink);

@end
