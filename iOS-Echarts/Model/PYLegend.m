//
//  PYLegend.m
//  iOS-Echarts
//
//  Created by Pluto Y on 15/9/8.
//  Copyright (c) 2015年 pluto-y. All rights reserved.
//

#import "PYLegend.h"
#import "PYColor.h"

@implementation PYLegend

- (instancetype)init
{
    self = [super init];
    if (self) {
        _show = YES;
        _zlevel = 0;
        _z = @(4);
        _orient = @"horizontal";
        _x = @"center";
        _y = @"top";
//        _backgroundColor = PYRGBA(0, 0, 0, 0);
        _borderColor = @"#ccc";
        _borderWidth = 0;
        _itemGap = @(10);
        _itemWidth = @(20);
        _itemHeight = @(14);
        _textStyle = [[PYTextStyle alloc] init];
        _selectedMode = @(YES);
        _textStyle.color = PYRGBA(3, 3, 3, 1);
        _data = @[];
    }
    return self;
}

@end
