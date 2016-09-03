//
//  PYMarkLine.h
//  iOS-Echarts
//
//  Created by Pluto-Y on 15/9/16.
//  Copyright (c) 2015年 pluto-y. All rights reserved.
//

#import <Foundation/Foundation.h>

@class PYColor, PYItemStyle;

@interface PYBundling : NSObject

@property (nonatomic, assign) BOOL enable;
@property (nonatomic, strong) NSNumber *maxTurningAngle;

PYInitializerTemplate(PYBundling, bundling);

PYPropertyEqualTemplate(PYBundling, BOOL, enable);
PYPropertyEqualTemplate(PYBundling, NSNumber *, maxTurningAngle);

@end

@interface PYMarkLineEffect : NSObject

@property (nonatomic, assign) BOOL show;
@property (nonatomic, assign) BOOL loop;
@property (nonatomic, strong) NSNumber *period;
@property (nonatomic, strong) NSNumber *scaleSize;
@property (nonatomic, strong) PYColor *color;
@property (nonatomic, strong) PYColor *shadowColor;
@property (nonatomic, strong) NSNumber *shadowBlur;

PYInitializerTemplate(PYMarkLineEffect, effect);

PYPropertyEqualTemplate(PYMarkLineEffect, BOOL, show);
PYPropertyEqualTemplate(PYMarkLineEffect, BOOL, loop);
PYPropertyEqualTemplate(PYMarkLineEffect, NSNumber *, period);
PYPropertyEqualTemplate(PYMarkLineEffect, NSNumber *, scaleSize);
PYPropertyEqualTemplate(PYMarkLineEffect, PYColor *, color);
PYPropertyEqualTemplate(PYMarkLineEffect, PYColor *, shadowColor);
PYPropertyEqualTemplate(PYMarkLineEffect, NSNumber *, shadowBlur);

@end


/**
 *
 *  You can goto this website for references:
 *  http://echarts.baidu.com/echarts2/doc/doc.html#SeriesMarkLine
 *
 */
@interface PYMarkLine : NSObject

@property (nonatomic, assign) BOOL clickable;
@property (nonatomic, strong) id symbol;
@property (nonatomic, strong) id symbolSize;
@property (nonatomic, strong) id symbolRotate;
@property (nonatomic, assign) BOOL large;
@property (nonatomic, assign) BOOL smooth;
@property (nonatomic, strong) NSNumber *smoothness;
@property (nonatomic, strong) NSNumber *precision;
@property (nonatomic, strong) PYBundling *bundling;
@property (nonatomic, strong) PYMarkLineEffect *effect;
@property (nonatomic, strong) PYItemStyle *itemStyle;
@property (nonatomic, copy) NSMutableArray *data;

PYInitializerTemplate(PYMarkLine, markLine);

PYPropertyEqualTemplate(PYMarkLine, BOOL, clickable);
PYPropertyEqualTemplate(PYMarkLine, id, symbol);
PYPropertyEqualTemplate(PYMarkLine, id, symbolSize);
PYPropertyEqualTemplate(PYMarkLine, id, symbolRotate);
PYPropertyEqualTemplate(PYMarkLine, BOOL, large);
PYPropertyEqualTemplate(PYMarkLine, BOOL, smooth);
PYPropertyEqualTemplate(PYMarkLine, NSNumber *, smoothness);
PYPropertyEqualTemplate(PYMarkLine, NSNumber *, precision);
PYPropertyEqualTemplate(PYMarkLine, PYBundling *, bundling);
PYPropertyEqualTemplate(PYMarkLine, PYMarkLineEffect *, effect);
PYPropertyEqualTemplate(PYMarkLine, PYItemStyle *, itemStyle);
PYPropertyEqualTemplate(PYMarkLine, NSMutableArray *, data);

PYAddMethodTemplate(PYMarkLine, NSObject, Data, data);

@end
