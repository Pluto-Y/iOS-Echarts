//
//  PYCategries.m
//  iOS-Echarts
//
//  Created by Pluto Y on 7/22/16.
//  Copyright © 2016 pluto-y. All rights reserved.
//

#import "PYCategories.h"

@implementation PYCategories

- (instancetype)init
{
    self = [super init];
    if (self) {
        _symbol = PYSymbolCircle;
    }
    return self;
}

PYInitializerImpTemplate(PYCategories);

PYPropertyEqualImpTemplate(PYCategories, NSString *, name);
PYPropertyEqualImpTemplate(PYCategories, PYSymbol, symbol);
PYPropertyEqualImpTemplate(PYCategories, id, symbolSize);
PYPropertyEqualImpTemplate(PYCategories, PYItemStyle *, itemStyle);

@end
