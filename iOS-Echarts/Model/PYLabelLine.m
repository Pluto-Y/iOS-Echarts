//
//  PYLabelLine.m
//  iOS-Echarts
//
//  Created by Pluto Y on 15/9/8.
//  Copyright (c) 2015年 pluto-y. All rights reserved.
//

#import "PYLabelLine.h"

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
