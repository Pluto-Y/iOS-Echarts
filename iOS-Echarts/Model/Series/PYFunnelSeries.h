//
//  PYFunnelSeries.h
//  iOS-Echarts
//
//  Created by Pluto Y on 4/24/16.
//  Copyright © 2016 Pluto-y. All rights reserved.
//

#import "PYSeries.h"

typedef NSString *PYFunnelSeriesSort;

extern PYFunnelSeriesSort const PYFunnelSeriesSortAscending;
extern PYFunnelSeriesSort const PYFunnelSeriesSortDescending;

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
@property (nonatomic, copy) PYFunnelSeriesSort sort;
@property (nonatomic, strong) NSNumber *gap;
@property (nonatomic, assign) BOOL legendHoverLink;

@end
