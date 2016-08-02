//
//  PYItemStyleProp.h
//  iOS-Echarts
//
//  Created by Pluto Y on 15/9/8.
//  Copyright (c) 2015年 pluto-y. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PYNodeStyle.h"
#import "PYLinkStyle.h"
#import "PYLinks.h"

@class PYLabelLine, PYAreaStyle, PYLabel, PYLineStyle;

@interface PYItemStyleProp : NSObject

@property (nonatomic, strong) PYColor *color;
@property (nonatomic, strong) PYLineStyle *lineStyle;
@property (nonatomic, strong) PYAreaStyle *areaStyle;
// chordStyle
@property (nonatomic, strong) PYNodeStyle *nodeStyle;
@property (nonatomic, strong) PYLinkStyle *linkStyle;
@property (nonatomic, strong) PYColor *borderColor;
@property (nonatomic, strong) NSNumber *borderWidth;
@property (nonatomic, strong) PYColor *barBorderColor;
// barBorderRadius
@property (nonatomic, strong) NSNumber *barBorderWidth;
@property (nonatomic, strong) PYLabel *label;
@property (nonatomic, strong) PYLabelLine *labelLine;

@end
