//
//  PYChordStyle.m
//  iOS-Echarts
//
//  Created by Pluto Y on 8/7/16.
//  Copyright © 2016 pluto-y. All rights reserved.
//

#import "PYChordStyle.h"

@implementation PYChordStyle

PYInitializerImpTemplate(PYChordStyle);

PYPropertyEqualImpTemplate(PYChordStyle, NSNumber *, width);
PYPropertyEqualImpTemplate(PYChordStyle, PYColor *, color);
PYPropertyEqualImpTemplate(PYChordStyle, NSString *, borderWidth);
PYPropertyEqualImpTemplate(PYChordStyle, PYColor *, borderColor);

@end
