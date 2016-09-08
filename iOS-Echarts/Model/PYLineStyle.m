//
//  PYLineStyle.m
//  iOS-Echarts
//
//  Created by Pluto Y on 15/9/7.
//  Copyright (c) 2015年 pluto-y. All rights reserved.
//

#import "PYLineStyle.h"

PYLineStyleType const PYLineStyleTypeSolid = @"solid";
PYLineStyleType const PYLineStyleTypeDotted = @"dotted";
PYLineStyleType const PYLineStyleTypeDashed = @"dashed";
PYLineStyleType const PYLineStyleTypeCurve = @"curve";
PYLineStyleType const PYLineStyleTypeBroken = @"broken";

static NSArray<PYLineStyleType> *lineStyleTypeScope;
@interface PYLineStyle()

@end

@implementation PYLineStyle

+ (void)initialize
{
    if (self == [PYLineStyle class]) {
        lineStyleTypeScope = @[PYLineStyleTypeSolid, PYLineStyleTypeDotted, PYLineStyleTypeDashed, PYLineStyleTypeCurve, PYLineStyleTypeBroken];
    }
}

-(instancetype)init {
    self = [super init];
    if (self) {
        _type = PYLineStyleTypeSolid;
//        _shadowColor = [[PYColor alloc] init];
        _shadowBlur = @(5);
        _shadowOffsetX = @(3);
        _shadowOffsetY = @(3);
    }
    return self;
}

- (void)setType:(NSString *)type {
    if (![lineStyleTypeScope containsObject:type]) {
        NSLog(@"ERROR: LineStyle does not support the type --- %@", type);
        type = PYLineStyleTypeSolid;
        return;
    }
    _type = [type copy];
}

PYInitializerImpTemplate(PYLineStyle);

PYPropertyEqualImpTemplate(PYLineStyle, id, color);
PYPropertyEqualImpTemplate(PYLineStyle, id, color0);
PYPropertyEqualImpTemplate(PYLineStyle, PYLineStyleType, type);
PYPropertyEqualImpTemplate(PYLineStyle, NSNumber *, width);
PYPropertyEqualImpTemplate(PYLineStyle, PYColor *, shadowColor);
PYPropertyEqualImpTemplate(PYLineStyle, NSNumber *, shadowBlur);
PYPropertyEqualImpTemplate(PYLineStyle, NSNumber *, shadowOffsetX);
PYPropertyEqualImpTemplate(PYLineStyle, NSNumber *, shadowOffsetY);

@end
