//
//  PYTextStyle.h
//  iOS-Echarts
//
//  Created by Pluto Y on 15/9/8.
//  Copyright (c) 2015年 pluto-y. All rights reserved.
//

#import <Foundation/Foundation.h>

@class PYColor;

@interface PYTextStyle : NSObject

@property (retain, nonatomic) PYColor *color;
@property (retain, nonatomic) NSString *decoration;
@property (retain, nonatomic) NSString *align;
@property (retain, nonatomic) NSString *baseLine;
@property (retain, nonatomic) NSString *fontFamily;
@property (retain, nonatomic) NSNumber *fontSize;
@property (retain, nonatomic) NSString *fontStyle;
@property (retain, nonatomic) NSString *fontWeight;

/**
 *  用number类型来设置fontWeight
 *
 *  @param number 字体粗细
 */
-(void)setFontWeightByNumber:(NSNumber *)number;

@end
