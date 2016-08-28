//
//  PYAreaStyle.m
//  iOS-Echarts
//
//  Created by Pluto Y on 15/9/8.
//  Copyright (c) 2015年 pluto-y. All rights reserved.
//

#import "PYAreaStyle.h"

PYAreaStyleType const PYAreaStyleTypeDefault = @"default";

@implementation PYAreaStyle

- (instancetype)init
{
    self = [super init];
    if (self) {
        _type = PYAreaStyleTypeDefault;
    }
    return self;
}

- (void)setType:(PYAreaStyleType)type {
    if (![type isEqualToString:PYAreaStyleTypeDefault]) {
        NSLog(@"ERROR:AreaStyle not support type");
    }
    type = PYAreaStyleTypeDefault;
}

PYInitializerImpTemplate(PYAreaStyle);

PYPropertyEqualImpTemplate(PYAreaStyle, id, color);
PYPropertyEqualImpTemplate(PYAreaStyle, PYAreaStyleType, type);

@end
