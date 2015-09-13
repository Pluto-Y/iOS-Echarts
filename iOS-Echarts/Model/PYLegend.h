//
//  PYLegend.h
//  iOS-Echarts
//
//  Created by Pluto Y on 15/9/8.
//  Copyright (c) 2015年 pluto-y. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PYTextStyle.h"

@interface PYLegend : NSObject

@property (assign, nonatomic) BOOL show;
@property (retain, nonatomic) NSNumber *zlevel;
@property (retain, nonatomic) NSNumber *z;
@property (retain, nonatomic) NSString *orient;
@property (retain, nonatomic) NSString *x;
@property (retain, nonatomic) NSString *y;
@property (retain, nonatomic) PYColor *backgroundColor;
@property (retain, nonatomic) NSString *borderColor;
@property (retain, nonatomic) NSNumber *borderWidth;
@property (retain, nonatomic) NSNumber *itemGap;
@property (retain, nonatomic) NSNumber *itemWidth;
@property (retain, nonatomic) NSNumber *itemHeight;
@property (retain, nonatomic) PYTextStyle *textStyle;
@property (retain, nonatomic) NSArray *data;

@end
