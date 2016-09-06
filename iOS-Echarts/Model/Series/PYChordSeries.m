//
//  PYChordSeries.m
//  iOS-Echarts
//
//  Created by Pluto Y on 8/24/16.
//  Copyright © 2016 pluto-y. All rights reserved.
//

#import "PYChordSeries.h"

@implementation PYChordSeries

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.data = nil;
        self.type = PYSeriesTypeChord;
        _ribbonType = YES;
        _symbol = PYSymbolCircle;
        _minRadius = @10;
        _maxRadius = @20;
        _showScale = NO;
        _showScaleText = NO;
        _padding = @2;
        _sort = PYSortNone;
        _sortSub = PYSortNone;
        _clockWise = NO;
    }
    return self;
}

PYInitializerImpTemplate(PYChordSeries);

PYPropertyEqualImpTemplate(PYChordSeries, NSString *, insertToSerie);
PYPropertyEqualImpTemplate(PYChordSeries, id, radius);
PYPropertyEqualImpTemplate(PYChordSeries, NSMutableArray *, categories);
PYPropertyEqualImpTemplate(PYChordSeries, NSMutableArray *, nodes);
PYPropertyEqualImpTemplate(PYChordSeries, NSMutableArray *, links);
PYPropertyEqualImpTemplate(PYChordSeries, NSArray *, matrix);
PYPropertyEqualImpTemplate(PYChordSeries, BOOL, ribbonType);
PYPropertyEqualImpTemplate(PYChordSeries, PYSymbol, symbol);
PYPropertyEqualImpTemplate(PYChordSeries, NSNumber *, symbolSize);
PYPropertyEqualImpTemplate(PYChordSeries, NSNumber *, minRadius);
PYPropertyEqualImpTemplate(PYChordSeries, NSNumber *, maxRadius);
PYPropertyEqualImpTemplate(PYChordSeries, BOOL, showScale);
PYPropertyEqualImpTemplate(PYChordSeries, BOOL, showScaleText);
PYPropertyEqualImpTemplate(PYChordSeries, NSNumber *, padding);
PYPropertyEqualImpTemplate(PYChordSeries, PYSort, sort);
PYPropertyEqualImpTemplate(PYChordSeries, PYSort, sortSub);
PYPropertyEqualImpTemplate(PYChordSeries, BOOL, clockWise);

PYAddMethodImpTemplate(PYChordSeries, PYCategories, Categories, categories);
PYAddMethodImpTemplate(PYChordSeries, PYNodes, Nodes, nodes);
PYAddMethodImpTemplate(PYChordSeries, PYLinks, Links, links);

@end
