//
//  PYVennSeries.h
//  iOS-Echarts
//
//  Created by Pluto Y on 4/21/16.
//  Copyright © 2016 Pluto-y. All rights reserved.
//

#import "PYSeries.h"

@class PYItemStyle;

@interface PYVennSeriesData : NSObject

@property (strong, nonatomic) NSString *name;
@property (strong, nonatomic) NSNumber *value;
@property (strong, nonatomic) PYItemStyle *itemStyle;

@end

@interface PYVennSeries : PYSeries

@end
