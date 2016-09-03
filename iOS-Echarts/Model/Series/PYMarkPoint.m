//
//  PYMarkPoint.m
//  iOS-Echarts
//
//  Created by Pluto-Y on 15/9/16.
//  Copyright (c) 2015年 pluto-y. All rights reserved.
//

#import "PYMarkPoint.h"
#import "PYItemStyle.h"

PYMarkPointEffectType const PYMarkPointEffectTypeScale  = @"scale";
PYMarkPointEffectType const PYMarkPointEffectTypeBounce = @"bounce";

static NSArray<PYMarkPointEffectType> *markPointEffectTypeScope;
@interface PYMarkPointEffect()

@end

@implementation PYMarkPointEffect

+ (void)initialize
{
    if (self == [PYMarkPointEffect class]) {
        markPointEffectTypeScope = @[PYMarkPointEffectTypeScale, PYMarkPointEffectTypeBounce];
    }
}

- (void)setType:(PYMarkPointEffectType)type {
    if (![markPointEffectTypeScope containsObject:type]) {
        NSLog(@"ERROR: MarkPointEffect does not support type --- %@", type);
        type = PYMarkPointEffectTypeScale;
        return;
    }
    _type = [type copy];
}

PYInitializerImpTemplate(PYMarkPointEffect);

PYPropertyEqualImpTemplate(PYMarkPointEffect, BOOL, show);
PYPropertyEqualImpTemplate(PYMarkPointEffect, PYMarkPointEffectType, type);
PYPropertyEqualImpTemplate(PYMarkPointEffect, BOOL, loop);
PYPropertyEqualImpTemplate(PYMarkPointEffect, NSNumber *, period);
PYPropertyEqualImpTemplate(PYMarkPointEffect, NSNumber *, scaleSize);
PYPropertyEqualImpTemplate(PYMarkPointEffect, NSNumber *, bounceDistance);
PYPropertyEqualImpTemplate(PYMarkPointEffect, PYColor *, color);
PYPropertyEqualImpTemplate(PYMarkPointEffect, PYColor *, shadowColor);
PYPropertyEqualImpTemplate(PYMarkPointEffect, NSNumber *, shadowBlur);

@end

@implementation PYMarkPoint

- (instancetype)init
{
    self = [super init];
    if (self) {
        _clickable = YES;
        _symbol = PYSymbolPin;
        _symbolSize = @(10);
        _large = NO;
        _effect = [[PYMarkPointEffect alloc] init];
        _effect.show = NO;
        _effect.type = PYMarkPointEffectTypeScale;
        _effect.period = @(15);
        _effect.scaleSize = @(2);
        _effect.bounceDistance = @(10);
        _effect.shadowBlur = @(0);
    }
    return self;
}

PYInitializerImpTemplate(PYMarkPoint);

PYPropertyEqualImpTemplate(PYMarkPoint, BOOL, clickable);
PYPropertyEqualImpTemplate(PYMarkPoint, id, symbol);
PYPropertyEqualImpTemplate(PYMarkPoint, id, symbolSize);
PYPropertyEqualImpTemplate(PYMarkPoint, id, symbolRotate);
PYPropertyEqualImpTemplate(PYMarkPoint, BOOL, large);
PYPropertyEqualImpTemplate(PYMarkPoint, PYMarkPointEffect *, effect);
PYPropertyEqualImpTemplate(PYMarkPoint, PYItemStyle *, itemStyle);
PYPropertyEqualImpTemplate(PYMarkPoint, NSMutableArray *, data);

PYAddMethodImpTemplate(PYMarkPoint, NSObject, Data, data);

@end
