//
//  PYTooltip.h
//  iOS-Echarts
//
//  Created by Pluto-Y on 15/9/14.
//  Copyright (c) 2015年 pluto-y. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PYAxisPointer.h"

@class PYColor, PYTextStyle;

@interface PYTooltip : NSObject

@property (nonatomic, assign) BOOL show;
@property (nonatomic, strong) NSNumber *zlevel;
@property (nonatomic, strong) NSNumber *z;
@property (nonatomic, assign) BOOL showContent;
@property (nonatomic, copy) NSString *trigger;
@property (nonatomic, strong) id position;
@property (nonatomic, strong) id formatter;
@property (nonatomic, strong) id islandFormmater;
@property (nonatomic, strong) NSNumber *showDelay;
@property (nonatomic, strong) NSNumber *hideDelay;
@property (nonatomic, strong) NSNumber *transitionDuration;
@property (nonatomic, assign) BOOL enterable;
@property (nonatomic, strong) PYColor *backgroundColor;
@property (nonatomic, strong) PYColor *borderColor;
@property (nonatomic, strong) NSNumber *borderRadius;
@property (nonatomic, strong) NSNumber *borderWidth;
@property (nonatomic, strong) id padding;
@property (nonatomic, strong) PYAxisPointer *axisPointer;
@property (nonatomic, strong) PYTextStyle *textStyle;

@end
