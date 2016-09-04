//
//  PYAxis.m
//  iOS-Echarts
//
//  Created by Pluto Y on 15/9/7.
//  Copyright (c) 2015年 pluto-y. All rights reserved.
//

#import "PYAxis.h"
#import "PYAxisLine.h"
#import "PYAxisLabel.h"
#import "PYAxisSplitLine.h"
#import "PYAxisTick.h"
#import "PYTextStyle.h"
#import "PYSplitArea.h"

PYAxisType const PYAxisTypeCategory = @"category";
PYAxisType const PYAxisTypeValue    = @"value";
PYAxisType const PYAxisTypeTime     = @"time";
PYAxisType const PYAxisTypeLog      = @"log";

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
        _position = [NSString stringWithFormat:@"'%@'|'%@'", PYPositionBottom, PYPositionLeft];
        _name = @"";
        _nameLocation = @"end";
        _scale = false;
        _data = [[NSMutableArray alloc] init];
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

PYInitializerImpTemplate(PYAxis);

PYPropertyEqualImpTemplate(PYAxis, PYAxisType, type);
PYPropertyEqualImpTemplate(PYAxis, BOOL, show);
PYPropertyEqualImpTemplate(PYAxis, NSNumber *, zlevel);
PYPropertyEqualImpTemplate(PYAxis, NSNumber *, z);
PYPropertyEqualImpTemplate(PYAxis, NSString *, position);
PYPropertyEqualImpTemplate(PYAxis, NSString *, name);
PYPropertyEqualImpTemplate(PYAxis, NSString *, nameLocation);
PYPropertyEqualImpTemplate(PYAxis, PYTextStyle *, nameTextStyle);
PYPropertyEqualImpTemplate(PYAxis, id, boundaryGap);
PYPropertyEqualImpTemplate(PYAxis, NSNumber *, min);
PYPropertyEqualImpTemplate(PYAxis, NSNumber *, max);
PYPropertyEqualImpTemplate(PYAxis, BOOL, scale);
PYPropertyEqualImpTemplate(PYAxis, NSNumber *, splitNumber);
PYPropertyEqualImpTemplate(PYAxis, NSNumber *, logLabelBase);
PYPropertyEqualImpTemplate(PYAxis, NSDictionary *, logPositive);
PYPropertyEqualImpTemplate(PYAxis, PYAxisLine *, axisLine);
PYPropertyEqualImpTemplate(PYAxis, PYAxisTick *, axisTick);
PYPropertyEqualImpTemplate(PYAxis, PYAxisLabel *, axisLabel);
PYPropertyEqualImpTemplate(PYAxis, PYAxisSplitLine *, splitLine);
PYPropertyEqualImpTemplate(PYAxis, PYSplitArea *, splitArea);
PYPropertyEqualImpTemplate(PYAxis, NSMutableArray *, data);

PYAddMethodImpTemplate(PYAxis, NSObject, Data, data);

@end
