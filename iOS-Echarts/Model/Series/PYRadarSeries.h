//
//  PYRadarSeries.h
//  iOS-Echarts
//
//  Created by Pluto Y on 15/12/21.
//  Copyright © 2015年 pluto-y. All rights reserved.
//

#import "PYSeries.h"

/**
 *
 *  You can goto this website for references:
 *  http://echarts.baidu.com/echarts2/doc/doc.html#SeriesRadar
 *
 */
@interface PYRadarSeries : PYSeries

@property (nonatomic, strong) NSNumber *polarIndex;
@property (nonatomic, copy) PYSymbol symbol;
@property (nonatomic, strong) id symbolSize;
@property (nonatomic, strong) NSNumber *symbolRotate;
@property (nonatomic, assign) BOOL legendHoverLink;

PYInitializerTemplate(PYRadarSeries, series);

PYPropertyEqualTemplate(PYRadarSeries, NSNumber *, polarIndex);
PYPropertyEqualTemplate(PYRadarSeries, PYSymbol, symbol);
PYPropertyEqualTemplate(PYRadarSeries, id, symbolSize);
PYPropertyEqualTemplate(PYRadarSeries, NSNumber *, symbolRotate);
PYPropertyEqualTemplate(PYRadarSeries, BOOL, legendHoverLink);

@end
