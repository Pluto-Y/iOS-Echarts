//
//  PYAxisLabel.h
//  iOS-Echarts
//
//  Created by Pluto Y on 15/9/7.
//  Copyright (c) 2015年 pluto-y. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PYTextStyle.h"

/**
 *
 *  You can goto this website for references:
 *  http://echarts.baidu.com/echarts2/doc/doc.html#AxisAxislabel
 *
 */
@interface PYAxisLabel : NSObject

@property (nonatomic, assign) BOOL show;
@property (nonatomic, strong) id interval;
@property (nonatomic, strong) NSNumber *rotate;
@property (nonatomic, strong) NSNumber *margin;
@property (nonatomic, assign) BOOL clickable;
@property (nonatomic, copy) NSString *formatter;
@property (nonatomic, strong) PYTextStyle *textStyle;

@end
