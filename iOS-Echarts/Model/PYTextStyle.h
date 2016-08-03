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

@property (nonatomic, strong) id color;
@property (nonatomic, copy) NSString *decoration;
@property (nonatomic, copy) NSString *align;
@property (nonatomic, copy) NSString *baseLine;
@property (nonatomic, copy) NSString *fontFamily;
@property (nonatomic, strong) NSNumber *fontSize;
@property (nonatomic, copy) NSString *fontStyle;
@property (nonatomic, copy) NSString *fontWeight;

/**
 *  用number类型来设置fontWeight
 *
 *  @param number 字体粗细
 */
- (void)setFontWeightByNumber:(NSNumber *)number;

@end
