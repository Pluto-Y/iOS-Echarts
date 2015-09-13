//
//  PYAxis.m
//  iOS-Echarts
//
//  Created by Pluto Y on 15/9/7.
//  Copyright (c) 2015年 pluto-y. All rights reserved.
//

#import "PYAxis.h"

@interface PYAxis() {
    PYAxisType axisType;
}

@end

@implementation PYAxis

-(instancetype)init {
    self = [super init];
    if (self) {
        axisType = PYAxisTypeCategory;
        _show = YES;
        _data = [[NSArray alloc] init];
        _axisLine = [[PYAxisLine alloc] init];
        _axisLabel = [[PYAxisLabel alloc] init];
        _splitLine = [[PYSplitLine alloc] init];
    }
    return self;
}

-(void)reloadData {
    switch (axisType) {
        case PYAxisTypeCategory:
            if ([_boundaryGap isKindOfClass:[NSString class]] || [_boundaryGap isKindOfClass:[NSNumber class]]) {
                _boundaryGap = @([_boundaryGap boolValue]);
            } else {
                _boundaryGap = nil;
                NSLog(@"PYAxis --> The type of boudary gap is error.");
            }
            break;
        case PYAxisTypeValue:
        case PYAxisTypeTime:
            if ([_boundaryGap isKindOfClass:[NSArray class]] || [_boundaryGap isKindOfClass:[NSMutableArray class]]) {
                _boundaryGap = (NSArray *) _boundaryGap;
            } else {
                _boundaryGap = nil;
                NSLog(@"PYAxis --> The type of boudary gap is error.");
            }
            _data = nil;
            break;
        default:
            break;
    }
}

/**
 *  设置坐标轴类型
 *
 *  @param pyAxisType 坐标轴类型
 */
-(void)setAxisType:(PYAxisType) pyAxisType {
    axisType = pyAxisType;
}

/**
 *  获得Echart默认类型的字符串
 *
 *  @return Echart默认类型的字符串
 */
-(NSString *)getType {
    //'category' | 'value' | 'time' | 'log'
    switch (axisType) {
        case PYAxisTypeCategory:
            return @"category";
        case PYAxisTypeLog:
            return @"log";
        case PYAxisTypeTime:
            return @"time";
        case PYAxisTypeValue:
            return @"value";
    }
}

@end
