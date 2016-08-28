//
//  PYNodes.m
//  iOS-Echarts
//
//  Created by Pluto Y on 7/22/16.
//  Copyright © 2016 pluto-y. All rights reserved.
//

#import "PYNodes.h"
#import "PYItemStyle.h"

@implementation PYNodes

- (instancetype)init
{
    self = [super init];
    if (self) {
        _ignore = NO;
        _symbol = PYSymbolCircle;
        _category = @(0);
    }
    return self;
}

PYInitializerImpTemplate(PYNodes);

PYPropertyEqualImpTemplate(PYNodes, NSString *, name);
PYPropertyEqualImpTemplate(PYNodes, NSString *, label);
PYPropertyEqualImpTemplate(PYNodes, NSNumber *, value);
PYPropertyEqualImpTemplate(PYNodes, BOOL, ignore);
PYPropertyEqualImpTemplate(PYNodes, NSString *, symbol);
PYPropertyEqualImpTemplate(PYNodes, id, symboleSize);
PYPropertyEqualImpTemplate(PYNodes, NSNumber *, category);
PYPropertyEqualImpTemplate(PYNodes, PYItemStyle *, itemStyle);

@end
