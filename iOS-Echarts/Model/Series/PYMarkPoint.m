//
//  PYMarkPoint.m
//  iOS-Echarts
//
//  Created by Pluto-Y on 15/9/16.
//  Copyright (c) 2015年 pluto-y. All rights reserved.
//

#import "PYMarkPoint.h"
#import "PYUtilities.h"

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

@end
