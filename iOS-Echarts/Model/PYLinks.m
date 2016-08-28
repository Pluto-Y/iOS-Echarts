//
//  PYLinks.m
//  iOS-Echarts
//
//  Created by Pluto Y on 7/22/16.
//  Copyright © 2016 pluto-y. All rights reserved.
//

#import "PYLinks.h"
#import "PYItemStyle.h"

@implementation PYLinks

- (instancetype)init
{
    self = [super init];
    if (self) {
        _weight = @(1);
    }
    return self;
}

PYInitializerImpTemplate(PYLinks);

PYPropertyEqualImpTemplate(PYLinks, id, source);
PYPropertyEqualImpTemplate(PYLinks, id, target);
PYPropertyEqualImpTemplate(PYLinks, NSNumber *, weight);
PYPropertyEqualImpTemplate(PYLinks, PYItemStyle *, itemStyle);

@end
