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

extern PYAxisPointerType PYAxisPointerLine;
extern PYAxisPointerType PYAxisPointerCross;
extern PYAxisPointerType PYAxisPointerShadow;
extern PYAxisPointerType PYAxisPointerNone;

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

@end
