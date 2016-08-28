//
//  PYPieSeries.h
//  iOS-Echarts
//
//  Created by Pluto-Y on 15/10/3.
//  Copyright © 2015年 pluto-y. All rights reserved.
//

#import "PYSeries.h"

typedef NSString *PYPieSeriesRoseType;

extern PYPieSeriesRoseType const PYPieSeriesRoseTypeRadius;
extern PYPieSeriesRoseType const PYPieSeriesRoseTypeArea;

/**
 *
 *  You can goto this website for references:
 *  http://echarts.baidu.com/echarts2/doc/doc.html#SeriesPie
 *
 */
@interface PYPieSeries : PYSeries

@property (nonatomic, copy) NSArray *center;
@property (nonatomic, strong) id radius;
@property (nonatomic, strong) NSNumber *startAngle;
@property (nonatomic, strong) NSNumber *minAngle;
@property (nonatomic, assign) BOOL clockWise;
@property (nonatomic, copy) PYPieSeriesRoseType roseType;
@property (nonatomic, strong) NSNumber *selectedOffset;
@property (nonatomic, strong) id selectedMode;
@property (nonatomic, assign) BOOL legendHoverLink;

PYInitializerTemplate(PYPieSeries, series);

@end
