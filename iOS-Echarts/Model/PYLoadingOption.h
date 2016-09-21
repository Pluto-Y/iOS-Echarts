//
//  PYLoadingOption.h
//  iOS-Echarts
//
//  Created by Pluto Y on 16/4/15.
//  Copyright © 2016年 pluto-y. All rights reserved.
//

#import <Foundation/Foundation.h>

@class PYTextStyle;

typedef NSString *PYLoadingOptionEffect;
FOUNDATION_EXPORT PYLoadingOptionEffect const PYLoadingOptionEffectSpin;
FOUNDATION_EXPORT PYLoadingOptionEffect const PYLoadingOptionEffectBar;
FOUNDATION_EXPORT PYLoadingOptionEffect const PYLoadingOptionEffectRing;
FOUNDATION_EXPORT PYLoadingOptionEffect const PYLoadingOptionEffectWhirling;
FOUNDATION_EXPORT PYLoadingOptionEffect const PYLoadingOptionEffectDynamicLine;
FOUNDATION_EXPORT PYLoadingOptionEffect const PYLoadingOptionEffectBubble;

/**
 *
 *  You can goto this website for references:
 *  http://echarts.baidu.com/echarts2/doc/doc.html#Loadingoption
 *
 */
@interface PYLoadingOption : NSObject

@property (nonatomic, copy) NSString *text;
@property (nonatomic, strong) id x;
@property (nonatomic, strong) id y;
@property (nonatomic, strong) PYTextStyle *textStyle;
@property (nonatomic, strong) id effect;
@property (nonatomic, copy) NSDictionary *effectOption;
@property (nonatomic, strong) NSNumber *progress;


PYPropertyEqualTemplate(PYLoadingOption, NSString *, text);
PYPropertyEqualTemplate(PYLoadingOption, id, x);
PYPropertyEqualTemplate(PYLoadingOption, id, y);
PYPropertyEqualTemplate(PYLoadingOption, PYTextStyle *, textStyle);
PYPropertyEqualTemplate(PYLoadingOption, id, effect);
PYPropertyEqualTemplate(PYLoadingOption, NSDictionary *, effectOption);
PYPropertyEqualTemplate(PYLoadingOption, NSNumber *, progress);

@end
