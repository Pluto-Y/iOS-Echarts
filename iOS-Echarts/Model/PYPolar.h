//
//  Polar.h
//  iOS-Echarts
//
//  Created by Pluto Y on 15/12/21.
//  Copyright © 2015年 pluto-y. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PYLineStyle.h"
#import "PYAxisLabel.h"
#import "PYAreaStyle.h"

@interface PYPolar : NSObject

@property (retain, nonatomic) NSNumber *zlevel;
@property (retain, nonatomic) NSNumber *z;
@property (retain, nonatomic) NSMutableArray *center;
@property (retain, nonatomic) NSNumber *radius;
@property (retain, nonatomic) NSNumber *startAngle;
@property (retain, nonatomic) NSNumber *spliteNumber;
@property (retain, nonatomic) id name;
@property (retain, nonatomic) NSMutableArray *boundaryGap;
@property (assign, nonatomic) BOOL scale;
@property (retain, nonatomic) PYLineStyle *axisLine;
@property (retain, nonatomic) PYAxisLabel *axisLabel;
@property (retain, nonatomic) PYLineStyle *spliteLine;
@property (retain, nonatomic) PYAreaStyle *spliteArea;
@property (retain, nonatomic) NSString *type;
@property (retain, nonatomic) NSMutableArray *indicator;

@end
