//
//  PYNodeStyle.h
//  iOS-Echarts
//
//  Created by Pluto Y on 7/26/16.
//  Copyright © 2016 pluto-y. All rights reserved.
//

#import <Foundation/Foundation.h>

@class PYColor;

/**
 *
 *  You can goto this website for references:
 *  http://echarts.baidu.com/echarts2/doc/doc.html#NodeStyle
 *
 */
@interface PYNodeStyle : NSObject

@property (nonatomic, strong) PYColor *color;
@property (nonatomic, strong) PYColor *borderColor;
@property (nonatomic, strong) NSNumber *borderWidth;

PYInitializerTemplate(PYNodeStyle, nodeStyle);


PYPropertyEqualTemplate(PYNodeStyle,PYColor *, color);
PYPropertyEqualTemplate(PYNodeStyle,PYColor *, borderColor);
PYPropertyEqualTemplate(PYNodeStyle,NSNumber *, borderWidth);

@end
