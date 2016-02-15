//
//  Polar.m
//  iOS-Echarts
//
//  Created by Pluto Y on 15/12/21.
//  Copyright © 2015年 pluto-y. All rights reserved.
//

#import "PYPolar.h"

#define POLAR_TYPE_SCOPE [NSArray arrayWithObjects:@"polygon", @"circle", nil]

@implementation PYPolar

- (instancetype)init
{
    self = [super init];
    if (self) {
        _center = [[NSMutableArray alloc] initWithArray:@[@"50%", @"50%"]];
        _radius = @(0.75);
        _startAngle = @(90);
        _spliteNumber = @(5);
        _name = @{@"show":@(YES), @"formatter":@"null", @"textStyle":@{@"color":@"#333"}};
        _scale = NO;
        _type = @"polygon";
        
    }
    return self;
}

-(void)setStartAngle:(NSNumber *)startAngle {
    if (startAngle.floatValue > 180) {
        NSLog(@"ERROR: Start Angle is out of limit ---- %.0f", startAngle.floatValue);
        _startAngle = @(180);
    } else if (startAngle.floatValue < - 180) {
        NSLog(@"ERROR: Start Angle is out of limit ---- %.0f", startAngle.floatValue);
        _startAngle = @(-180);
    } else {
        _startAngle = startAngle;
    }
}

-(void)setType:(NSString *)type {
    if (![POLAR_TYPE_SCOPE containsObject:type]) {
        NSLog(@"ERROR: Polar does not support the type --- %@", type);
        type = @"polygon";
    }
    _type = type;
}

@end
