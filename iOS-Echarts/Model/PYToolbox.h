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

@interface PYToolbox : NSObject

@property (assign, nonatomic) BOOL show;
@property (retain, nonatomic) NSNumber *zlevel;
@property (retain, nonatomic) NSNumber *z;
@property (retain, nonatomic) NSString *orient;
@property (retain, nonatomic) id x;
@property (retain, nonatomic) id y;
@property (retain, nonatomic) PYColor *backgroundColor;
@property (retain, nonatomic) PYColor *borderColor;
@property (retain, nonatomic) NSNumber *borderWidth;
@property (retain, nonatomic) id padding;
@property (retain, nonatomic) NSNumber *itemGap;
@property (retain, nonatomic) NSNumber *itemSize;
@property (retain, nonatomic) NSArray *color;
@property (retain, nonatomic) PYColor *disableColor;
@property (retain, nonatomic) PYColor *effectiveColor;
@property (assign, nonatomic) BOOL showTitle;
@property (retain, nonatomic) PYTextStyle *textStyle;
@property (retain, nonatomic) PYToolboxFeature *feature;

@end
