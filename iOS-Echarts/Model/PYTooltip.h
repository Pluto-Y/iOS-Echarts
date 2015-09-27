//
//  PYTooltip.h
//  iOS-Echarts
//
//  Created by ChipSea on 15/9/14.
//  Copyright (c) 2015年 pluto-y. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PYAxisPointer.h"

typedef enum {
    PYTooltipTriggerItem,
    PYTooltipTriggerAxis
} PYTooltipTrigger;

@interface PYTooltip : NSObject

@property (assign, nonatomic) BOOL show;
@property (retain, nonatomic) NSNumber *zlevel;
@property (retain, nonatomic) NSNumber *z;
@property (assign, nonatomic) BOOL showContent;
@property (retain, nonatomic, readonly, getter=getTrigger) NSString *trigger;
@property (retain, nonatomic) id position;
@property (retain, nonatomic) id formatter;
@property (retain, nonatomic) id islandFormmater;
@property (retain, nonatomic) NSNumber *showDelay;
@property (retain, nonatomic) NSNumber *hideDelay;
@property (retain, nonatomic) NSNumber *transitionDuration;
@property (assign, nonatomic) BOOL enterable;
@property (retain, nonatomic) PYColor *backgroundColor;
@property (retain, nonatomic) PYColor *borderColor;
@property (retain, nonatomic) NSNumber *borderRadius;
@property (retain, nonatomic) NSNumber *borderWidth;
@property (retain, nonatomic) id padding;
@property (retain, nonatomic) PYAxisPointer *axisPointer;
@property (retain, nonatomic) PYTextStyle *textStyle;

/**
 *  设置触发类型
 *
 *  @param pyTooltipTrigger 触发类型
 */
-(void)setTooltipTrigger:(PYTooltipTrigger) pyTooltipTrigger;

@end
