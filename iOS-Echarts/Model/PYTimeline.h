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
@property (retain, nonatomic) id interval;
@property (retain, nonatomic) NSNumber *rotate;
@property (retain, nonatomic) id formatter;
@property (retain, nonatomic) PYTextStyle *textStyle;

@end

@interface PYTimelineCheckpointStyle : NSObject

@property (retain, nonatomic) NSString *symbol;
@property (retain, nonatomic) id symbolSize;
@property (retain, nonatomic) PYColor *color;
@property (retain, nonatomic) PYColor *borderColor;
@property (retain, nonatomic) id borderWidth;
@property (retain, nonatomic) PYTimelineLabel *label;

@end

@interface PYTimelineControlStyle : NSObject

@property (retain, nonatomic) NSNumber *itemSize;
@property (retain, nonatomic) NSNumber *itemGap;
@property (retain, nonatomic) NSDictionary *normal;
@property (retain, nonatomic) NSDictionary *emphasis;

@end

@interface PYTimeline : NSObject

@property (assign, nonatomic) BOOL show;
@property (retain, nonatomic) NSNumber *zlevel;
@property (retain, nonatomic) NSNumber *z;
@property (retain, nonatomic) NSString *type;
@property (assign, nonatomic) BOOL notMerge;
@property (assign, nonatomic) BOOL realtime;
@property (retain, nonatomic) id x;
@property (retain, nonatomic) id y;
@property (retain, nonatomic) id x2;
@property (retain, nonatomic) id y2;
@property (retain, nonatomic) NSNumber *width;
@property (retain, nonatomic) NSNumber *height;
@property (retain, nonatomic) PYColor *backgroundColor;
@property (retain, nonatomic) NSNumber *borderWidth;
@property (retain, nonatomic) PYColor *borderColor;
@property (retain, nonatomic) id padding;
@property (retain, nonatomic) NSString *controlPosition;
@property (assign, nonatomic) BOOL autoPlay;
@property (assign, nonatomic) BOOL loop;
@property (retain, nonatomic) NSNumber *playInterval;
@property (retain, nonatomic) PYLineStyle *lineStyle;
@property (retain, nonatomic) PYTimelineLabel *label;
@property (retain, nonatomic) PYTimelineCheckpointStyle *checkpointStyle;
@property (retain, nonatomic) PYTimelineControlStyle *controlStyle;
@property (retain, nonatomic) NSString *symbol;
@property (retain, nonatomic) NSNumber *symbolSize;
@property (retain, nonatomic) NSNumber *currentIndex;
@property (retain, nonatomic) NSMutableArray *data;

@end
