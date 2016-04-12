//
//  PYAxisLabel.h
//  iOS-Echarts
//
//  Created by Pluto Y on 15/9/7.
//  Copyright (c) 2015年 pluto-y. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PYTextStyle.h"

@interface PYAxisLabel : NSObject

@property (nonatomic, assign) BOOL show;
@property (nonatomic, strong) id interval;
@property (strong, nonatomic) NSNumber *rotate;
@property (strong, nonatomic) NSNumber *margin;
@property (assign, nonatomic) BOOL clickable;
@property (retain, nonatomic) NSString *formatter;
@property (retain, nonatomic) PYTextStyle *textStyle;

@end
