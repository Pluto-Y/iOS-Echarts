//
//  PYMarkPoint.h
//  iOS-Echarts
//
//  Created by Pluto-Y on 15/9/16.
//  Copyright (c) 2015年 pluto-y. All rights reserved.
//

#import <Foundation/Foundation.h>

@class PYColor, PYItemStyle;

typedef NSString *PYMarkPointEffectType;

extern PYMarkPointEffectType const PYMarkPointEffectTypeScale;
extern PYMarkPointEffectType const PYMarkPointEffectTypeBounce;

@interface PYMarkPointEffect : NSObject

@property (nonatomic, assign) BOOL show;
@property (nonatomic, copy) PYMarkPointEffectType type;
@property (nonatomic, assign) BOOL loop;
@property (nonatomic, strong) NSNumber *period;
@property (nonatomic, strong) NSNumber *scaleSize;
@property (nonatomic, strong) NSNumber *bounceDistance;
@property (nonatomic, strong) PYColor *color;
@property (nonatomic, strong) PYColor *shadowColor;
@property (nonatomic, strong) NSNumber *shadowBlur;

@end

/**
 *
 *  You can goto this website for references:
 *  http://echarts.baidu.com/echarts2/doc/doc.html#SeriesMarkPoint
 *
 */
@interface PYMarkPoint : NSObject

@property (nonatomic, assign) BOOL clickable;
@property (nonatomic, strong) id symbol;
@property (nonatomic, strong) id symbolSize;
@property (nonatomic, strong) id symbolRotate;
@property (nonatomic, assign) BOOL large;
@property (nonatomic, strong) PYMarkPointEffect *effect;
@property (nonatomic, strong) PYItemStyle *itemStyle;
@property (nonatomic, copy) NSArray *data;

@end
