//
//  PYSplitLine.m
//  iOS-Echarts
//
//  Created by Pluto Y on 15/9/8.
//  Copyright (c) 2015年 pluto-y. All rights reserved.
//

#import "PYSplitLine.h"

@implementation PYSplitLine

- (instancetype)init
{
    self = [super init];
    if (self) {
        _show = YES;
        _onGap = NO;
        _lineStyle = [[PYLineStyle alloc] init];
    }
    return self;
}

@end
