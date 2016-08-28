//
//  PYLinkStyle.m
//  iOS-Echarts
//
//  Created by Pluto Y on 7/26/16.
//  Copyright © 2016 pluto-y. All rights reserved.
//

#import "PYLinkStyle.h"
#import "PYColor.h"

PYLinkStyleType const PYLinkStyleTypeLine = @"line";
PYLinkStyleType const PYLinkStyleTypeCurve = @"curve";

static NSArray<PYLinkStyleType> *linkStyleTypeScope;
@implementation PYLinkStyle

+ (void)initialize
{
    if (self == [PYLinkStyle class]) {
        linkStyleTypeScope = @[PYLinkStyleTypeLine, PYLinkStyleTypeCurve];
    }
}

- (instancetype)init
{
    self = [super init];
    if (self) {
        _type = PYLinkStyleTypeLine;
        _color = PYRGBA(81, 150, 171, 1.0);
        _width = @1;
    }
    return self;
}

- (void)setType:(PYLinkStyleType)type {
    if (![linkStyleTypeScope containsObject:type]) {
        NSLog(@"ERROR: LinkStyle does not support the type --- %@", type);
        _type = PYLinkStyleTypeLine;
        return;
    }
    _type = [type copy];
}

PYInitializerImpTemplate(PYLinkStyle);

PYPropertyEqualImpTemplate(PYLinkStyle, PYLinkStyleType, type);
PYPropertyEqualImpTemplate(PYLinkStyle, PYColor *, color);
PYPropertyEqualImpTemplate(PYLinkStyle, NSNumber *, width);

@end
