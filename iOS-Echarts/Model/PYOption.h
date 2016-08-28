//
//  PYOption.h
//  iOS-Echarts
//
//  Created by Pluto Y on 15/9/9.
//  Copyright (c) 2015年 pluto-y. All rights reserved.
//

#import <Foundation/Foundation.h>

@class PYAxis, PYLegend, PYTimeline, PYTitle, PYGrid, PYToolbox, PYDataZoom, PYDataRange, PYPolar, PYRoamController, PYColor, PYTooltip;

/**
 *
 *  You can goto this website for references:
 *  http://echarts.baidu.com/echarts2/doc/doc.html#Option
 *
 */
@interface PYOption : NSObject

@property (nonatomic, strong) PYColor *backgroundColor;
@property (nonatomic, strong) NSArray *color;
@property (nonatomic, strong) NSMutableArray<PYPolar *> *polar;
@property (nonatomic, assign) BOOL renderAsImage;
@property (nonatomic, assign) BOOL calculable;
@property (nonatomic, assign) BOOL animation;
@property (nonatomic, strong) PYTimeline *timeline;
@property (nonatomic, strong) PYTitle *title;
@property (nonatomic, strong) PYToolbox *toolbox;
@property (nonatomic, strong) PYTooltip *tooltip;
@property (nonatomic, strong) PYLegend *legend;
@property (nonatomic, strong) PYDataRange *dataRange;
@property (nonatomic, strong) PYDataZoom *dataZoom;
@property (nonatomic, strong) PYRoamController *roamController;
@property (nonatomic, strong) PYGrid *grid;
@property (nonatomic, strong) NSMutableArray *xAxis;
@property (nonatomic, strong) NSMutableArray *yAxis;
@property (nonatomic, strong) NSMutableArray *series;
@property (nonatomic, strong) PYOption *options;

PYInitializerTemplate(PYOption, option);


PYPropertyEqualTemplate(PYOption, PYColor *, backgroundColor);
PYPropertyEqualTemplate(PYOption, NSArray *, color);
PYPropertyEqualTemplate(PYOption, NSMutableArray *, polar);
PYPropertyEqualTemplate(PYOption, BOOL, renderAsImage);
PYPropertyEqualTemplate(PYOption, BOOL, calculable);
PYPropertyEqualTemplate(PYOption, BOOL, animation);
PYPropertyEqualTemplate(PYOption, PYTimeline *, timeline);
PYPropertyEqualTemplate(PYOption, PYTitle *, title);
PYPropertyEqualTemplate(PYOption, PYToolbox *, toolbox);
PYPropertyEqualTemplate(PYOption, PYTooltip *, tooltip);
PYPropertyEqualTemplate(PYOption, PYLegend *, legend);
PYPropertyEqualTemplate(PYOption, PYDataRange *, dataRange);
PYPropertyEqualTemplate(PYOption, PYDataZoom *, dataZoom);
PYPropertyEqualTemplate(PYOption, PYRoamController *, roamController);
PYPropertyEqualTemplate(PYOption, PYGrid *, grid);
PYPropertyEqualTemplate(PYOption, NSMutableArray *, xAxis);
PYPropertyEqualTemplate(PYOption, NSMutableArray *, yAxis);
PYPropertyEqualTemplate(PYOption, NSMutableArray *, series);
PYPropertyEqualTemplate(PYOption, PYOption *, options);



@end
