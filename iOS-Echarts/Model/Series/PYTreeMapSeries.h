//
//  PYTreeMapSeries.h
//  iOS-Echarts
//
//  Created by Pluto Y on 4/24/16.
//  Copyright © 2016 Pluto-y. All rights reserved.
//

#import "PYSeries.h"

/**
 *
 *  You can goto this website for references:
 *  http://echarts.baidu.com/echarts2/doc/doc.html#SeriesTreemap
 *
 */
@interface PYTreeMapSeries : PYSeries

@property (nonatomic, copy) NSArray *center;
@property (nonatomic, copy) NSArray *size;
@property (nonatomic, copy) NSString *root;

PYInitializerTemplate(PYTreeMapSeries, series);

PYPropertyEqualTemplate(PYTreeMapSeries, NSArray *, center);
PYPropertyEqualTemplate(PYTreeMapSeries, NSArray *, size);
PYPropertyEqualTemplate(PYTreeMapSeries, NSString *, root);

@end
