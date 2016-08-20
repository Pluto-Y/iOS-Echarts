//
//  PYAxis.m
//  iOS-Echarts
//
//  Created by Pluto Y on 15/9/7.
//  Copyright (c) 2015年 pluto-y. All rights reserved.
//

#import "PYAxis.h"

PYAxisType const PYAxisTypeCategory = @"category";
PYAxisType const PYAxisTypeValue = @"value";
PYAxisType const PYAxisTypeTime = @"time";
PYAxisType const PYAxisTypeLog = @"log";

static NSArray<PYAxisType> *axisTypeSupported;
@interface PYAxis()

@end

@implementation PYAxis

+(void) initialize {
    axisTypeSupported = @[PYAxisTypeLog, PYAxisTypeTime, PYAxisTypeValue, PYAxisTypeCategory];
}

- (instancetype)init {
    self = [super init];
    if (self) {
        _type = PYAxisTypeCategory;
        _show = YES;
        _zlevel = @(0);
        _z = @(0);
        _position = @"'bottom'|'left'";
        _name = @"";
        _nameLocation = @"end";
        _scale = false;
        _data = [[NSArray alloc] init];
        _axisLine = [[PYAxisLine alloc] init];
        _axisLabel = [[PYAxisLabel alloc] init];
        _splitLine = [[PYAxisSplitLine alloc] init];
    }
    return self;
}

-(void)setType:(PYAxisType)type {
    if (![axisTypeSupported containsObject:type]) {
        NSLog(@"ERROR: Axis does not support the type --- %@", type);
        _type = PYAxisTypeCategory;
        return;
    }
    _type = [type copy];
}

@end
