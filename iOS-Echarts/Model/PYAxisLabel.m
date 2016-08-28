//
//  PYAxisLabel.m
//  iOS-Echarts
//
//  Created by Pluto Y on 15/9/7.
//  Copyright (c) 2015年 pluto-y. All rights reserved.
//

#import "PYAxisLabel.h"
#import "PYTextStyle.h"

@implementation PYAxisLabel

- (instancetype)init {
    self = [super init];
    if (self) {
        _show = YES;
        _interval = PYIntervalAuto;
        _rotate = @0;
        _margin = @8;
        _clickable = false;
    }
    return self;
}

PYInitializerImpTemplate(PYAxisLabel);

PYPropertyEqualImpTemplate(PYAxisLabel, BOOL, show);
PYPropertyEqualImpTemplate(PYAxisLabel, id, interval);
PYPropertyEqualImpTemplate(PYAxisLabel, NSNumber *, rotate);
PYPropertyEqualImpTemplate(PYAxisLabel, NSNumber *, margin);
PYPropertyEqualImpTemplate(PYAxisLabel, BOOL, clickable);
PYPropertyEqualImpTemplate(PYAxisLabel, NSString *, formatter);
PYPropertyEqualImpTemplate(PYAxisLabel, PYTextStyle *, textStyle);

@end
