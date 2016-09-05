//
//  PYTimeline.m
//  iOS-Echarts
//
//  Created by Pluto-Y on 15/10/4.
//  Copyright © 2015年 pluto-y. All rights reserved.
//

#import "PYTimeline.h"
#import "PYColor.h"
#import "PYTextStyle.h"
#import "PYLineStyle.h"

@implementation PYTimelineLabel

- (instancetype)init
{
    self = [super init];
    if (self) {
        _show = YES;
        _interval = @"auto";
        _rotate = @(0);
        _textStyle = [[PYTextStyle alloc] init];
        _textStyle.color = PYRGBA(3, 3, 3, 1);
    }
    return self;
}

PYInitializerImpTemplate(PYTimelineLabel);

PYPropertyEqualImpTemplate(PYTimelineLabel, BOOL, show);
PYPropertyEqualImpTemplate(PYTimelineLabel, id, interval);
PYPropertyEqualImpTemplate(PYTimelineLabel, NSNumber *, rotate);
PYPropertyEqualImpTemplate(PYTimelineLabel, id, formatter);
PYPropertyEqualImpTemplate(PYTimelineLabel, PYTextStyle *, textStyle);

@end

@implementation PYTimelineCheckpointStyle

- (instancetype)init
{
    self = [super init];
    if (self) {
        _symbol = @"auto";
        _symbolSize = @"auto";
        _borderWidth = @"auto";
        _label = [[PYTimelineLabel alloc] init];
        _label.show = NO;
    }
    return self;
}

PYInitializerImpTemplate(PYTimelineCheckpointStyle);

PYPropertyEqualImpTemplate(PYTimelineCheckpointStyle, NSString *, symbol);
PYPropertyEqualImpTemplate(PYTimelineCheckpointStyle, id, symbolSize);
PYPropertyEqualImpTemplate(PYTimelineCheckpointStyle, PYColor *, color);
PYPropertyEqualImpTemplate(PYTimelineCheckpointStyle, PYColor *, borderColor);
PYPropertyEqualImpTemplate(PYTimelineCheckpointStyle, id, borderWidth);
PYPropertyEqualImpTemplate(PYTimelineCheckpointStyle, PYTimelineLabel *, label);

@end

@implementation PYTimelineControlStyle

- (instancetype)init
{
    self = [super init];
    if (self) {
        _itemSize = @(15);
        _itemGap = @(5);
        _normal = @{@"color" : @"#333"};
        _emphasis = @{@"color" : @"#1e90ff"};
    }
    return self;
}

PYInitializerImpTemplate(PYTimelineControlStyle);

PYPropertyEqualImpTemplate(PYTimelineControlStyle, NSNumber *, itemSize);
PYPropertyEqualImpTemplate(PYTimelineControlStyle, NSNumber *, itemGap);
PYPropertyEqualImpTemplate(PYTimelineControlStyle, NSDictionary *, normal);
PYPropertyEqualImpTemplate(PYTimelineControlStyle, NSDictionary *, emphasis);

@end

PYTimelineType const PYTimelineTypeTime = @"time";
PYTimelineType const PYTimelineTypeNumber = @"number";

static NSArray<PYTimelineType> *timelineTypeScope;
@implementation PYTimeline

+ (void)initialize
{
    if (self == [PYTimeline class]) {
        timelineTypeScope = @[PYTimelineTypeTime, PYTimelineTypeNumber];
    }
}

- (instancetype)init
{
    self = [super init];
    if (self) {
        _show = YES;
        _zlevel = @(0);
        _z = @(4);
        _type = PYTimelineTypeTime;
        _notMerge = NO;
        _realtime = YES;
        _x = @(80);
        _x2 = @(80);
        _y2 = @(0);
        _height = @(50);
        _backgroundColor = PYRGBA(0, 0, 0, 0);
        _borderWidth = @(0);
        _borderColor = PYRGBA(12, 12, 12, 1);
        _padding = @(5);
        _controlPosition = PYPositionLeft;
        _autoPlay = NO;
        _loop = YES;
        _playInterval = @(2000);
        _lineStyle = [[PYLineStyle alloc] init];
        _lineStyle.color = PYRGBA(6, 6, 6, 1);
        _lineStyle.width = @(1);
        _lineStyle.type = PYLineStyleTypeDashed;
        _label = [[PYTimelineLabel alloc] init];
        _checkpointStyle = [[PYTimelineCheckpointStyle alloc] init];
        _controlStyle = [[PYTimelineControlStyle alloc] init];
        _symbol = PYSymbolEmptyDiamond;
        _symbolSize = @(4);
        _currentIndex = @(0);
    }
    return self;
}

- (void)setType:(PYTimelineType)type {
    if (![timelineTypeScope containsObject:type]) {
        NSLog(@"ERROR: Timeline does not support the type --- %@", type);
        _type = type;
        return;
    }
    _type = [type copy];
}

PYInitializerImpTemplate(PYTimeline);

PYPropertyEqualImpTemplate(PYTimeline, BOOL, show);
PYPropertyEqualImpTemplate(PYTimeline, NSNumber *, zlevel);
PYPropertyEqualImpTemplate(PYTimeline, NSNumber *, z);
PYPropertyEqualImpTemplate(PYTimeline, PYTimelineType, type);
PYPropertyEqualImpTemplate(PYTimeline, BOOL, notMerge);
PYPropertyEqualImpTemplate(PYTimeline, BOOL, realtime);
PYPropertyEqualImpTemplate(PYTimeline, id, x);
PYPropertyEqualImpTemplate(PYTimeline, id, y);
PYPropertyEqualImpTemplate(PYTimeline, id, x2);
PYPropertyEqualImpTemplate(PYTimeline, id, y2);
PYPropertyEqualImpTemplate(PYTimeline, NSNumber *, width);
PYPropertyEqualImpTemplate(PYTimeline, NSNumber *, height);
PYPropertyEqualImpTemplate(PYTimeline, PYColor *, backgroundColor);
PYPropertyEqualImpTemplate(PYTimeline, NSNumber *, borderWidth);
PYPropertyEqualImpTemplate(PYTimeline, PYColor *, borderColor);
PYPropertyEqualImpTemplate(PYTimeline, id, padding);
PYPropertyEqualImpTemplate(PYTimeline, NSString *, controlPosition);
PYPropertyEqualImpTemplate(PYTimeline, BOOL, autoPlay);
PYPropertyEqualImpTemplate(PYTimeline, BOOL, loop);
PYPropertyEqualImpTemplate(PYTimeline, NSNumber *, playInterval);
PYPropertyEqualImpTemplate(PYTimeline, PYLineStyle *, lineStyle);
PYPropertyEqualImpTemplate(PYTimeline, PYTimelineLabel *, label);
PYPropertyEqualImpTemplate(PYTimeline, PYTimelineCheckpointStyle *, checkpointStyle);
PYPropertyEqualImpTemplate(PYTimeline, PYTimelineControlStyle *, controlStyle);
PYPropertyEqualImpTemplate(PYTimeline, PYSymbol, symbol);
PYPropertyEqualImpTemplate(PYTimeline, NSNumber *, symbolSize);
PYPropertyEqualImpTemplate(PYTimeline, NSNumber *, currentIndex);
PYPropertyEqualImpTemplate(PYTimeline, NSMutableArray *, data);

PYAddMethodImpTemplate(PYTimeline, NSObject, Data, data);

@end
