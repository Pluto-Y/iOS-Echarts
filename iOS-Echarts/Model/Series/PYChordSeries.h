//
//  PYChordSeries.h
//  iOS-Echarts
//
//  Created by Pluto Y on 8/24/16.
//  Copyright © 2016 pluto-y. All rights reserved.
//

#import "PYSeries.h"

@class PYCategories, PYNodes, PYLinks;

/**
 *
 *  You can goto this website for references:
 *  http://echarts.baidu.com/echarts2/doc/doc.html#SeriesChord
 *
 */
@interface PYChordSeries : PYSeries

@property (nonatomic, copy) NSString *insertToSerie;
@property (nonatomic, strong) id radius;
@property (nonatomic, copy) NSMutableArray<PYCategories *> *categories;
@property (nonatomic, copy) NSMutableArray<PYNodes *> *nodes;
@property (nonatomic, copy) NSMutableArray<PYLinks *> *links;
@property (nonatomic, copy) NSArray *matrix;
@property (nonatomic, assign) BOOL ribbonType;
@property (nonatomic, copy) PYSymbol symbol;
@property (nonatomic, strong) NSNumber *symbolSize;
@property (nonatomic, strong) NSNumber *minRadius;
@property (nonatomic, strong) NSNumber *maxRadius;
@property (nonatomic, assign) BOOL showScale;
@property (nonatomic, assign) BOOL showScaleText;
@property (nonatomic, strong) NSNumber *padding;
@property (nonatomic, copy) PYSort sort;
@property (nonatomic, copy) PYSort sortSub;
@property (nonatomic, assign) BOOL clockWise;

PYInitializerTemplate(PYChordSeries, series);

PYPropertyEqualTemplate(PYChordSeries, NSString *, insertToSerie);
PYPropertyEqualTemplate(PYChordSeries, id, radius);
PYPropertyEqualTemplate(PYChordSeries, NSMutableArray *, categories);
PYPropertyEqualTemplate(PYChordSeries, NSMutableArray *, nodes);
PYPropertyEqualTemplate(PYChordSeries, NSMutableArray *, links);
PYPropertyEqualTemplate(PYChordSeries, NSArray *, matrix);
PYPropertyEqualTemplate(PYChordSeries, BOOL, ribbonType);
PYPropertyEqualTemplate(PYChordSeries, PYSymbol, symbol);
PYPropertyEqualTemplate(PYChordSeries, NSNumber *, symbolSize);
PYPropertyEqualTemplate(PYChordSeries, NSNumber *, minRadius);
PYPropertyEqualTemplate(PYChordSeries, NSNumber *, maxRadius);
PYPropertyEqualTemplate(PYChordSeries, BOOL, showScale);
PYPropertyEqualTemplate(PYChordSeries, BOOL, showScaleText);
PYPropertyEqualTemplate(PYChordSeries, NSNumber *, padding);
PYPropertyEqualTemplate(PYChordSeries, PYSort, sort);
PYPropertyEqualTemplate(PYChordSeries, PYSort, sortSub);
PYPropertyEqualTemplate(PYChordSeries, BOOL, clockWise);

PYAddMethodTemplate(PYChordSeries, PYCategories, Categories, categories);
PYAddMethodTemplate(PYChordSeries, PYNodes, Nodes, nodes);
PYAddMethodTemplate(PYChordSeries, PYLinks, Links, links);

@end
