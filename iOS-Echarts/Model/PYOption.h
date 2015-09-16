//
//  PYOption.h
//  iOS-Echarts
//
//  Created by Pluto Y on 15/9/9.
//  Copyright (c) 2015年 pluto-y. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PYAxis.h"
#import "PYLegend.h"
#import "PYTitle.h"
#import "PYToolbox.h"
#import "PYCartesianSeries.h"

@interface PYOption : NSObject

@property (retain, nonatomic) PYColor *backgroundColor;
@property (retain, nonatomic) NSArray *color;
@property (assign, nonatomic) BOOL renderAsImage;
@property (retain, nonatomic) PYTitle *title;
@property (retain, nonatomic) PYToolbox *toolbox;
@property (retain, nonatomic) PYTooltip *tooptip;
@property (retain, nonatomic) PYLegend *legend;
@property (retain, nonatomic) NSMutableArray *xAxis;
@property (retain, nonatomic) NSMutableArray *yAxis;
@property (retain, nonatomic) NSMutableArray *series;

@end
