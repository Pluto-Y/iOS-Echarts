//
//  PYMarkPoint.m
//  iOS-Echarts
//
//  Created by Pluto-Y on 15/9/16.
//  Copyright (c) 2015年 pluto-y. All rights reserved.
//

#import "PYMarkPoint.h"

#define MARK_POINT_EFFECT_TYPE_SCOPE [NSArray arrayWithObjects:@"bounce", @"scale", nil]

@interface PYMarkPointEffect()

@end

@implementation PYMarkPointEffect

-(void)setType:(NSString *)type {
    if (![MARK_POINT_EFFECT_TYPE_SCOPE containsObject:type]) {
        NSLog(@"ERROR: MarkPointEffect does not support type --- %@", type);
        type = @"scale";
    }
    _type = type;
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
        _effect = [[PYMarkPointEffect alloc] init];
        _effect.show = NO;
        _effect.type = @"scale";
        _effect.period = @(15);
        _effect.scaleSize = @(2);
        _effect.bounceDistance = @(10);
        _effect.shadowBlur = @(0);
    }
    return self;
}

@end
