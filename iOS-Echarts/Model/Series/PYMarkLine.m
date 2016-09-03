//
//  PYMarkLine.m
//  iOS-Echarts
//
//  Created by Pluto-Y on 15/9/16.
//  Copyright (c) 2015年 pluto-y. All rights reserved.
//

#import "PYMarkLine.h"
#import "PYItemStyle.h"

@implementation PYBundling

PYInitializerImpTemplate(PYBundling);

PYPropertyEqualImpTemplate(PYBundling, BOOL, enable);
PYPropertyEqualImpTemplate(PYBundling, NSNumber *, maxTurningAngle);

@end

@implementation PYMarkLineEffect

PYInitializerImpTemplate(PYMarkLineEffect);

PYPropertyEqualImpTemplate(PYMarkLineEffect, BOOL, show);
PYPropertyEqualImpTemplate(PYMarkLineEffect, BOOL, loop);
PYPropertyEqualImpTemplate(PYMarkLineEffect, NSNumber *, period);
PYPropertyEqualImpTemplate(PYMarkLineEffect, NSNumber *, scaleSize);
PYPropertyEqualImpTemplate(PYMarkLineEffect, PYColor *, color);
PYPropertyEqualImpTemplate(PYMarkLineEffect, PYColor *, shadowColor);
PYPropertyEqualImpTemplate(PYMarkLineEffect, NSNumber *, shadowBlur);

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

PYInitializerImpTemplate(PYMarkLine);

PYPropertyEqualImpTemplate(PYMarkLine, BOOL, clickable);
PYPropertyEqualImpTemplate(PYMarkLine, id, symbol);
PYPropertyEqualImpTemplate(PYMarkLine, id, symbolSize);
PYPropertyEqualImpTemplate(PYMarkLine, id, symbolRotate);
PYPropertyEqualImpTemplate(PYMarkLine, BOOL, large);
PYPropertyEqualImpTemplate(PYMarkLine, BOOL, smooth);
PYPropertyEqualImpTemplate(PYMarkLine, NSNumber *, smoothness);
PYPropertyEqualImpTemplate(PYMarkLine, NSNumber *, precision);
PYPropertyEqualImpTemplate(PYMarkLine, PYBundling *, bundling);
PYPropertyEqualImpTemplate(PYMarkLine, PYMarkLineEffect *, effect);
PYPropertyEqualImpTemplate(PYMarkLine, PYItemStyle *, itemStyle);
PYPropertyEqualImpTemplate(PYMarkLine, NSMutableArray *, data);

PYAddMethodImpTemplate(PYMarkLine, NSObject, Data, data);

@end
