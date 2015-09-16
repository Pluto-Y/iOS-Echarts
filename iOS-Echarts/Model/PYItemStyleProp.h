//
//  PYItemStyleProp.h
//  iOS-Echarts
//
//  Created by Pluto Y on 15/9/8.
//  Copyright (c) 2015年 pluto-y. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PYLineStyle.h"
#import "PYAreaStyle.h"
#import "PYLabel.h"
#import "PYLabelLine.h"

@interface PYItemStyleProp : NSObject

@property (retain, nonatomic) PYColor *color;
@property (retain, nonatomic) PYLineStyle *lineStyle;
@property (retain, nonatomic) PYAreaStyle *areaStyle;
// chordStyle, nodeStyle, linkStyle
@property (retain, nonatomic) PYColor *borderColor;
@property (retain, nonatomic) NSNumber *borderWidth;
@property (retain, nonatomic) PYColor *barBorderColor;
// barBorderRadius
@property (retain, nonatomic) NSNumber *barBorderWidth;
@property (retain, nonatomic) PYLabel *label;
@property (retain, nonatomic) PYLabelLine *labelLine;


@end
