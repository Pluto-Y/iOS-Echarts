//
//  PYDataRange.h
//  iOS-Echarts
//
//  Created by Pluto-Y on 15/11/23.
//  Copyright © 2015年 pluto-y. All rights reserved.
//

#import <Foundation/Foundation.h>

@class PYTextStyle;
@class PYColor;

@interface PYDataRange : NSObject

@property (assign, nonatomic) BOOL show;
@property (retain, nonatomic) NSNumber *zlevel;
@property (retain, nonatomic) NSNumber *z;
@property (retain, nonatomic) NSString *orient;
@property (retain, nonatomic) id x;
@property (retain, nonatomic) id y;
@property (retain, nonatomic) PYColor *backgroundColor;
@property (retain, nonatomic) PYColor *borderColor;
@property (retain, nonatomic) NSNumber *borderWidth;
@property (retain, nonatomic) id padding;
@property (retain, nonatomic) NSNumber *itemGap;
@property (retain, nonatomic) NSNumber *itemWidth;
@property (retain, nonatomic) NSNumber *itemHeight;
@property (retain, nonatomic) NSNumber *min;
@property (retain, nonatomic) NSNumber *max;
@property (retain, nonatomic) NSNumber *precision;
@property (retain, nonatomic) NSNumber *splitNumber;
@property (retain, nonatomic) NSMutableArray *splitList;
@property (retain, nonatomic) NSObject *range;
@property (retain, nonatomic) id selectedMode;
@property (assign, nonatomic) BOOL calculable;
@property (assign, nonatomic) BOOL hoverLink;
@property (assign, nonatomic) BOOL realtime;
@property (retain, nonatomic) NSMutableArray *color;
@property (retain, nonatomic) id formatter;
@property (retain, nonatomic) NSMutableArray *text;
@property (retain, nonatomic) PYTextStyle *textStyle;

@end
