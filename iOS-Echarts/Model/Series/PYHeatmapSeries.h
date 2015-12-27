//
//  PYHeatmapSeries.h
//  iOS-Echarts
//
//  Created by Pluto Y on 15/12/28.
//  Copyright © 2015年 pluto-y. All rights reserved.
//

#import "PYSeries.h"

/**
 *  关于地图Series的封装
 *  具体详情可参照:http://echarts.baidu.com/doc/doc.html#SeriesMap
 */
@interface PYHeatmapSeries : PYSeries

@property (retain, nonatomic) id selectedMode;
@property (retain, nonatomic) NSString *mapType;
@property (assign, nonatomic) BOOL hoverable;
@property (assign, nonatomic) BOOL dataRangeHoverLink;
@property (retain, nonatomic) NSDictionary *mapLocation;
@property (retain, nonatomic) NSString *mapValueCalculation;
@property (retain, nonatomic) NSNumber *mapValuePrecision;
@property (assign, nonatomic) BOOL showLegendSymbol;
@property (retain, nonatomic) id roam;
@property (retain, nonatomic) NSDictionary *scaleLimit;
@property (retain, nonatomic) NSDictionary *nameMap;
@property (retain, nonatomic) NSDictionary *textFixed;
@property (retain, nonatomic) NSDictionary *geoCoord;
@property (retain, nonatomic) NSDictionary *heatmap;

@end
