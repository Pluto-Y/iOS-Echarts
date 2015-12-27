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
#import "PYTimeline.h"
#import "PYTitle.h"
#import "PYGrid.h"
#import "PYToolbox.h"
#import "PYDataZoom.h"
#import "PYCartesianSeries.h"
#import "PYDataRange.h"
#import "PYPolar.h"
#import "PYRoamController.h"

@interface PYOption : NSObject

@property (retain, nonatomic) PYColor *backgroundColor;
@property (retain, nonatomic) NSArray *color;
@property (retain, nonatomic) PYPolar *polar;
@property (assign, nonatomic) BOOL renderAsImage;
@property (assign, nonatomic) BOOL calculable;
@property (assign, nonatomic) BOOL animation;
@property (retain, nonatomic) PYTimeline *timeline;
@property (retain, nonatomic) PYTitle *title;
@property (retain, nonatomic) PYToolbox *toolbox;
@property (retain, nonatomic) PYTooltip *tooltip;
@property (retain, nonatomic) PYLegend *legend;
@property (retain, nonatomic) PYDataRange *dataRange;
@property (retain, nonatomic) PYDataZoom *dataZoom;
@property (retain, nonatomic) PYRoamController *roamController;
@property (retain, nonatomic) PYGrid *grid;
@property (retain, nonatomic) NSMutableArray *xAxis;
@property (retain, nonatomic) NSMutableArray *yAxis;
@property (retain, nonatomic) NSMutableArray *series;
@property (retain, nonatomic) PYOption *options;

@end
