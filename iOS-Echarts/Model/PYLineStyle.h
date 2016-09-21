//
//  PYLineStyle.h
//  iOS-Echarts
//
//  Created by Pluto Y on 15/9/7.
//  Copyright (c) 2015年 pluto-y. All rights reserved.
//

#import <Foundation/Foundation.h>

@class PYColor;

typedef NSString *PYLineStyleType;

FOUNDATION_EXPORT PYLineStyleType const PYLineStyleTypeSolid;
FOUNDATION_EXPORT PYLineStyleType const PYLineStyleTypeDotted;
FOUNDATION_EXPORT PYLineStyleType const PYLineStyleTypeDashed;
FOUNDATION_EXPORT PYLineStyleType const PYLineStyleTypeCurve;
FOUNDATION_EXPORT PYLineStyleType const PYLineStyleTypeBroken;

/**
 *
 *  You can goto this website for references:
 *  http://echarts.baidu.com/echarts2/doc/doc.html#LineStyle
 *
 */
@interface PYLineStyle : NSObject

@property (nonatomic, strong) id color;
@property (nonatomic, strong) id color0;
@property (nonatomic, copy) PYLineStyleType type;
@property (nonatomic, strong) NSNumber *width;
@property (nonatomic, strong) PYColor *shadowColor;
@property (nonatomic, strong) NSNumber *shadowBlur;
@property (nonatomic, strong) NSNumber *shadowOffsetX;
@property (nonatomic, strong) NSNumber *shadowOffsetY;

PYInitializerTemplate(PYLineStyle, lineStyle);

PYPropertyEqualTemplate(PYLineStyle, id, color);
PYPropertyEqualTemplate(PYLineStyle, id, color0);
PYPropertyEqualTemplate(PYLineStyle, PYLineStyleType, type);
PYPropertyEqualTemplate(PYLineStyle, NSNumber *, width);
PYPropertyEqualTemplate(PYLineStyle, PYColor *, shadowColor);
PYPropertyEqualTemplate(PYLineStyle, NSNumber *, shadowBlur);
PYPropertyEqualTemplate(PYLineStyle, NSNumber *, shadowOffsetX);
PYPropertyEqualTemplate(PYLineStyle, NSNumber *, shadowOffsetY);

@end
