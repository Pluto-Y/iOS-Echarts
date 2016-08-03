//
//  PYRadarSeries.h
//  iOS-Echarts
//
//  Created by Pluto Y on 15/12/21.
//  Copyright © 2015年 pluto-y. All rights reserved.
//

#import "PYSeries.h"

@interface PYRadarSeries : PYSeries

@property (nonatomic, strong) NSNumber *polarIndex;
@property (nonatomic, copy) NSString *symbol;
@property (nonatomic, strong) id symbolSize;
@property (nonatomic, strong) NSNumber *symbolRotate;
@property (nonatomic, assign) BOOL legendHoverLink;

@end
