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

@property (assign, nonatomic) BOOL enable;
@property (retain, nonatomic) NSNumber *maxTurningAngle;

@end

@interface PYMarkLineEffect : NSObject

@property (assign, nonatomic) BOOL show;
@property (assign, nonatomic) BOOL loop;
@property (retain, nonatomic) NSNumber *period;
@property (retain, nonatomic) NSNumber *scaleSize;
@property (retain, nonatomic) PYColor *color;
@property (retain, nonatomic) PYColor *shadowColor;
@property (retain, nonatomic) NSNumber *shadowBlur;

@end


@interface PYMarkLine : NSObject

@property (assign, nonatomic) BOOL clickable;
@property (retain, nonatomic) id symbol;
@property (retain, nonatomic) id symbolSize;
@property (retain, nonatomic) id symbolRotate;
@property (assign, nonatomic) BOOL large;
@property (assign, nonatomic) BOOL smooth;
@property (retain, nonatomic) NSNumber *smoothness;
@property (retain, nonatomic) NSNumber *precision;
@property (retain, nonatomic) PYBundling *bundling;
@property (retain, nonatomic) PYMarkLineEffect *effect;
@property (retain, nonatomic) PYItemStyle *itemStyle;
@property (retain, nonatomic) NSArray *data;


@end
