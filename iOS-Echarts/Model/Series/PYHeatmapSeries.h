//
//  PYHeatmapSeries.h
//  iOS-Echarts
//
//  Created by Pluto Y on 15/12/28.
//  Copyright © 2015年 pluto-y. All rights reserved.
//

#import "PYSeries.h"

/**
 *
 *  You can goto this website for references:
 *  http://echarts.baidu.com/doc/doc.html#SeriesMap
 *
 */
@interface PYHeatmapSeries : PYSeries

@property (nonatomic, strong) NSNumber *blurSize;
@property (nonatomic, copy) NSArray *gradientColors;
@property (nonatomic, strong) NSNumber *minAlpha;
@property (nonatomic, strong) NSNumber *valueScale;
@property (nonatomic, strong) NSNumber *opacity;

@end
