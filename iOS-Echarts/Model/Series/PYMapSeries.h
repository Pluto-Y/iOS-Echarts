//
//  PYMapSeries.h
//  iOS-Echarts
//
//  Created by Pluto Y on 16/2/17.
//  Copyright © 2016年 pluto-y. All rights reserved.
//

#import "PYSeries.h"

@interface PYMapSeries : PYSeries

@property (retain, nonatomic) id selectedMode;
@property (retain, nonatomic) NSString *mapType;
@property (assign, nonatomic) BOOL hoverable;
@property (assign, nonatomic) BOOL dataRangeHoverLink;
@property (retain, nonatomic) NSDictionary *mapLocation;
@property (retain, nonatomic) NSString *mapValueCalculation;
@property (retain, nonatomic) NSNumber *mapValuePrecision;
@property (assign, nonatomic) BOOL showLegendSymbol;
@property (retain, nonatomic) id roam;
@property (retain, nonatomic) NSDictionary *scaleLimit;
@property (retain, nonatomic) NSDictionary *nameMap;
@property (retain, nonatomic) NSDictionary *textFixed;
@property (retain, nonatomic) NSDictionary *geoCoord;
@property (retain, nonatomic) NSDictionary *heatmap;

@end
