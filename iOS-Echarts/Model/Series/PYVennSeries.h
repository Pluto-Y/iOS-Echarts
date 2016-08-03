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

@property (nonatomic, copy) NSString *name;
@property (nonatomic, strong) NSNumber *value;
@property (nonatomic, strong) PYItemStyle *itemStyle;

@end

@interface PYVennSeries : PYSeries

@end
