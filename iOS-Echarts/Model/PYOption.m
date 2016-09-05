//
//  PYOption.m
//  iOS-Echarts
//
//  Created by Pluto Y on 15/9/9.
//  Copyright (c) 2015年 pluto-y. All rights reserved.
//

#import "PYOption.h"
#import "PYAxis.h"
#import "PYLegend.h"
#import "PYTimeline.h"
#import "PYTitle.h"
#import "PYGrid.h"
#import "PYToolbox.h"
#import "PYDataZoom.h"
#import "PYDataRange.h"
#import "PYPolar.h"
#import "PYRoamController.h"
#import "PYColor.h"

@implementation PYOption

- (instancetype)init
{
    self = [super init];
    if (self) {
        _animation = YES;
    }
    return self;
}

PYInitializerImpTemplate(PYOption);

PYPropertyEqualImpTemplate(PYOption, PYColor *, backgroundColor);
PYPropertyEqualImpTemplate(PYOption, NSArray *, color);
PYPropertyEqualImpTemplate(PYOption, NSMutableArray *, polar);
PYPropertyEqualImpTemplate(PYOption, BOOL, renderAsImage);
PYPropertyEqualImpTemplate(PYOption, BOOL, calculable);
PYPropertyEqualImpTemplate(PYOption, BOOL, animation);
PYPropertyEqualImpTemplate(PYOption, PYTimeline *, timeline);
PYPropertyEqualImpTemplate(PYOption, PYTitle *, title);
PYPropertyEqualImpTemplate(PYOption, PYToolbox *, toolbox);
PYPropertyEqualImpTemplate(PYOption, PYTooltip *, tooltip);
PYPropertyEqualImpTemplate(PYOption, PYLegend *, legend);
PYPropertyEqualImpTemplate(PYOption, PYDataRange *, dataRange);
PYPropertyEqualImpTemplate(PYOption, PYDataZoom *, dataZoom);
PYPropertyEqualImpTemplate(PYOption, PYRoamController *, roamController);
PYPropertyEqualImpTemplate(PYOption, PYGrid *, grid);
PYPropertyEqualImpTemplate(PYOption, NSMutableArray *, xAxis);
PYPropertyEqualImpTemplate(PYOption, NSMutableArray *, yAxis);
PYPropertyEqualImpTemplate(PYOption, NSMutableArray *, series);
PYPropertyEqualImpTemplate(PYOption, NSMutableArray *, options);

PYAddMethodImpTemplate(PYOption, PYAxis, XAxis, xAxis);
PYAddMethodImpTemplate(PYOption, PYAxis, YAxis, yAxis);
PYAddMethodImpTemplate(PYOption, PYSeries, Series, series);
PYAddMethodImpTemplate(PYOption, PYPolar, Polar, polar);
PYAddMethodImpTemplate(PYOption, PYOption, Options, options);

@end
