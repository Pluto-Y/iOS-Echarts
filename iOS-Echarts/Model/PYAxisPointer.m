//
//  PYAxisPointer.m
//  iOS-Echarts
//
//  Created by Pluto-Y on 15/9/15.
//  Copyright (c) 2015年 pluto-y. All rights reserved.
//

#import "PYAxisPointer.h"

PYAxisPointerType PYAxisPointerLine = @"line";
PYAxisPointerType PYAxisPointerCross = @"cross";
PYAxisPointerType PYAxisPointerShadow = @"shadow";
PYAxisPointerType PYAxisPointerNone = @"none";

static NSArray<PYAxisPointerType> *axisPointScope;
@interface PYAxisPointer()

@end


@implementation PYAxisPointer

+ (void)initialize
{
    if (self == [PYAxisPointer class]) {
        axisPointScope = @[PYAxisPointerLine, PYAxisPointerCross, PYAxisPointerShadow, PYAxisPointerNone];
    }
}

- (instancetype)init
{
    self = [super init];
    if (self) {
        _type = PYAxisPointerLine;
    }
    return self;
}

- (void)setType:(NSString *)type {
    if (![axisPointScope containsObject:type]) {
        NSLog(@"ERROR: AxisPoint does not support the type --- %@", type);
        _type = PYAxisPointerLine;
        return;
    }
    _type = [type copy];
}

@end
