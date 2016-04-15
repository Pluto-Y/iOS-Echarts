//
//  PYLoadingOption.m
//  iOS-Echarts
//
//  Created by Pluto Y on 16/4/15.
//  Copyright © 2016年 pluto-y. All rights reserved.
//

#import "PYLoadingOption.h"

@implementation PYLoadingOption

- (instancetype)init
{
    self = [super init];
    if (self) {
        _text = @"数据读取中...";
        _x = @"center";
        _y = @"center";
        _effect = @"spin";
    }
    return self;
}

@end
