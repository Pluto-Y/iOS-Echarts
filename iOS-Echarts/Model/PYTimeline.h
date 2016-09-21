//
//  PYTimeline.h
//  iOS-Echarts
//
//  Created by Pluto-Y on 15/10/4.
//  Copyright © 2015年 pluto-y. All rights reserved.
//

#import <Foundation/Foundation.h>

@class PYColor, PYTextStyle, PYLineStyle;

@interface PYTimelineLabel : NSObject

@property (assign, nonatomic) BOOL show;
@property (strong, nonatomic) id interval;
@property (strong, nonatomic) NSNumber *rotate;
@property (strong, nonatomic) id formatter;
@property (strong, nonatomic) PYTextStyle *textStyle;

PYInitializerTemplate(PYTimelineLabel, timelineLabel);

PYPropertyEqualTemplate(PYTimelineLabel, BOOL, show);
PYPropertyEqualTemplate(PYTimelineLabel, id, interval);
PYPropertyEqualTemplate(PYTimelineLabel, NSNumber *, rotate);
PYPropertyEqualTemplate(PYTimelineLabel, id, formatter);
PYPropertyEqualTemplate(PYTimelineLabel, PYTextStyle *, textStyle);

@end

@interface PYTimelineCheckpointStyle : NSObject

@property (strong, nonatomic) NSString *symbol;
@property (strong, nonatomic) id symbolSize;
@property (strong, nonatomic) PYColor *color;
@property (strong, nonatomic) PYColor *borderColor;
@property (strong, nonatomic) id borderWidth;
@property (strong, nonatomic) PYTimelineLabel *label;

PYInitializerTemplate(PYTimelineCheckpointStyle, checkpointStyle);

PYPropertyEqualTemplate(PYTimelineCheckpointStyle, NSString *, symbol);
PYPropertyEqualTemplate(PYTimelineCheckpointStyle, id, symbolSize);
PYPropertyEqualTemplate(PYTimelineCheckpointStyle, PYColor *, color);
PYPropertyEqualTemplate(PYTimelineCheckpointStyle, PYColor *, borderColor);
PYPropertyEqualTemplate(PYTimelineCheckpointStyle, id, borderWidth);
PYPropertyEqualTemplate(PYTimelineCheckpointStyle, PYTimelineLabel *, label);

@end

@interface PYTimelineControlStyle : NSObject

@property (strong, nonatomic) NSNumber *itemSize;
@property (strong, nonatomic) NSNumber *itemGap;
@property (strong, nonatomic) NSDictionary *normal;
@property (strong, nonatomic) NSDictionary *emphasis;

PYInitializerTemplate(PYTimelineControlStyle, controlStyle);

PYPropertyEqualTemplate(PYTimelineControlStyle, NSNumber *, itemSize);
PYPropertyEqualTemplate(PYTimelineControlStyle, NSNumber *, itemGap);
PYPropertyEqualTemplate(PYTimelineControlStyle, NSDictionary *, normal);
PYPropertyEqualTemplate(PYTimelineControlStyle, NSDictionary *, emphasis);

@end

typedef NSString *PYTimelineType;

FOUNDATION_EXPORT PYTimelineType const PYTimelineTypeTime;
FOUNDATION_EXPORT PYTimelineType const PYTimelineTypeNumber;

/**
 *
 *  You can goto this website for references:
 *  http://echarts.baidu.com/echarts2/doc/doc.html#Timeline
 *
 */
@interface PYTimeline : NSObject

@property (nonatomic, assign) BOOL show;
@property (nonatomic, strong) NSNumber *zlevel;
@property (nonatomic, strong) NSNumber *z;
@property (nonatomic, copy) PYTimelineType type;
@property (nonatomic, assign) BOOL notMerge;
@property (nonatomic, assign) BOOL realtime;
@property (nonatomic, strong) id x;
@property (nonatomic, strong) id y;
@property (nonatomic, strong) id x2;
@property (nonatomic, strong) id y2;
@property (nonatomic, strong) NSNumber *width;
@property (nonatomic, strong) NSNumber *height;
@property (nonatomic, strong) PYColor *backgroundColor;
@property (nonatomic, strong) NSNumber *borderWidth;
@property (nonatomic, strong) PYColor *borderColor;
@property (nonatomic, strong) id padding;
@property (nonatomic, copy) NSString *controlPosition;
@property (nonatomic, assign) BOOL autoPlay;
@property (nonatomic, assign) BOOL loop;
@property (nonatomic, strong) NSNumber *playInterval;
@property (nonatomic, strong) PYLineStyle *lineStyle;
@property (nonatomic, strong) PYTimelineLabel *label;
@property (nonatomic, strong) PYTimelineCheckpointStyle *checkpointStyle;
@property (nonatomic, strong) PYTimelineControlStyle *controlStyle;
@property (nonatomic, copy) PYSymbol symbol;
@property (nonatomic, strong) NSNumber *symbolSize;
@property (nonatomic, strong) NSNumber *currentIndex;
@property (nonatomic, strong) NSMutableArray *data;

PYInitializerTemplate(PYTimeline, timeline);

PYPropertyEqualTemplate(PYTimeline, BOOL, show);
PYPropertyEqualTemplate(PYTimeline, NSNumber *, zlevel);
PYPropertyEqualTemplate(PYTimeline, NSNumber *, z);
PYPropertyEqualTemplate(PYTimeline, PYTimelineType, type);
PYPropertyEqualTemplate(PYTimeline, BOOL, notMerge);
PYPropertyEqualTemplate(PYTimeline, BOOL, realtime);
PYPropertyEqualTemplate(PYTimeline, id, x);
PYPropertyEqualTemplate(PYTimeline, id, y);
PYPropertyEqualTemplate(PYTimeline, id, x2);
PYPropertyEqualTemplate(PYTimeline, id, y2);
PYPropertyEqualTemplate(PYTimeline, NSNumber *, width);
PYPropertyEqualTemplate(PYTimeline, NSNumber *, height);
PYPropertyEqualTemplate(PYTimeline, PYColor *, backgroundColor);
PYPropertyEqualTemplate(PYTimeline, NSNumber *, borderWidth);
PYPropertyEqualTemplate(PYTimeline, PYColor *, borderColor);
PYPropertyEqualTemplate(PYTimeline, id, padding);
PYPropertyEqualTemplate(PYTimeline, NSString *, controlPosition);
PYPropertyEqualTemplate(PYTimeline, BOOL, autoPlay);
PYPropertyEqualTemplate(PYTimeline, BOOL, loop);
PYPropertyEqualTemplate(PYTimeline, NSNumber *, playInterval);
PYPropertyEqualTemplate(PYTimeline, PYLineStyle *, lineStyle);
PYPropertyEqualTemplate(PYTimeline, PYTimelineLabel *, label);
PYPropertyEqualTemplate(PYTimeline, PYTimelineCheckpointStyle *, checkpointStyle);
PYPropertyEqualTemplate(PYTimeline, PYTimelineControlStyle *, controlStyle);
PYPropertyEqualTemplate(PYTimeline, PYSymbol, symbol);
PYPropertyEqualTemplate(PYTimeline, NSNumber *, symbolSize);
PYPropertyEqualTemplate(PYTimeline, NSNumber *, currentIndex);
PYPropertyEqualTemplate(PYTimeline, NSMutableArray *, data);

PYAddMethodTemplate(PYTimeline, NSObject, Data, data);

@end
