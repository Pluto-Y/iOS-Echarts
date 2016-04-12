//
//  PYAxisLabel.m
//  iOS-Echarts
//
//  Created by Pluto Y on 15/9/7.
//  Copyright (c) 2015年 pluto-y. All rights reserved.
//

#import "PYAxisLabel.h"

@implementation PYAxisLabel

-(instancetype)init {
    self = [super init];
    if (self) {
        _show = YES;
        _interval = @"auto";
        _rotate = @0;
        _margin = @8;
        _clickable = false;
    }
    return self;
}

@end
