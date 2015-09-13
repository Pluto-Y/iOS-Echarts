//
//  PYLineStyle.m
//  iOS-Echarts
//
//  Created by Pluto Y on 15/9/7.
//  Copyright (c) 2015年 pluto-y. All rights reserved.
//

#import "PYLineStyle.h"

@interface PYLineStyle() {
    PYLineStyleType lineStyleType;
}

@end

@implementation PYLineStyle

-(instancetype)init {
    self = [super init];
    if (self) {
        lineStyleType = PYLineStyleTypeSolid;
//        _shadowColor = [[PYColor alloc] init];
        _shadowBlur = @(5);
        _shadowOffsetX = @(3);
        _shadowOffsetY = @(3);
    }
    return self;
}

/**
 *  设置线条类型
 *
 *  @param pyLineStyleType 线条类型
 */
-(void)setLineStyleType:(PYLineStyleType)pyLineStyleType {
    lineStyleType = pyLineStyleType;
}

@end
