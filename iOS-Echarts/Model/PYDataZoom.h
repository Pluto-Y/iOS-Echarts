//
//  PYDataZoom.h
//  iOS-Echarts
//
//  Created by Pluto-Y on 15/9/23.
//  Copyright © 2015年 pluto-y. All rights reserved.
//

#import <Foundation/Foundation.h>

@class PYColor;

@interface PYDataZoom : NSObject

@property (retain, nonatomic) NSNumber *zlevel;
@property (retain, nonatomic) NSNumber *z;
@property (assign, nonatomic) BOOL show;
@property (retain, nonatomic) NSString *orient;
@property (retain, nonatomic) NSNumber *x;
@property (retain, nonatomic) NSNumber *y;
@property (retain, nonatomic) NSNumber *width;
@property (retain, nonatomic) NSNumber *height;
@property (retain, nonatomic) PYColor *backgroundColor;
@property (retain, nonatomic) PYColor *dataBackgroundColor;
@property (retain, nonatomic) PYColor *fillerColor;
@property (retain, nonatomic) PYColor *handleColor;
@property (retain, nonatomic) NSNumber *handleSize;
@property (retain, nonatomic) id xAxisIndex;
@property (retain, nonatomic) id yAxisIndex;
@property (retain, nonatomic) NSNumber *start;
@property (retain, nonatomic) NSNumber *end;
@property (assign, nonatomic) BOOL showDetail;
@property (assign, nonatomic) BOOL realtime;
@property (assign, nonatomic) BOOL zoomLock;

@end
