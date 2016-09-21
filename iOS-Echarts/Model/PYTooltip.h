//
//  PYTooltip.h
//  iOS-Echarts
//
//  Created by Pluto-Y on 15/9/14.
//  Copyright (c) 2015年 pluto-y. All rights reserved.
//

#import <Foundation/Foundation.h>

@class PYColor, PYTextStyle, PYAxisPointer;

typedef NSString *PYTooltipTrigger;

FOUNDATION_EXPORT PYTooltipTrigger const PYTooltipTriggerItem;
FOUNDATION_EXPORT PYTooltipTrigger const PYTooltipTriggerAxis;

/**
 *
 *  You can goto this website for references:
 *  http://echarts.baidu.com/echarts2/doc/doc.html#Tooltip
 *
 */
@interface PYTooltip : NSObject

@property (nonatomic, assign) BOOL show;
@property (nonatomic, strong) NSNumber *zlevel;
@property (nonatomic, strong) NSNumber *z;
@property (nonatomic, assign) BOOL showContent;
@property (nonatomic, copy) PYTooltipTrigger trigger;
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

PYInitializerTemplate(PYTooltip, tooltip);

PYPropertyEqualTemplate(PYTooltip, BOOL, show);
PYPropertyEqualTemplate(PYTooltip, NSNumber *, zlevel);
PYPropertyEqualTemplate(PYTooltip, NSNumber *, z);
PYPropertyEqualTemplate(PYTooltip, BOOL, showContent);
PYPropertyEqualTemplate(PYTooltip, PYTooltipTrigger, trigger);
PYPropertyEqualTemplate(PYTooltip, id, position);
PYPropertyEqualTemplate(PYTooltip, id, formatter);
PYPropertyEqualTemplate(PYTooltip, id, islandFormmater);
PYPropertyEqualTemplate(PYTooltip, NSNumber *, showDelay);
PYPropertyEqualTemplate(PYTooltip, NSNumber *, hideDelay);
PYPropertyEqualTemplate(PYTooltip, NSNumber *, transitionDuration);
PYPropertyEqualTemplate(PYTooltip, BOOL, enterable);
PYPropertyEqualTemplate(PYTooltip, PYColor *, backgroundColor);
PYPropertyEqualTemplate(PYTooltip, PYColor *, borderColor);
PYPropertyEqualTemplate(PYTooltip, NSNumber *, borderRadius);
PYPropertyEqualTemplate(PYTooltip, NSNumber *, borderWidth);
PYPropertyEqualTemplate(PYTooltip, id, padding);
PYPropertyEqualTemplate(PYTooltip, PYAxisPointer *, axisPointer);
PYPropertyEqualTemplate(PYTooltip, PYTextStyle *, textStyle);

@end
