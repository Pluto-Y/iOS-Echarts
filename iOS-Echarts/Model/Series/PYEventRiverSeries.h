//
//  PYEventRiverSeries.h
//  iOS-Echarts
//
//  Created by Pluto Y on 4/24/16.
//  Copyright © 2016 Pluto-y. All rights reserved.
//

#import "PYSeries.h"

@interface PYEventRiverSeries : PYSeries

@property (nonatomic, strong) NSNumber *xAxisIndex;
@property (nonatomic, strong) NSNumber *weight;
@property (nonatomic, assign) BOOL legendHoverLink;

@end
