//
//  PYLoadingOption.m
//  iOS-Echarts
//
//  Created by Pluto Y on 16/4/15.
//  Copyright © 2016年 pluto-y. All rights reserved.
//

#import "PYLoadingOption.h"
#import "PYTextStyle.h"

PYLoadingOptionEffect const PYLoadingOptionEffectSpin        = @"spin";
PYLoadingOptionEffect const PYLoadingOptionEffectBar         = @"bar";
PYLoadingOptionEffect const PYLoadingOptionEffectRing        = @"ring";
PYLoadingOptionEffect const PYLoadingOptionEffectWhirling    = @"whirling";
PYLoadingOptionEffect const PYLoadingOptionEffectDynamicLine = @"dynamicLine";
PYLoadingOptionEffect const PYLoadingOptionEffectBubble      = @"bubble";

@implementation PYLoadingOption

- (instancetype)init
{
    self = [super init];
    if (self) {
        _text = @"数据读取中...";
        _x = PYPositionCenter;
        _y = PYPositionCenter;
        _effect = PYLoadingOptionEffectSpin;
    }
    return self;
}

PYPropertyEqualImpTemplate(PYLoadingOption, NSString *, text);
PYPropertyEqualImpTemplate(PYLoadingOption, id, x);
PYPropertyEqualImpTemplate(PYLoadingOption, id, y);
PYPropertyEqualImpTemplate(PYLoadingOption, PYTextStyle *, textStyle);
PYPropertyEqualImpTemplate(PYLoadingOption, id, effect);
PYPropertyEqualImpTemplate(PYLoadingOption, NSDictionary *, effectOption);
PYPropertyEqualImpTemplate(PYLoadingOption, NSNumber *, progress);

@end
