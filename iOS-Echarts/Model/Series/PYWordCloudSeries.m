//
//  PYWordCloundSeries.m
//  iOS-Echarts
//
//  Created by Pluto Y on 4/21/16.
//  Copyright © 2016 Pluto-y. All rights reserved.
//

#import "PYWordCloudSeries.h"

@implementation PYWordCloudSeries

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.type = PYSeriesTypeWordCloud;
    }
    return self;
}

PYInitializerImpTemplate(PYWordCloudSeries);

PYPropertyEqualImpTemplate(PYWordCloudSeries, NSArray *, center);
PYPropertyEqualImpTemplate(PYWordCloudSeries, NSArray *, size);
PYPropertyEqualImpTemplate(PYWordCloudSeries, NSArray *, textRotation);
PYPropertyEqualImpTemplate(PYWordCloudSeries, NSDictionary *, autoSize);
PYPropertyEqualImpTemplate(PYWordCloudSeries, NSNumber *, textPadding);

@end
