//
//  Polar.m
//  iOS-Echarts
//
//  Created by Pluto Y on 15/12/21.
//  Copyright © 2015年 pluto-y. All rights reserved.
//

#import "PYPolar.h"
#import "PYLineStyle.h"
#import "PYAxisLabel.h"
#import "PYAreaStyle.h"

PYPolarType const PYPolarTypePolygon = @"polygon";
PYPolarType const PYPolarTypeCircle = @"circle";

static NSArray<PYPolarType> *polarTypeScope;
@implementation PYPolar

+ (void)initialize
{
    if (self == [PYPolar class]) {
        polarTypeScope = @[PYPolarTypePolygon, PYPolarTypeCircle];
    }
}

- (instancetype)init
{
    self = [super init];
    if (self) {
        _center = [[NSMutableArray alloc] initWithArray:@[@"50%", @"50%"]];
        _startAngle = @(90);
        _splitNumber = @(5);
        _name = @{@"show":@(YES), @"textStyle":@{@"color":@"#333"}};
        _scale = NO;
        _type = PYPolarTypePolygon;
        
    }
    return self;
}

- (void)setStartAngle:(NSNumber *)startAngle {
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
    if (![polarTypeScope containsObject:type]) {
        NSLog(@"ERROR: Polar does not support the type --- %@", type);
        _type = PYPolarTypePolygon;
        return;
    }
    _type = [type copy];
}

PYInitializerImpTemplate(PYPolar);

PYPropertyEqualImpTemplate(PYPolar, NSNumber *, zlevel);
PYPropertyEqualImpTemplate(PYPolar, NSNumber *, z);
PYPropertyEqualImpTemplate(PYPolar, NSMutableArray *, center);
PYPropertyEqualImpTemplate(PYPolar, id, radius);
PYPropertyEqualImpTemplate(PYPolar, NSNumber *, startAngle);
PYPropertyEqualImpTemplate(PYPolar, NSNumber *, splitNumber);
PYPropertyEqualImpTemplate(PYPolar, id, name);
PYPropertyEqualImpTemplate(PYPolar, NSMutableArray *, boundaryGap);
PYPropertyEqualImpTemplate(PYPolar, BOOL, scale);
PYPropertyEqualImpTemplate(PYPolar, PYLineStyle *, axisLine);
PYPropertyEqualImpTemplate(PYPolar, PYAxisLabel *, axisLabel);
PYPropertyEqualImpTemplate(PYPolar, PYLineStyle *, splitLine);
PYPropertyEqualImpTemplate(PYPolar, PYAreaStyle *, splitArea);
PYPropertyEqualImpTemplate(PYPolar, NSMutableArray *, indicator);

@end
