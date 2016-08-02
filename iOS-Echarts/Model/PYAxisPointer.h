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

@property (nonatomic, assign) BOOL show;
@property (nonatomic, copy) NSString *type;
@property (nonatomic, strong) PYLineStyle *lineStyle;
@property (nonatomic, strong) PYLineStyle *crossStyle;
@property (nonatomic, strong) PYAreaStyle *shadowStyle;

@end
