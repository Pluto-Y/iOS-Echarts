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

FOUNDATION_EXPORT PYMarkPointEffectType const PYMarkPointEffectTypeScale;
FOUNDATION_EXPORT PYMarkPointEffectType const PYMarkPointEffectTypeBounce;

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

PYInitializerTemplate(PYMarkPointEffect, effect);

PYPropertyEqualTemplate(PYMarkPointEffect, BOOL, show);
PYPropertyEqualTemplate(PYMarkPointEffect, PYMarkPointEffectType, type);
PYPropertyEqualTemplate(PYMarkPointEffect, BOOL, loop);
PYPropertyEqualTemplate(PYMarkPointEffect, NSNumber *, period);
PYPropertyEqualTemplate(PYMarkPointEffect, NSNumber *, scaleSize);
PYPropertyEqualTemplate(PYMarkPointEffect, NSNumber *, bounceDistance);
PYPropertyEqualTemplate(PYMarkPointEffect, PYColor *, color);
PYPropertyEqualTemplate(PYMarkPointEffect, PYColor *, shadowColor);
PYPropertyEqualTemplate(PYMarkPointEffect, NSNumber *, shadowBlur);

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
@property (nonatomic, copy) NSMutableArray *data;

PYInitializerTemplate(PYMarkPoint, markPoint);

PYPropertyEqualTemplate(PYMarkPoint, BOOL, clickable);
PYPropertyEqualTemplate(PYMarkPoint, id, symbol);
PYPropertyEqualTemplate(PYMarkPoint, id, symbolSize);
PYPropertyEqualTemplate(PYMarkPoint, id, symbolRotate);
PYPropertyEqualTemplate(PYMarkPoint, BOOL, large);
PYPropertyEqualTemplate(PYMarkPoint, PYMarkPointEffect *, effect);
PYPropertyEqualTemplate(PYMarkPoint, PYItemStyle *, itemStyle);
PYPropertyEqualTemplate(PYMarkPoint, NSMutableArray *, data);

PYAddMethodTemplate(PYMarkPoint, NSObject, Data, data);

@end
