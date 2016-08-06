//
//  PYItemStyleProp.m
//  iOS-Echarts
//
//  Created by Pluto Y on 15/9/8.
//  Copyright (c) 2015年 pluto-y. All rights reserved.
//

#import "PYItemStyleProp.h"
#import "PYColor.h"
#import "PYLineStyle.h"
#import "PYAreaStyle.h"

@implementation PYLabelLine

- (instancetype)init
{
    self = [super init];
    if (self) {
        _show = YES;
        _length = @(40);
        _lineStyle = [[PYLineStyle alloc] init];
    }
    return self;
}

@end

@implementation PYLabel

- (instancetype)init
{
    self = [super init];
    if (self) {
        _show = YES;
        _rotate = NO;
        _distance = @(10);
    }
    return self;
}

@end

@implementation PYItemStyleProp

- (instancetype)init
{
    self = [super init];
    if (self) {
        _barBorderColor = PYRGBA(0xf, 0xf, 0xf, 1);
        _label = [[PYLabel alloc] init];
        _label.show = YES;
        _label.position = @"outer";
        _labelLine = [[PYLabelLine alloc] init];
        _labelLine.show = YES;
    }
    return self;
}

@end
