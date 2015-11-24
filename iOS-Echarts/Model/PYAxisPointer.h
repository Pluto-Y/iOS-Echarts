//
//  PYAxisPointer.h
//  iOS-Echarts
//
//  Created by Pluto-Y on 15/9/15.
//  Copyright (c) 2015年 pluto-y. All rights reserved.
//

#import <Foundation/Foundation.h>

@class PYLineStyle, PYAreaStyle;

@interface PYAxisPointer : NSObject

@property (assign, nonatomic) BOOL show;
@property (retain, nonatomic) NSString *type;
@property (retain, nonatomic) PYLineStyle *lineStyle;
@property (retain, nonatomic) PYLineStyle *crossStyle;
@property (retain, nonatomic) PYAreaStyle *shadowStyle;

@end
