//
//  PYAxisLine.m
//  iOS-Echarts
//
//  Created by Pluto Y on 15/9/7.
//  Copyright (c) 2015年 pluto-y. All rights reserved.
//

#import "PYAxisLine.h"
#import "PYLineStyle.h"

@implementation PYAxisLine

- (instancetype)init {
    self = [super init];
    if (self) {
        _show = YES;
        _onZero = YES;
        _lineStyle = [[PYLineStyle alloc] init];
    }
    return self;
}

PYInitializerImpTemplate(PYAxisLine);

PYPropertyEqualImpTemplate(PYAxisLine, BOOL, show);
PYPropertyEqualImpTemplate(PYAxisLine, BOOL, onZero);
PYPropertyEqualImpTemplate(PYAxisLine, PYLineStyle *, lineStyle);

@end
