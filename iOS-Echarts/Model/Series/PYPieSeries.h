//
//  PYPieSeries.h
//  iOS-Echarts
//
//  Created by Pluto-Y on 15/10/3.
//  Copyright © 2015年 pluto-y. All rights reserved.
//

#import "PYSeries.h"

@interface PYPieSeries : PYSeries

@property (retain, nonatomic) NSArray *center;
@property (retain, nonatomic) id radius;
@property (retain, nonatomic) NSNumber *startAngle;
@property (retain, nonatomic) NSNumber *minAngle;
@property (assign, nonatomic) BOOL clockWise;
@property (retain, nonatomic) NSString *roseType;
@property (retain, nonatomic) NSNumber *selectedOffset;
@property (retain, nonatomic) id selectedMode;
@property (assign, nonatomic) BOOL legendHoverLink;

@end
