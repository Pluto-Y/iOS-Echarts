//
//  PYItemStyle.m
//  iOS-Echarts
//
//  Created by Pluto Y on 15/9/8.
//  Copyright (c) 2015年 pluto-y. All rights reserved.
//

#import "PYItemStyle.h"
#import "PYItemStyleProp.h"

@implementation PYItemStyle

- (instancetype)init
{
    self = [super init];
    if (self) {
        _normal = [[PYItemStyleProp alloc] init];
        _emphasis = [[PYItemStyleProp alloc] init];
    }
    return self;
}

PYInitializerImpTemplate(PYItemStyle);

PYPropertyEqualImpTemplate(PYItemStyle, PYItemStyleProp *, normal);
PYPropertyEqualImpTemplate(PYItemStyle, PYItemStyleProp *, emphasis);

@end
