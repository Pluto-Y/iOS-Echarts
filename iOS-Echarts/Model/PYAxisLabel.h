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
@property (retain, nonatomic) PYTextStyle *textStyle;
@property (retain, nonatomic) NSString *formatter;


@end
