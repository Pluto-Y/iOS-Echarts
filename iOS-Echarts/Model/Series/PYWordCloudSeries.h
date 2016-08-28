//
//  PYWordCloundSeries.h
//  iOS-Echarts
//
//  Created by Pluto Y on 4/21/16.
//  Copyright © 2016 Pluto-y. All rights reserved.
//

#import "PYSeries.h"

/**
 *
 *  You can goto this website for references:
 *  http://echarts.baidu.com/echarts2/doc/doc.html#SeriesWordCloud
 *
 */
@interface PYWordCloudSeries : PYSeries

@property (nonatomic, copy) NSArray *center;
@property (nonatomic, copy) NSArray *size;
@property (nonatomic, copy) NSArray *textRotation;
@property (nonatomic, copy) NSDictionary *autoSize;
@property (nonatomic, strong) NSNumber *textPadding;

PYInitializerTemplate(PYWordCloudSeries, series);

PYPropertyEqualTemplate(PYWordCloudSeries, NSArray *, center);
PYPropertyEqualTemplate(PYWordCloudSeries, NSArray *, size);
PYPropertyEqualTemplate(PYWordCloudSeries, NSArray *, textRotation);
PYPropertyEqualTemplate(PYWordCloudSeries, NSDictionary *, autoSize);
PYPropertyEqualTemplate(PYWordCloudSeries, NSNumber *, textPadding);

@end
