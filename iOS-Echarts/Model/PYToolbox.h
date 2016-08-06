//
//  PYToolbox.h
//  iOS-Echarts
//
//  Created by Pluto-Y on 15/9/16.
//  Copyright (c) 2015年 pluto-y. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PYToolboxFeature.h"

@class PYColor, PYTextStyle;

/**
 *
 *  You can goto this website for references:
 *  http://echarts.baidu.com/echarts2/doc/doc.html#Toolbox
 *
 */
@interface PYToolbox : NSObject

@property (nonatomic, assign) BOOL show;
@property (nonatomic, strong) NSNumber *zlevel;
@property (nonatomic, strong) NSNumber *z;
@property (nonatomic, copy) NSString *orient;
@property (nonatomic, strong) id x;
@property (nonatomic, strong) id y;
@property (nonatomic, strong) PYColor *backgroundColor;
@property (nonatomic, strong) PYColor *borderColor;
@property (nonatomic, strong) NSNumber *borderWidth;
@property (nonatomic, strong) id padding;
@property (nonatomic, strong) NSNumber *itemGap;
@property (nonatomic, strong) NSNumber *itemSize;
@property (nonatomic, copy) NSArray *color;
@property (nonatomic, strong) PYColor *disableColor;
@property (nonatomic, strong) PYColor *effectiveColor;
@property (nonatomic, assign) BOOL showTitle;
@property (nonatomic, strong) PYTextStyle *textStyle;
@property (nonatomic, strong) PYToolboxFeature *feature;

@end
