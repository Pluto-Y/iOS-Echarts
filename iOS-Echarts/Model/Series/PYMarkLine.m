//
//  PYMarkLine.m
//  iOS-Echarts
//
//  Created by Pluto-Y on 15/9/16.
//  Copyright (c) 2015年 pluto-y. All rights reserved.
//

#import "PYMarkLine.h"
#import "PYUtilities.h"

@implementation PYBundling

@end

@implementation PYMarkLineEffect

@end

@implementation PYMarkLine

- (instancetype)init
{
    self = [super init];
    if (self) {
        _clickable = YES;
        _symbol = @[PYSymbolCircle, PYSymbolArrow];
        _symbolSize = @[@(2), @(4)];
        _large = NO;
        _smooth = NO;
        _smoothness = @(0.2);
        _precision = @(2);
        _bundling = [[PYBundling alloc] init];
        _bundling.enable = NO;
        _bundling.maxTurningAngle = @(45);
        _effect = [[PYMarkLineEffect alloc] init];
        _effect.show = NO;
        _effect.loop = YES;
        _effect.period = @(15);
        _effect.scaleSize = @(2);
    }
    return self;
}

@end
