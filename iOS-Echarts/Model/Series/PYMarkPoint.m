//
//  PYMarkPoint.m
//  iOS-Echarts
//
//  Created by ChipSea on 15/9/16.
//  Copyright (c) 2015年 pluto-y. All rights reserved.
//

#import "PYMarkPoint.h"

@interface PYEffect() {
    PYMarkPointEffectType type;
}
@end

@implementation PYEffect

-(NSString *)getType {
    switch (type) {
        case PYMarkPointEffectTypeBounce:
            return @"bounce";
        case PYMarkPointEffectTypeScale:
            return @"scale";
    }
}

-(void)setMarPointEffectType:(PYMarkPointEffectType)markPointEffectType {
    type = markPointEffectType;
}

@end

@implementation PYMarkPoint

- (instancetype)init
{
    self = [super init];
    if (self) {
        _clickable = YES;
        _symbol = @"pin";
        _symbolSize = @(10);
        _large = NO;
        _effect = [[PYEffect alloc] init];
        _effect.show = NO;
        [_effect setMarPointEffectType:PYMarkPointEffectTypeScale];
        _effect.period = @(15);
        _effect.scaleSize = @(2);
        _effect.bounceDistance = @(10);
        _effect.shadowBlur = @(0);
    }
    return self;
}

@end
