//
//  PYAxisLine.h
//  iOS-Echarts
//
//  Created by Pluto Y on 15/9/7.
//  Copyright (c) 2015年 pluto-y. All rights reserved.
//

#import <Foundation/Foundation.h>

@class PYLineStyle;

@interface PYAxisLine : NSObject

@property (assign, nonatomic) BOOL show;
@property (assign, nonatomic) BOOL onZero;
@property (retain, nonatomic) PYLineStyle *lineStyle;

@end
