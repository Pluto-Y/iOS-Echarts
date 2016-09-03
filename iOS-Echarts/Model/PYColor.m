//
//  PYColor.m
//  iOS-Echarts
//
//  Created by Pluto Y on 15/9/8.
//  Copyright (c) 2015年 pluto-y. All rights reserved.
//

#import "PYColor.h"

@interface PYColor() {
    PY_COLOR *color;
    NSString *colorStr;
}

@end

@implementation PYColor

- (instancetype)init {
    self = [super init];
    if (self) {
        color = [PY_COLOR clearColor];
        colorStr = @"";
    }
    return self;
}

- (instancetype)initWithColor:(PY_COLOR *)pyColor {
    self = [super init];
    if (self) {
        color = pyColor;
        colorStr = @"";
    }
    return self;
}

+ (PYColor *)colorWithHexString:(NSString *)hexString {
    NSString *colorString = [[hexString stringByReplacingOccurrencesOfString: @"#" withString: @""] uppercaseString];
    CGFloat alpha, red, blue, green;
    switch ([colorString length]) {
        case 3: // #RGB
            alpha = 1.0f;
            red   = [self colorComponentFrom: colorString start: 0 length: 1];
            green = [self colorComponentFrom: colorString start: 1 length: 1];
            blue  = [self colorComponentFrom: colorString start: 2 length: 1];
            break;
        case 4: // #ARGB
            alpha = [self colorComponentFrom: colorString start: 0 length: 1];
            red   = [self colorComponentFrom: colorString start: 1 length: 1];
            green = [self colorComponentFrom: colorString start: 2 length: 1];
            blue  = [self colorComponentFrom: colorString start: 3 length: 1];
            break;
        case 6: // #RRGGBB
            alpha = 1.0f;
            red   = [self colorComponentFrom: colorString start: 0 length: 2];
            green = [self colorComponentFrom: colorString start: 2 length: 2];
            blue  = [self colorComponentFrom: colorString start: 4 length: 2];
            break;
        case 8: // #AARRGGBB
            alpha = [self colorComponentFrom: colorString start: 0 length: 2];
            red   = [self colorComponentFrom: colorString start: 2 length: 2];
            green = [self colorComponentFrom: colorString start: 4 length: 2];
            blue  = [self colorComponentFrom: colorString start: 6 length: 2];
            break;
        default:
            [NSException raise:@"Invalid color value" format: @"Color value %@ is invalid.  It should be a hex value of the form #RBG, #ARGB, #RRGGBB, or #AARRGGBB", hexString];
            break;
    }
    return [[PYColor alloc] initWithColor:[PY_COLOR colorWithRed: red green: green blue: blue alpha: alpha]];
}

+ (CGFloat)colorComponentFrom:(NSString *)string start:(NSUInteger)start length:(NSUInteger)length {
    NSString *substring = [string substringWithRange: NSMakeRange(start, length)];
    NSString *fullHex = length == 2 ? substring : [NSString stringWithFormat: @"%@%@", substring, substring];
    unsigned hexComponent;
    [[NSScanner scannerWithString: fullHex] scanHexInt: &hexComponent];
    return hexComponent / 255.0;
}


/**
 *  设置颜色
 *
 *  @param uiColor 颜色
 */
- (void)setColor:(PY_COLOR *) pyColor {
    color = pyColor;
}

- (NSString *)description {
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
