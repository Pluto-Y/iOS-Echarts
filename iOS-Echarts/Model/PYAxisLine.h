//
//  PYAxisLine.h
//  iOS-Echarts
//
//  Created by Pluto Y on 15/9/7.
//  Copyright (c) 2015年 pluto-y. All rights reserved.
//

#import <Foundation/Foundation.h>

@class PYLineStyle;

/**
 *
 *  You can goto this website for references:
 *  http://echarts.baidu.com/echarts2/doc/doc.html#AxisAxisline
 *
 */
@interface PYAxisLine : NSObject

@property (nonatomic, assign) BOOL show;
@property (nonatomic, assign) BOOL onZero;
@property (nonatomic, strong) PYLineStyle *lineStyle;

PYInitializerTemplate(PYAxisLine, axisLine);

PYPropertyEqualTemplate(PYAxisLine, BOOL, show);
PYPropertyEqualTemplate(PYAxisLine, BOOL, onZero);
PYPropertyEqualTemplate(PYAxisLine, PYLineStyle *, lineStyle);

@end
