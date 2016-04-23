//
//  PYEventRiverSeries.h
//  iOS-Echarts
//
//  Created by Pluto Y on 4/24/16.
//  Copyright © 2016 Pluto-y. All rights reserved.
//

#import "PYSeries.h"

@interface PYEventRiverSeries : PYSeries

@property (strong, nonatomic) NSNumber *xAxisIndex;
@property (strong, nonatomic) NSNumber *weight;
@property (assign, nonatomic) BOOL legendHoverLink;

@end
