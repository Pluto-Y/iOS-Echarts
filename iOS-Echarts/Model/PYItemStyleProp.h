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
#import "PYTextStyle.h"
#import "PYLineStyle.h"
#import "PYAreaStyle.h"
#import "PYChordStyle.h"

@class PYLabelLine;

@interface PYLabelLine : NSObject

@property (nonatomic, assign) BOOL show;
@property (nonatomic, strong) NSNumber *length;
@property (nonatomic, strong) PYLineStyle *lineStyle;

PYInitializerTemplate(PYLabelLine, labelLine);

PYPropertyEqualTemplate(PYLabelLine, PYLineStyle *, lineStyle);

@end



@interface PYLabel : NSObject

@property (nonatomic, assign) BOOL show;
@property (nonatomic, copy) NSString *position;
@property (nonatomic, assign) BOOL rotate;
@property (nonatomic, strong) NSNumber *distance;
@property (nonatomic, strong) id formatter;
@property (nonatomic, strong) PYTextStyle *textStyle;
@property (nonatomic, strong) NSNumber *x;
@property (nonatomic, strong) NSNumber *y;

PYInitializerTemplate(PYLabel, label);

PYPropertyEqualTemplate(PYLabel, PYTextStyle *, textStyle);

@end

/**
 *
 *  You can goto this website for references:
 *  http://echarts.baidu.com/echarts2/doc/doc.html#ItemStyle
 *
 */
@interface PYItemStyleProp : NSObject

@property (nonatomic, strong) id color;
@property (nonatomic, strong) PYLineStyle *lineStyle;
@property (nonatomic, strong) PYAreaStyle *areaStyle;
@property (nonatomic, strong) PYChordStyle *chordStyle;
@property (nonatomic, strong) PYNodeStyle *nodeStyle;
@property (nonatomic, strong) PYLinkStyle *linkStyle;
@property (nonatomic, strong) id borderColor;
@property (nonatomic, strong) NSNumber *borderWidth;
@property (nonatomic, strong) id barBorderColor;
@property (nonatomic, strong) id barBorderRadius;
@property (nonatomic, strong) NSNumber *barBorderWidth;
@property (nonatomic, strong) PYLabel *label;
@property (nonatomic, strong) PYLabelLine *labelLine;

PYInitializerTemplate(PYItemStyleProp, itemStyleProp);

PYPropertyEqualTemplate(PYItemStyleProp, PYLineStyle *, lineStyle);
PYPropertyEqualTemplate(PYItemStyleProp, PYAreaStyle *, areaStyle);
PYPropertyEqualTemplate(PYItemStyleProp, PYChordStyle *, chordStyle);
PYPropertyEqualTemplate(PYItemStyleProp, PYNodeStyle *, nodeStyle);
PYPropertyEqualTemplate(PYItemStyleProp, PYLinkStyle *, linkStyle);
PYPropertyEqualTemplate(PYItemStyleProp, PYLabel *, label);
PYPropertyEqualTemplate(PYItemStyleProp, PYLabelLine *, labelLine);

@end
