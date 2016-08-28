//
//  PYSplitArea.h
//  iOS-Echarts
//
//  Created by Pluto Y on 16/4/12.
//  Copyright © 2016年 pluto-y. All rights reserved.
//

#import <Foundation/Foundation.h>

@class PYAreaStyle;

/**
 *
 *  You can goto this website for references:
 *  http://echarts.baidu.com/echarts2/doc/doc.html#AxisSplitarea
 *
 */
@interface PYSplitArea : NSObject

@property (nonatomic, assign) BOOL show;
@property (nonatomic, assign) BOOL onGap;
@property (nonatomic, strong) PYAreaStyle *areaStyle;

PYInitializerTemplate(PYSplitArea, splitArea);

PYPropertyEqualTemplate(PYSplitArea, BOOL, show);
PYPropertyEqualTemplate(PYSplitArea, BOOL, onGap);
PYPropertyEqualTemplate(PYSplitArea, PYAreaStyle *, areaStyle);

@end
