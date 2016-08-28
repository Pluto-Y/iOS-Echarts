//
//  PYSplitLine.m
//  iOS-Echarts
//
//  Created by Pluto Y on 15/9/8.
//  Copyright (c) 2015年 pluto-y. All rights reserved.
//

#import "PYAxisSplitLine.h"
#import "PYLineStyle.h"

@implementation PYAxisSplitLine

- (instancetype)init
{
    self = [super init];
    if (self) {
        _show = YES;
        _onGap = NO;
        _lineStyle = [[PYLineStyle alloc] init];
    }
    return self;
}

PYInitializerImpTemplate(PYAxisSplitLine);

PYPropertyEqualImpTemplate(PYAxisSplitLine, BOOL, show);
PYPropertyEqualImpTemplate(PYAxisSplitLine, BOOL, onGap);
PYPropertyEqualImpTemplate(PYAxisSplitLine, PYLineStyle *, lineStyle);

@end
