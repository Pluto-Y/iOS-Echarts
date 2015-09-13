//
//  PYSeries.m
//  iOS-Echarts
//
//  Created by Pluto Y on 15/9/8.
//  Copyright (c) 2015年 pluto-y. All rights reserved.
//

#import "PYSeries.h"

@interface PYSeries() {
    PYSeriesType seriesType;
}

@end

@implementation PYSeries

- (instancetype)init
{
    self = [super init];
    if (self) {
        _zlevel = 0;
        _z = @(2);
        _clickable = YES;
        _data = @[];
    }
    return self;
}

-(void)reloadData {
    if (_dataFunction != nil) {
        _data = _dataFunction(_data);
    }
}

/**
 *  设置数据内容的类型
 *
 *  @param pySeriesType 设置数据内容的类型
 */
-(void)setSeriesType:(PYSeriesType)pySeriesType {
    seriesType = pySeriesType;
}

/**
 *  返回ECharts自带的类型字符串
 *
 *  @return ECharts自带的类型字符串
 */
-(NSString *)getType {
    switch (seriesType) {
        case PYSeriesTypeBar:
            return @"bar";
        case PYSeriesTypeChord:
            return @"chord";
        case PYSeriesTypeForce:
            return @"force";
        case PYSeriesTypeK:
            return @"k";
        case PYSeriesTypeLine:
            return @"line";
        case PYSeriesTypeMap:
            return @"map";
        case PYSeriesTypePie:
            return @"pie";
        case PYSeriesTypeRadar:
            return @"radar";
        case PYSeriesTypeScatter:
            return @"scatter";
    }
}

@end
