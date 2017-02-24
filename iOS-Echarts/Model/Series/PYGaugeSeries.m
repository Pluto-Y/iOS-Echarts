//
//  PYGaugeSeries.m
//  iOS-Echarts
//
//  Created by Pluto Y on 4/24/16.
//  Copyright © 2016 Pluto-y. All rights reserved.
//

#import "PYGaugeSeries.h"
#import "PYColor.h"
#import "PYTextStyle.h"
#import "PYAxisLine.h"
#import "PYAxisLabel.h"
#import "PYAxisTick.h"
#import "PYLineStyle.h"

@implementation PYGaugeSplitLine

- (instancetype)init
{
    self = [super init];
    if (self) {
        _show = YES;
        _length = @30;
        _lineStyle = [[PYLineStyle alloc] init];
        _lineStyle.color = [PYColor colorWithHexString:@"#eee"];
        _lineStyle.width = @2;
        _lineStyle.type = PYLineStyleTypeSolid;
    }
    return self;
}

PYInitializerImpTemplate(PYGaugeSplitLine);

PYPropertyEqualImpTemplate(PYGaugeSplitLine, BOOL, show);
PYPropertyEqualImpTemplate(PYGaugeSplitLine, NSNumber *, length);
PYPropertyEqualImpTemplate(PYGaugeSplitLine, PYLineStyle *, lineStyle);

@end

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

PYInitializerImpTemplate(PYGaugeDetail);

PYPropertyEqualImpTemplate(PYGaugeDetail, BOOL, show);
PYPropertyEqualImpTemplate(PYGaugeDetail, PYColor *, backgroundColor);
PYPropertyEqualImpTemplate(PYGaugeDetail, NSNumber *, borderWidth);
PYPropertyEqualImpTemplate(PYGaugeDetail, PYColor *, borderColor);
PYPropertyEqualImpTemplate(PYGaugeDetail, NSNumber *, width);
PYPropertyEqualImpTemplate(PYGaugeDetail, NSNumber *, height);
PYPropertyEqualImpTemplate(PYGaugeDetail, NSArray *, offsetCenter);
PYPropertyEqualImpTemplate(PYGaugeDetail, id, formatter);
PYPropertyEqualImpTemplate(PYGaugeDetail, PYTextStyle *, textStyle);
PYPropertyEqualImpTemplate(PYGaugeDetail, id, shadowColor);
PYPropertyEqualImpTemplate(PYGaugeDetail, NSNumber *, shadowBlur);

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

PYInitializerImpTemplate(PYGaugePointer);

PYPropertyEqualImpTemplate(PYGaugePointer, NSString *, length);
PYPropertyEqualImpTemplate(PYGaugePointer, NSNumber *, width);
PYPropertyEqualImpTemplate(PYGaugePointer, id, color);
PYPropertyEqualImpTemplate(PYGaugePointer, id, shadowColor);
PYPropertyEqualImpTemplate(PYGaugePointer, NSNumber *, shadowBlur);

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

PYInitializerImpTemplate(PYGaugeTitle);

PYPropertyEqualImpTemplate(PYGaugeTitle, id, color);
PYPropertyEqualImpTemplate(PYGaugeTitle, id, shadowColor);
PYPropertyEqualImpTemplate(PYGaugeTitle, NSNumber *, shadowBlur);
PYPropertyEqualImpTemplate(PYGaugeTitle, BOOL, show);
PYPropertyEqualImpTemplate(PYGaugeTitle, NSArray *, offsetCenter);
PYPropertyEqualImpTemplate(PYGaugeTitle, PYTextStyle *, textStyle);

@end

@implementation PYGaugeSeries

- (instancetype)init {
    self = [super init];
    if (self) {
        self.type = PYSeriesTypeGauge;
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

PYInitializerImpTemplate(PYGaugeSeries);

PYPropertyEqualImpTemplate(PYGaugeSeries, NSArray *, center);
PYPropertyEqualImpTemplate(PYGaugeSeries, id, radius);
PYPropertyEqualImpTemplate(PYGaugeSeries, NSNumber *, startAngle);
PYPropertyEqualImpTemplate(PYGaugeSeries, NSNumber *, endAngle);
PYPropertyEqualImpTemplate(PYGaugeSeries, NSNumber *, min);
PYPropertyEqualImpTemplate(PYGaugeSeries, NSNumber *, max);
PYPropertyEqualImpTemplate(PYGaugeSeries, NSNumber *, splitNumber);
PYPropertyEqualImpTemplate(PYGaugeSeries, PYAxisLine *, axisLine);
PYPropertyEqualImpTemplate(PYGaugeSeries, PYAxisTick *, axisTick);
PYPropertyEqualImpTemplate(PYGaugeSeries, PYAxisLabel *, axisLabel);
PYPropertyEqualImpTemplate(PYGaugeSeries, PYGaugeSplitLine *, splitLine);
PYPropertyEqualImpTemplate(PYGaugeSeries, PYGaugePointer *, pointer);
PYPropertyEqualImpTemplate(PYGaugeSeries, PYGaugeTitle *, title);
PYPropertyEqualImpTemplate(PYGaugeSeries, PYGaugeDetail *, detail);
PYPropertyEqualImpTemplate(PYGaugeSeries, BOOL, legendHoverLink);;

@end
