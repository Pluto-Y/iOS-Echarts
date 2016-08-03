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

@property (nonatomic, strong) NSNumber *zlevel;
@property (nonatomic, strong) NSNumber *z;
@property (nonatomic, strong) NSMutableArray *center;
@property (nonatomic, strong) NSNumber *radius;
@property (nonatomic, strong) NSNumber *startAngle;
@property (nonatomic, strong) NSNumber *spliteNumber;
@property (nonatomic, strong) id name;
@property (nonatomic, strong) NSMutableArray *boundaryGap;
@property (nonatomic, assign) BOOL scale;
@property (nonatomic, strong) PYLineStyle *axisLine;
@property (nonatomic, strong) PYAxisLabel *axisLabel;
@property (nonatomic, strong) PYLineStyle *spliteLine;
@property (nonatomic, strong) PYAreaStyle *spliteArea;
@property (nonatomic, copy) NSString *type;
@property (nonatomic, strong) NSMutableArray *indicator;

@end
