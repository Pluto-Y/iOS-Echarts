//
//  PYItemStyle.h
//  iOS-Echarts
//
//  Created by Pluto Y on 15/9/8.
//  Copyright (c) 2015年 pluto-y. All rights reserved.
//

#import <Foundation/Foundation.h>

@class PYItemStyleProp;

@interface PYItemStyle : NSObject

@property (nonatomic, strong) PYItemStyleProp *normal;
@property (nonatomic, strong) PYItemStyleProp *emphasis;

PYInitializerTemplate(PYItemStyle, itemStyle);

PYPropertyEqualTemplate(PYItemStyle, PYItemStyleProp *, normal);
PYPropertyEqualTemplate(PYItemStyle, PYItemStyleProp *, emphasis);

@end
