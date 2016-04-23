//
//  PYGaugeSeries.m
//  iOS-Echarts
//
//  Created by Pluto Y on 4/24/16.
//  Copyright © 2016 Pluto-y. All rights reserved.
//

#import "PYGaugeSeries.h"
#import "PYTextStyle.h"
#import "PYColor.h"
#import "PYAxisLine.h"
#import "PYAxisTick.h"
#import "PYAxisLabel.h"

@implementation PYGaugeDetail

- (instancetype)init {
    self = [super init];
    if (self) {
        _show = YES;
        _backgroundColor = PYRGBA(0, 0, 0, 0);
        _borderWidth = 0;
        _borderColor = PYRGBA(12, 12, 12, 1);
        _width = @(100);
        _height = @(40);
        _offsetCenter = @[@"0", @"40%"];
        _textStyle = [[PYTextStyle alloc] init];
        _textStyle.color = @"auto";
        _textStyle.fontSize = @(30);
    }
    return self;
}

@end

@implementation PYGaugePointer

- (instancetype)init {
    self = [super init];
    if (self) {
        _length = @"80%";
        _width = @(8);
        _color = @"auto";
    }
    return self;
}

@end

@implementation PYGaugeTitle

- (instancetype)init {
    self = [super init];
    if (self) {
        _show = YES;
        _offsetCenter = @[@"0%", @"-40%"];
        _textStyle = [[PYTextStyle alloc] init];
        _textStyle.color = PYRGBA(3, 3, 3, 1);
        _textStyle.fontSize = @(15);
    }
    return self;
}

@end

@implementation PYGaugeSeries

- (instancetype)init {
    self = [super init];
    if (self) {
        _center = @[@"50%", @"50%"];
        _radius = @[@"0", @"75%"];
        _startAngle = @(225);
        _endAngle = @(-45);
        _min = @0;
        _max = @(100);
        _splitNumber = @(10);
        _legendHoverLink = YES;
    }
    return self;
}

@end
