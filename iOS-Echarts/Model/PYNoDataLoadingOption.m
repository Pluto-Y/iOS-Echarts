//
//  PYNoDataLoadingOption.m
//  iOS-Echarts
//
//  Created by Pluto Y on 4/18/16.
//  Copyright © 2016 pluto-y. All rights reserved.
//

#import "PYNoDataLoadingOption.h"
#import "PYTextStyle.h"

@implementation PYNoDataLoadingOption

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.text = @"暂无数据";
        self.x = PYPositionCenter;
        self.y = PYPositionCenter;
        self.effect = PYLoadingOptionEffectBubble;
    }
    return self;
}

@end
