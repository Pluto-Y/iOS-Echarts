//
//  PYAxisPointer.m
//  iOS-Echarts
//
//  Created by Pluto-Y on 15/9/15.
//  Copyright (c) 2015年 pluto-y. All rights reserved.
//

#import "PYAxisPointer.h"
#import "PYLineStyle.h"
#import "PYAreaStyle.h"

PYAxisPointerType PYAxisPointerTypeLine = @"line";
PYAxisPointerType PYAxisPointerTypeCross = @"cross";
PYAxisPointerType PYAxisPointerTypeShadow = @"shadow";
PYAxisPointerType PYAxisPointerTypeNone = @"none";

static NSArray<PYAxisPointerType> *axisPointScope;
@interface PYAxisPointer()

@end


@implementation PYAxisPointer

+ (void)initialize
{
    if (self == [PYAxisPointer class]) {
        axisPointScope = @[PYAxisPointerTypeLine, PYAxisPointerTypeCross, PYAxisPointerTypeShadow, PYAxisPointerTypeNone];
    }
}

- (instancetype)init
{
    self = [super init];
    if (self) {
        _type = PYAxisPointerTypeLine;
    }
    return self;
}

- (void)setType:(NSString *)type {
    if (![axisPointScope containsObject:type]) {
        NSLog(@"ERROR: AxisPoint does not support the type --- %@", type);
        _type = PYAxisPointerTypeLine;
        return;
    }
    _type = [type copy];
}

PYInitializerImpTemplate(PYAxisPointer);

PYPropertyEqualImpTemplate(PYAxisPointer, BOOL, show);
PYPropertyEqualImpTemplate(PYAxisPointer, NSString *, type);
PYPropertyEqualImpTemplate(PYAxisPointer, PYLineStyle *, lineStyle);
PYPropertyEqualImpTemplate(PYAxisPointer, PYLineStyle *, crossStyle);
PYPropertyEqualImpTemplate(PYAxisPointer, PYAreaStyle *, shadowStyle);

@end
