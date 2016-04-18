//
//  PYAxis.m
//  iOS-Echarts
//
//  Created by Pluto Y on 15/9/7.
//  Copyright (c) 2015年 pluto-y. All rights reserved.
//

#import "PYAxis.h"

#define AXIS_TYPE_SCOPE [NSArray arrayWithObjects:@"category", @"value", @"time", @"log", nil]
@interface PYAxis()

@end

@implementation PYAxis

-(instancetype)init {
    self = [super init];
    if (self) {
        _type = @"category";
        _show = YES;
        _zlevel = @(0);
        _z = @(0);
        _position = @"'bottom'|'left'";
        _name = @"";
        _nameLocation = @"end";
        _scale = false;
        _data = [[NSArray alloc] init];
        _axisLine = [[PYAxisLine alloc] init];
        _axisLabel = [[PYAxisLabel alloc] init];
        _splitLine = [[PYSplitLine alloc] init];
    }
    return self;
}

-(void)setType:(NSString *)type {
    if (![AXIS_TYPE_SCOPE containsObject:type]) {
        NSLog(@"ERROR: Axis does not support the type --- %@", type);
        type = @"category";
    }
    _type = type;
}

@end
