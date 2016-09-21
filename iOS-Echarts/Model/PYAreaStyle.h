//
//  PYAreaStyle.h
//  iOS-Echarts
//
//  Created by Pluto Y on 15/9/8.
//  Copyright (c) 2015年 pluto-y. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef NSString *PYAreaStyleType;

FOUNDATION_EXPORT PYAreaStyleType const PYAreaStyleTypeDefault;

/**
 *
 *  You can goto this website for references:
 *  http://echarts.baidu.com/echarts2/doc/doc.html#AreaStyle
 *
 */
@interface PYAreaStyle : NSObject

@property (nonatomic, strong) id color;
@property (nonatomic, copy) PYAreaStyleType type;

PYInitializerTemplate(PYAreaStyle, areaStyle);

PYPropertyEqualTemplate(PYAreaStyle, id, color);
PYPropertyEqualTemplate(PYAreaStyle, PYAreaStyleType, type);

@end

