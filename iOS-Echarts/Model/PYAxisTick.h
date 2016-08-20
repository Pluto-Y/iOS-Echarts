//
//  PYAxisTick.h
//  iOS-Echarts
//
//  Created by Pluto-Y on 15/10/28.
//  Copyright © 2015年 pluto-y. All rights reserved.
//

#import <Foundation/Foundation.h>

@class PYLineStyle;

/**
 *
 *  You can goto this website for references:
 *  http://echarts.baidu.com/echarts2/doc/doc.html#AxisAxistick
 *
 */
@interface PYAxisTick : NSObject

@property (nonatomic, assign) BOOL show;
@property (nonatomic, strong) id interval;
@property (nonatomic, strong) NSNumber *splitNumber;
@property (nonatomic, assign) BOOL onGap;
@property (nonatomic, assign) BOOL inside;
@property (nonatomic, strong) NSNumber *length;
@property (nonatomic, strong) PYLineStyle *lineStyle;

@end
