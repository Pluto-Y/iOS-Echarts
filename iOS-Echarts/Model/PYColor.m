//
//  PYColor.m
//  iOS-Echarts
//
//  Created by Pluto Y on 15/9/8.
//  Copyright (c) 2015年 pluto-y. All rights reserved.
//

#import "PYColor.h"

@interface PYColor() {
    UIColor *color;
    NSString *colorStr;
}

@end

@implementation PYColor

-(instancetype)init {
    self = [super init];
    if (self) {
        color = [UIColor clearColor];
        colorStr = @"";
    }
    return self;
}

-(instancetype)initWithColor:(UIColor *) uiColor {
    self = [super init];
    if (self) {
        color = uiColor;
        colorStr = @"";
    }
    return self;
}

/**
 *  设置颜色
 *
 *  @param uiColor 颜色
 */
-(void)setColor:(UIColor *) uiColor {
    color = uiColor;
}

-(NSString *)description {
    CGFloat R, G, B, A = 0.0;
    int red = 0, green = 0, blue = 0;
    
    CGColorRef colorRef = [color CGColor];

    int numComponents = (int)CGColorGetNumberOfComponents(colorRef);
    if (numComponents == 4)
    {
        const CGFloat *components = CGColorGetComponents(colorRef);
        R = components[0];
        red = (int)(R * 255);
        G = components[1];
        green = (int)(G * 255);
        B = components[2];
        blue = (int)(B * 255);
        A = components[3];
    }
    return [NSString stringWithFormat:@"rgba(%d,%d,%d,%.2f)", red, green, blue, A];
}

@end
