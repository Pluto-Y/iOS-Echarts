//
//  PYLabelLine.h
//  iOS-Echarts
//
//  Created by Pluto Y on 15/9/8.
//  Copyright (c) 2015年 pluto-y. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PYLineStyle.h"

@interface PYLabelLine : NSObject

@property (assign, nonatomic) BOOL show;
@property (retain, nonatomic) NSNumber *length;
@property (retain, nonatomic) PYLineStyle *lineStyle;

@end
