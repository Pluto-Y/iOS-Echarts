//
//  PYDataZoom.h
//  iOS-Echarts
//
//  Created by Pluto-Y on 15/9/23.
//  Copyright © 2015年 pluto-y. All rights reserved.
//

#import <Foundation/Foundation.h>

@class PYColor;

/**
 *
 *  You can goto this website for references:
 *  http://echarts.baidu.com/echarts2/doc/doc.html#DataZoom
 *
 */
@interface PYDataZoom : NSObject

@property (nonatomic, strong) NSNumber *zlevel;
@property (nonatomic, strong) NSNumber *z;
@property (nonatomic, assign) BOOL show;
@property (nonatomic, copy) PYOrient orient;
@property (nonatomic, strong) NSNumber *x;
@property (nonatomic, strong) NSNumber *y;
@property (nonatomic, strong) NSNumber *width;
@property (nonatomic, strong) NSNumber *height;
@property (nonatomic, strong) PYColor *backgroundColor;
@property (nonatomic, strong) PYColor *dataBackgroundColor;
@property (nonatomic, strong) PYColor *fillerColor;
@property (nonatomic, strong) PYColor *handleColor;
@property (nonatomic, strong) NSNumber *handleSize;
@property (nonatomic, strong) id xAxisIndex;
@property (nonatomic, strong) id yAxisIndex;
@property (nonatomic, strong) NSNumber *start;
@property (nonatomic, strong) NSNumber *end;
@property (nonatomic, assign) BOOL showDetail;
@property (nonatomic, assign) BOOL realtime;
@property (nonatomic, assign) BOOL zoomLock;

PYInitializerTemplate(PYDataZoom, dataZoom);

PYPropertyEqualTemplate(PYDataZoom, NSNumber *, zlevel);
PYPropertyEqualTemplate(PYDataZoom, NSNumber *, z);
PYPropertyEqualTemplate(PYDataZoom, BOOL, show);
PYPropertyEqualTemplate(PYDataZoom, PYOrient, orient);
PYPropertyEqualTemplate(PYDataZoom, NSNumber *, x);
PYPropertyEqualTemplate(PYDataZoom, NSNumber *, y);
PYPropertyEqualTemplate(PYDataZoom, NSNumber *, width);
PYPropertyEqualTemplate(PYDataZoom, NSNumber *, height);
PYPropertyEqualTemplate(PYDataZoom, PYColor *, backgroundColor);
PYPropertyEqualTemplate(PYDataZoom, PYColor *, dataBackgroundColor);
PYPropertyEqualTemplate(PYDataZoom, PYColor *, fillerColor);
PYPropertyEqualTemplate(PYDataZoom, PYColor *, handleColor);
PYPropertyEqualTemplate(PYDataZoom, NSNumber *, handleSize);
PYPropertyEqualTemplate(PYDataZoom, id, xAxisIndex);
PYPropertyEqualTemplate(PYDataZoom, id, yAxisIndex);
PYPropertyEqualTemplate(PYDataZoom, NSNumber *, start);
PYPropertyEqualTemplate(PYDataZoom, NSNumber *, end);
PYPropertyEqualTemplate(PYDataZoom, BOOL, showDetail);
PYPropertyEqualTemplate(PYDataZoom, BOOL, realtime);
PYPropertyEqualTemplate(PYDataZoom, BOOL, zoomLock);

@end
