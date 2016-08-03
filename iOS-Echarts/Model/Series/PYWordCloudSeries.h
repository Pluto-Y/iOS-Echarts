//
//  PYWordCloundSeries.h
//  iOS-Echarts
//
//  Created by Pluto Y on 4/21/16.
//  Copyright © 2016 Pluto-y. All rights reserved.
//

#import "PYSeries.h"

@interface PYWordCloudSeries : PYSeries

@property (nonatomic, copy) NSArray *center;
@property (nonatomic, copy) NSArray *size;
@property (nonatomic, copy) NSArray *textRotation;
@property (nonatomic, copy) NSDictionary *autoSize;

@end
