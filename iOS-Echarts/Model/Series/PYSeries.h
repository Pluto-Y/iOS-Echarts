//
//  PYSeries.h
//  iOS-Echarts
//
//  Created by Pluto Y on 15/9/8.
//  Copyright (c) 2015年 pluto-y. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PYItemStyle.h"
#import "PYTooltip.h"
#import "PYMarkLine.h"
#import "PYMarkPoint.h"

@interface PYSeries : NSObject

@property (nonatomic, strong) NSNumber *zlevel;
@property (nonatomic, strong) NSNumber *z;
@property (nonatomic, copy) NSString *type;
@property (nonatomic, copy) NSString *name;
@property (nonatomic, strong) PYTooltip *tooltip;
@property (nonatomic, assign) BOOL clickable;
@property (nonatomic, strong) PYItemStyle *itemStyle;
@property (nonatomic, strong) id data;
@property (nonatomic, strong) PYMarkPoint *markPoint;
@property (nonatomic, strong) PYMarkLine *markLine;


@end
