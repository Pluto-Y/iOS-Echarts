//
//  PYFunnelSeries.h
//  iOS-Echarts
//
//  Created by Pluto Y on 4/24/16.
//  Copyright © 2016 Pluto-y. All rights reserved.
//

#import "PYSeries.h"

typedef NSString *PYFunnelSeriesSort __deprecated_msg("Use PYSort instead");

FOUNDATION_EXPORT PYFunnelSeriesSort const PYFunnelSeriesSortAscending __deprecated_msg("Use PYSortAscending instead");
FOUNDATION_EXPORT PYFunnelSeriesSort const PYFunnelSeriesSortDescending __deprecated_msg("Use PYSortDescending instead");

/**
 *
 *  You can goto this website for references:
 *  http://echarts.baidu.com/echarts2/doc/doc.html#SeriesFunnel
 *
 */
@interface PYFunnelSeries : PYSeries

@property (nonatomic, strong) id x;
@property (nonatomic, strong) id y;
@property (nonatomic, strong) id x2;
@property (nonatomic, strong) id y2;
@property (nonatomic, strong) id width;
@property (nonatomic, strong) id height;
@property (nonatomic, copy) NSString *funnelAlign;
@property (nonatomic, strong) NSNumber *min;
@property (nonatomic, strong) NSNumber *max;
@property (nonatomic, copy) NSString *minSize;
@property (nonatomic, copy) NSString *maxSize;
@property (nonatomic, copy) PYSort sort;
@property (nonatomic, strong) NSNumber *gap;
@property (nonatomic, assign) BOOL legendHoverLink;

PYInitializerTemplate(PYFunnelSeries, series);

PYPropertyEqualTemplate(PYFunnelSeries, id, x);
PYPropertyEqualTemplate(PYFunnelSeries, id, y);
PYPropertyEqualTemplate(PYFunnelSeries, id, x2);
PYPropertyEqualTemplate(PYFunnelSeries, id, y2);
PYPropertyEqualTemplate(PYFunnelSeries, id, width);
PYPropertyEqualTemplate(PYFunnelSeries, id, height);
PYPropertyEqualTemplate(PYFunnelSeries, NSString *, funnelAlign);
PYPropertyEqualTemplate(PYFunnelSeries, NSNumber *, min);
PYPropertyEqualTemplate(PYFunnelSeries, NSNumber *, max);
PYPropertyEqualTemplate(PYFunnelSeries, NSString *, minSize);
PYPropertyEqualTemplate(PYFunnelSeries, NSString *, maxSize);
PYPropertyEqualTemplate(PYFunnelSeries, PYSort, sort);
PYPropertyEqualTemplate(PYFunnelSeries, NSNumber *, gap);
PYPropertyEqualTemplate(PYFunnelSeries, BOOL, legendHoverLink);

@end
