//
//  PYNodeStyle.m
//  iOS-Echarts
//
//  Created by Pluto Y on 7/26/16.
//  Copyright © 2016 pluto-y. All rights reserved.
//

#import "PYNodeStyle.h"
#import "PYColor.h"

@implementation PYNodeStyle

- (instancetype)init
{
    self = [super init];
    if (self) {
        _color = PYRGBA(240, 140, 46, 1.0);
        _borderColor = PYRGBA(81, 130, 171, 1.0);
        _borderWidth = @1;
    }
    return self;
}

PYInitializerImpTemplate(PYNodeStyle);

PYPropertyEqualImpTemplate(PYNodeStyle,PYColor *, color);
PYPropertyEqualImpTemplate(PYNodeStyle,PYColor *, borderColor);
PYPropertyEqualImpTemplate(PYNodeStyle,NSNumber *, borderWidth);

@end
