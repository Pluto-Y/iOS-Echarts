//
//  PYOption.m
//  iOS-Echarts
//
//  Created by Pluto Y on 15/9/9.
//  Copyright (c) 2015年 pluto-y. All rights reserved.
//

#import "PYOption.h"

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

PYPropertyEqualImpTemplate(PYOption, PYTimeline *, timeline);
PYPropertyEqualImpTemplate(PYOption, PYTitle *, title);
PYPropertyEqualImpTemplate(PYOption, PYToolbox *, toolbox);
PYPropertyEqualImpTemplate(PYOption, PYTooltip *, tooltip);
PYPropertyEqualImpTemplate(PYOption, PYLegend *, legend);
PYPropertyEqualImpTemplate(PYOption, PYDataRange *, dataRange);
PYPropertyEqualImpTemplate(PYOption, PYDataZoom *, dataZoom);
PYPropertyEqualImpTemplate(PYOption, PYRoamController *, roamController);
PYPropertyEqualImpTemplate(PYOption, PYGrid *, grid);

@end
