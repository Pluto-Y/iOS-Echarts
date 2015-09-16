//
//  PYMarkPoint.h
//  iOS-Echarts
//
//  Created by ChipSea on 15/9/16.
//  Copyright (c) 2015年 pluto-y. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef enum {
    PYMarkPointEffectTypeScale,
    PYMarkPointEffectTypeBounce
} PYMarkPointEffectType;

@interface PYMarkPointEffect : NSObject

@property (assign, nonatomic) BOOL show;
@property (retain, nonatomic, readonly, getter=getType) NSString *type;
@property (assign, nonatomic) BOOL loop;
@property (retain, nonatomic) NSNumber *period;
@property (retain, nonatomic) NSNumber *scaleSize;
@property (retain, nonatomic) NSNumber *bounceDistance;
@property (retain, nonatomic) PYColor *color;
@property (retain, nonatomic) PYColor *shadowColor;
@property (retain, nonatomic) NSNumber *shadowBlur;

-(void)setMarPointEffectType:(PYMarkPointEffectType) markPointEffectType;

@end

@interface PYMarkPoint : NSObject

@property (assign, nonatomic) BOOL clickable;
@property (retain, nonatomic) id symbol;
@property (retain, nonatomic) id symbolSize;
@property (retain, nonatomic) id symbolRotate;
@property (assign, nonatomic) BOOL large;
@property (retain, nonatomic) PYMarkPointEffect *effect;
@property (retain, nonatomic) PYItemStyle *itemStyle;
@property (retain, nonatomic) NSArray *data;

@end
