//
//  PYLoadingOption.h
//  iOS-Echarts
//
//  Created by Pluto Y on 16/4/15.
//  Copyright © 2016年 pluto-y. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PYTextStyle.h"

typedef NSString *PYLoadingOptionEffect;
extern PYLoadingOptionEffect const PYLoadingOptionEffectSpin;
extern PYLoadingOptionEffect const PYLoadingOptionEffectBar;
extern PYLoadingOptionEffect const PYLoadingOptionEffectRing;
extern PYLoadingOptionEffect const PYLoadingOptionEffectWhirling;
extern PYLoadingOptionEffect const PYLoadingOptionEffectDynamicLine;
extern PYLoadingOptionEffect const PYLoadingOptionEffectBubble;

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

@end
