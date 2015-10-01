//
//  PYLineStyle.m
//  iOS-Echarts
//
//  Created by Pluto Y on 15/9/7.
//  Copyright (c) 2015年 pluto-y. All rights reserved.
//

#import "PYLineStyle.h"

#define LINE_STYLE_TYPE_SCOPE [NSArray arrayWithObjects:@"solid", @"dotted", @"dashed", @"curve", @"broken", nil]
@interface PYLineStyle()

@end

@implementation PYLineStyle

-(instancetype)init {
    self = [super init];
    if (self) {
        _type = @"solid";
//        _shadowColor = [[PYColor alloc] init];
        _shadowBlur = @(5);
        _shadowOffsetX = @(3);
        _shadowOffsetY = @(3);
    }
    return self;
}

-(void)setType:(NSString *)type {
    if (![LINE_STYLE_TYPE_SCOPE containsObject:type]) {
        NSLog(@"ERROR: LineStyle does not support the type --- %@", type);
        type = @"solid";
    }
    _type = type;
}


@end
