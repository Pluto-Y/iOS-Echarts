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

@end

@implementation PYForceSeries

- (instancetype)init
{
    self = [super init];
    if (self) {
        // the data property is useless in force series
        self.data = nil;
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

@end
