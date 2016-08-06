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

/**
 *
 *  You can goto this website for references:
 *  http://echarts.baidu.com/echarts2/doc/doc.html#DataRange
 *
 */
@interface PYDataRange : NSObject

@property (nonatomic, assign) BOOL show;
@property (nonatomic, strong) NSNumber *zlevel;
@property (nonatomic, strong) NSNumber *z;
@property (nonatomic, copy) NSString *orient;
@property (nonatomic, strong) id x;
@property (nonatomic, strong) id y;
@property (nonatomic, strong) PYColor *backgroundColor;
@property (nonatomic, strong) PYColor *borderColor;
@property (nonatomic, strong) NSNumber *borderWidth;
@property (nonatomic, strong) id padding;
@property (nonatomic, strong) NSNumber *itemGap;
@property (nonatomic, strong) NSNumber *itemWidth;
@property (nonatomic, strong) NSNumber *itemHeight;
@property (nonatomic, strong) NSNumber *min;
@property (nonatomic, strong) NSNumber *max;
@property (nonatomic, strong) NSNumber *precision;
@property (nonatomic, strong) NSNumber *splitNumber;
@property (nonatomic, strong) NSMutableArray *splitList;
@property (nonatomic, strong) NSObject *range;
@property (nonatomic, strong) id selectedMode;
@property (nonatomic, assign) BOOL calculable;
@property (nonatomic, assign) BOOL hoverLink;
@property (nonatomic, assign) BOOL realtime;
@property (nonatomic, strong) NSMutableArray *color;
@property (nonatomic, strong) id formatter;
@property (nonatomic, strong) NSMutableArray *text;
@property (nonatomic, strong) PYTextStyle *textStyle;

@end
