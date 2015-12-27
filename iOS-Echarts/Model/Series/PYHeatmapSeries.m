//
//  PYHeatmapSeries.m
//  iOS-Echarts
//
//  Created by Pluto Y on 15/12/28.
//  Copyright © 2015年 pluto-y. All rights reserved.
//

#import "PYHeatmapSeries.h"

#define HEATMAP_SERIES_MAP_VALUE_CAL_SCOPE [NSArray arrayWithObjects:@"sum", @"average", nil]

@implementation PYHeatmapSeries

- (instancetype)init
{
    self = [super init];
    if (self) {
        _mapType = @"china";
        _hoverable = YES;
        _dataRangeHoverLink = YES;
        _mapLocation = @{@"x":@"center", @"y":@"center"};
        _mapValueCalculation = @"sum";
        _showLegendSymbol = YES;
    }
    return self;
}

-(void)setMapValueCalculation:(NSString *)mapValueCalculation {
    // 检查传入参数是否支持对应方式
    if (![HEATMAP_SERIES_MAP_VALUE_CAL_SCOPE containsObject:mapValueCalculation]) {
        NSLog(@"ERROR: Map Value Caculation does not support the type --- %@", mapValueCalculation);
        mapValueCalculation = @"sum";
    }
    _mapValueCalculation = mapValueCalculation;
}

@end
