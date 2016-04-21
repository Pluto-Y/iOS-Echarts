//
//  PYWordCloundSeries.h
//  iOS-Echarts
//
//  Created by Pluto Y on 4/21/16.
//  Copyright © 2016 Pluto-y. All rights reserved.
//

#import "PYSeries.h"

@interface PYWordCloudSeries : PYSeries

@property (strong, nonatomic) NSArray *center;
@property (strong, nonatomic) NSArray *size;
@property (strong, nonatomic) NSArray *textRotation;
@property (strong, nonatomic) NSDictionary *autoSize;

@end
