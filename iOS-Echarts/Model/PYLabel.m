//
//  PYLabel.m
//  iOS-Echarts
//
//  Created by Pluto Y on 15/9/8.
//  Copyright (c) 2015年 pluto-y. All rights reserved.
//

#import "PYLabel.h"

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
