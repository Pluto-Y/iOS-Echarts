//
//  PYForceSeries.m
//  iOS-Echarts
//
//  Created by Pluto Y on 7/22/16.
//  Copyright © 2016 pluto-y. All rights reserved.
//

#import "PYForceSeries.h"
#import "PYCategories.h"
#import "PYLinks.h"

NSString * const PYForceSeriesRoamScale = @"scale";
NSString * const PYForceSeriesRoamMove = @"move";

@implementation PYForceNodes

PYInitializerImpTemplate(PYForceNodes);

PYPropertyEqualImpTemplate(PYForceNodes, NSMutableArray *, initial);
PYPropertyEqualImpTemplate(PYForceNodes, BOOL, fixX);
PYPropertyEqualImpTemplate(PYForceNodes, BOOL, fixY);
PYPropertyEqualImpTemplate(PYForceNodes, BOOL, draggable);

@end

@implementation PYForceSeries

- (instancetype)init
{
    self = [super init];
    if (self) {
        // the data property is useless in force series
        self.data = nil;
        self.type = PYSeriesTypeForce;
        _nodes = [NSMutableArray new];
        _links = [NSMutableArray new];
        _center = @[@"50%", @"50%"];
        _minRadius = @(10);
        _maxRadius = @(20);
        _symbol = PYSymbolCircle;
        _linkSymbol = PYSymbolNone;
        _linkSymbolSize = @[@(10), @(15)];
        _scaling = @(1);
        _gravity = @(1);
        _draggable = YES;
        _large = NO;
        _useWorker = NO;
        _steps = @(1);
        _roam = @(NO);
        
    }
    return self;
}

PYInitializerImpTemplate(PYForceSeries);

PYPropertyEqualImpTemplate(PYForceSeries, BOOL, ribbonType);
PYPropertyEqualImpTemplate(PYForceSeries, NSMutableArray *, categories);
PYPropertyEqualImpTemplate(PYForceSeries, NSMutableArray *, nodes);
PYPropertyEqualImpTemplate(PYForceSeries, NSMutableArray *, links);
PYPropertyEqualImpTemplate(PYForceSeries, NSMutableArray *, matrix);
PYPropertyEqualImpTemplate(PYForceSeries, NSArray *, center);
PYPropertyEqualImpTemplate(PYForceSeries, NSNumber *, size);
PYPropertyEqualImpTemplate(PYForceSeries, NSNumber *, minRadius);
PYPropertyEqualImpTemplate(PYForceSeries, NSNumber *, maxRadius);
PYPropertyEqualImpTemplate(PYForceSeries, PYSymbol, symbol);
PYPropertyEqualImpTemplate(PYForceSeries, id, symbolSize);
PYPropertyEqualImpTemplate(PYForceSeries, NSString *, linkSymbol);
PYPropertyEqualImpTemplate(PYForceSeries, NSArray *, linkSymbolSize);
PYPropertyEqualImpTemplate(PYForceSeries, NSNumber *, scaling);
PYPropertyEqualImpTemplate(PYForceSeries, NSNumber *, gravity);
PYPropertyEqualImpTemplate(PYForceSeries, BOOL, draggable);
PYPropertyEqualImpTemplate(PYForceSeries, BOOL, large);
PYPropertyEqualImpTemplate(PYForceSeries, BOOL, useWorker);
PYPropertyEqualImpTemplate(PYForceSeries, NSNumber *, steps);
PYPropertyEqualImpTemplate(PYForceSeries, id, roam);

PYAddMethodImpTemplate(PYForceSeries, PYCategories, Categories, categories);
PYAddMethodImpTemplate(PYForceSeries, PYForceNodes, Nodes, nodes);
PYAddMethodImpTemplate(PYForceSeries, PYLinks, Links, links);

@end
