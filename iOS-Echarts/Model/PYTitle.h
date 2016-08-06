//
//  PYTitle.h
//  iOS-Echarts
//
//  Created by Pluto-Y on 15/9/14.
//  Copyright (c) 2015年 pluto-y. All rights reserved.
//

#import <Foundation/Foundation.h>

@class PYColor, PYTextStyle;

/**
 *
 *  You can goto this website for references:
 *  http://echarts.baidu.com/echarts2/doc/doc.html#Title
 *
 */
@interface PYTitle : NSObject

@property (nonatomic, assign) BOOL show;
@property (nonatomic, strong) NSNumber *zlevel;
@property (nonatomic, strong) NSNumber *z;
@property (nonatomic, copy) NSString *text;
@property (nonatomic, copy) NSString *link;
@property (nonatomic, copy) NSString *target;
@property (nonatomic, copy) NSString *subtext;
@property (nonatomic, copy) NSString *sublink;
@property (nonatomic, copy) NSString *subtarget;
@property (nonatomic, strong) id x;
@property (nonatomic, strong) id y;
@property (nonatomic, copy) NSString *textAlign;
@property (nonatomic, strong) PYColor *backgroundColor;
@property (nonatomic, strong) PYColor *borderColor;
@property (nonatomic, strong) NSNumber *borderWidth;
@property (nonatomic, strong) id padding;
@property (nonatomic, strong) NSNumber *itemGap;
@property (nonatomic, strong) PYTextStyle *textStyle;
@property (nonatomic, strong) PYTextStyle *subtextStyle;

@end
