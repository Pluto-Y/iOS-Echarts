//
//  PYDataRange.m
//  iOS-Echarts
//
//  Created by Pluto-Y on 15/11/23.
//  Copyright © 2015年 pluto-y. All rights reserved.
//

#import "PYDataRange.h"
#import "PYColor.h"
#import "PYTextStyle.h"

@implementation PYDataRange

- (instancetype)init
{
    self = [super init];
    if (self) {
        _show = true;
    }
    return self;
}

PYInitializerImpTemplate(PYDataRange);

PYPropertyEqualImpTemplate(PYDataRange, BOOL, show);
PYPropertyEqualImpTemplate(PYDataRange, NSNumber *, zlevel);
PYPropertyEqualImpTemplate(PYDataRange, NSNumber *, z);
PYPropertyEqualImpTemplate(PYDataRange, PYOrient, orient);
PYPropertyEqualImpTemplate(PYDataRange, id, x);
PYPropertyEqualImpTemplate(PYDataRange, id, y);
PYPropertyEqualImpTemplate(PYDataRange, PYColor *, backgroundColor);
PYPropertyEqualImpTemplate(PYDataRange, PYColor *, borderColor);
PYPropertyEqualImpTemplate(PYDataRange, NSNumber *, borderWidth);
PYPropertyEqualImpTemplate(PYDataRange, id, padding);
PYPropertyEqualImpTemplate(PYDataRange, NSNumber *, itemGap);
PYPropertyEqualImpTemplate(PYDataRange, NSNumber *, itemWidth);
PYPropertyEqualImpTemplate(PYDataRange, NSNumber *, itemHeight);
PYPropertyEqualImpTemplate(PYDataRange, NSNumber *, min);
PYPropertyEqualImpTemplate(PYDataRange, NSNumber *, max);
PYPropertyEqualImpTemplate(PYDataRange, NSNumber *, precision);
PYPropertyEqualImpTemplate(PYDataRange, NSNumber *, splitNumber);
PYPropertyEqualImpTemplate(PYDataRange, NSMutableArray *, splitList);
PYPropertyEqualImpTemplate(PYDataRange, NSObject *, range);
PYPropertyEqualImpTemplate(PYDataRange, id, selectedMode);
PYPropertyEqualImpTemplate(PYDataRange, BOOL, calculable);
PYPropertyEqualImpTemplate(PYDataRange, BOOL, hoverLink);
PYPropertyEqualImpTemplate(PYDataRange, BOOL, realtime);
PYPropertyEqualImpTemplate(PYDataRange, NSMutableArray *, color);
PYPropertyEqualImpTemplate(PYDataRange, id, formatter);
PYPropertyEqualImpTemplate(PYDataRange, NSMutableArray *, text);
PYPropertyEqualImpTemplate(PYDataRange, PYTextStyle *, textStyle);

@end
