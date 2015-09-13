//
//  PYTextStyle.m
//  iOS-Echarts
//
//  Created by Pluto Y on 15/9/8.
//  Copyright (c) 2015年 pluto-y. All rights reserved.
//

#import "PYTextStyle.h"

@implementation PYTextStyle

- (instancetype)init
{
    self = [super init];
    if (self) {
        _decoration = @"none";
        _fontFamily = @"Arial, Verdana, sans-serif";
        _fontSize = @(12);
        _fontStyle = @"normal";
        _fontWeight = @"normal";
    }
    return self;
}

/**
 *  用number类型来设置fontWeight
 *
 *  @param number 字体粗细
 */
-(void)setFontWeightByNumber:(NSNumber *)number {
    _fontWeight = [NSString stringWithFormat:@"%d", [number intValue]];
}

@end
