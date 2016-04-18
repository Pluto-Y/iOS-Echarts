//
//  PYNoDataLoadingOption.m
//  iOS-Echarts
//
//  Created by Pluto Y on 4/18/16.
//  Copyright © 2016 pluto-y. All rights reserved.
//

#import "PYNoDataLoadingOption.h"
#import "PYTextStyle.h"

@implementation PYNoDataLoadingOption

- (instancetype)init
{
    self = [super init];
    if (self) {
        _text = @"暂无数据";
        _x = @"center";
        _y = @"center";
        _effect = @"bubble";
    }
    return self;
}

@end
