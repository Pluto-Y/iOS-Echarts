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

@property (nonatomic, strong) id selectedMode;
@property (nonatomic, copy) NSString *mapType;
@property (nonatomic, assign) BOOL hoverable;
@property (nonatomic, assign) BOOL dataRangeHoverLink;
@property (nonatomic, copy) NSDictionary *mapLocation;
@property (nonatomic, copy) NSString *mapValueCalculation;
@property (nonatomic, strong) NSNumber *mapValuePrecision;
@property (nonatomic, assign) BOOL showLegendSymbol;
@property (nonatomic, strong) id roam;
@property (nonatomic, copy) NSDictionary *scaleLimit;
@property (nonatomic, copy) NSDictionary *nameMap;
@property (nonatomic, copy) NSDictionary *textFixed;
@property (nonatomic, copy) NSDictionary *geoCoord;
@property (nonatomic, copy) NSDictionary *heatmap;

@end
