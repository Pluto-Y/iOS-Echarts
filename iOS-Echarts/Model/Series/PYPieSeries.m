//
//  PYPieSeries.m
//  iOS-Echarts
//
//  Created by Pluto-Y on 15/10/3.
//  Copyright © 2015年 pluto-y. All rights reserved.
//

#import "PYPieSeries.h"

PYPieSeriesRoseType const PYPieSeriesRoseTypeRadius = @"radius";
PYPieSeriesRoseType const PYPieSeriesRoseTypeArea   = @"area";

static NSArray<PYPieSeriesRoseType> *pieSeriesRoleTypeScope;
@implementation PYPieSeries

+ (void)initialize
{
    if (self == [PYPieSeries class]) {
        pieSeriesRoleTypeScope = @[PYPieSeriesRoseTypeRadius, PYPieSeriesRoseTypeArea];
    }
}

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.type = PYSeriesTypePie;
        _center = @[@"50%", @"50%"];
        _radius = @[@"0", @"75%"];
        _startAngle = @(90);
        _minAngle = @(0);
        _clockWise = YES;
        _selectedMode = @(10);
        _legendHoverLink = YES;
    }
    return self;
}

- (void)setRoseType:(PYPieSeriesRoseType)roseType {
    if (roseType != nil && ![pieSeriesRoleTypeScope containsObject:roseType]) {
        NSLog(@"ERROR: PYPieSeries does not support roseType --- %@", roseType);
        _roseType = nil;
        return;
    }
    _roseType = [roseType copy];
}

PYInitializerImpTemplate(PYPieSeries);

PYPropertyEqualImpTemplate(PYPieSeries, NSArray *, center);
PYPropertyEqualImpTemplate(PYPieSeries, id, radius);
PYPropertyEqualImpTemplate(PYPieSeries, NSNumber *, startAngle);
PYPropertyEqualImpTemplate(PYPieSeries, NSNumber *, minAngle);
PYPropertyEqualImpTemplate(PYPieSeries, BOOL, clockWise);
PYPropertyEqualImpTemplate(PYPieSeries, PYPieSeriesRoseType, roseType);
PYPropertyEqualImpTemplate(PYPieSeries, NSNumber *, selectedOffset);
PYPropertyEqualImpTemplate(PYPieSeries, id, selectedMode);
PYPropertyEqualImpTemplate(PYPieSeries, BOOL, legendHoverLink);

@end
