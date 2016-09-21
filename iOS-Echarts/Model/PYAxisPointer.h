//
//  PYAxisPointer.h
//  iOS-Echarts
//
//  Created by Pluto-Y on 15/9/15.
//  Copyright (c) 2015年 pluto-y. All rights reserved.
//

#import <Foundation/Foundation.h>

@class PYLineStyle, PYAreaStyle;

typedef NSString * PYAxisPointerType;

FOUNDATION_EXPORT PYAxisPointerType PYAxisPointerTypeLine;
FOUNDATION_EXPORT PYAxisPointerType PYAxisPointerTypeCross;
FOUNDATION_EXPORT PYAxisPointerType PYAxisPointerTypeShadow;
FOUNDATION_EXPORT PYAxisPointerType PYAxisPointerTypeNone;

/**
 *
 *  You can goto this website for references:
 *  http://echarts.baidu.com/echarts2/doc/doc.html#AxisAxisline
 *
 */
@interface PYAxisPointer : NSObject

@property (nonatomic, assign) BOOL show;
@property (nonatomic, copy) NSString *type;
@property (nonatomic, strong) PYLineStyle *lineStyle;
@property (nonatomic, strong) PYLineStyle *crossStyle;
@property (nonatomic, strong) PYAreaStyle *shadowStyle;

PYInitializerTemplate(PYAxisPointer, axisPoint);

PYPropertyEqualTemplate(PYAxisPointer, BOOL, show);
PYPropertyEqualTemplate(PYAxisPointer, NSString *, type);
PYPropertyEqualTemplate(PYAxisPointer, PYLineStyle *, lineStyle);
PYPropertyEqualTemplate(PYAxisPointer, PYLineStyle *, crossStyle);
PYPropertyEqualTemplate(PYAxisPointer, PYAreaStyle *, shadowStyle);

@end
