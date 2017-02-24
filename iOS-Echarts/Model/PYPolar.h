//
//  Polar.h
//  iOS-Echarts
//
//  Created by Pluto Y on 15/12/21.
//  Copyright © 2015年 pluto-y. All rights reserved.
//

#import <Foundation/Foundation.h>

@class PYLineStyle, PYAxisLabel, PYAreaStyle;

typedef NSString *PYPolarType;
FOUNDATION_EXPORT PYPolarType const PYPolarTypePolygon;
FOUNDATION_EXPORT PYPolarType const PYPolarTypeCircle;

/**
 *
 *  You can goto this website for references:
 *  http://echarts.baidu.com/echarts2/doc/doc.html#Polar
 *
 */
@interface PYPolar : NSObject

@property (nonatomic, strong) NSNumber *zlevel;
@property (nonatomic, strong) NSNumber *z;
@property (nonatomic, strong) NSMutableArray *center;
@property (nonatomic, strong) id radius;
@property (nonatomic, strong) NSNumber *startAngle;
@property (nonatomic, strong) NSNumber *splitNumber;
@property (nonatomic, strong) id name;
@property (nonatomic, strong) NSMutableArray *boundaryGap;
@property (nonatomic, assign) BOOL scale;
@property (nonatomic, strong) PYLineStyle *axisLine;
@property (nonatomic, strong) PYAxisLabel *axisLabel;
@property (nonatomic, strong) PYLineStyle *splitLine;
@property (nonatomic, strong) PYAreaStyle *splitArea;
@property (nonatomic, copy) PYPolarType type;
@property (nonatomic, strong) NSMutableArray *indicator;

PYInitializerTemplate(PYPolar, polar);

PYPropertyEqualTemplate(PYPolar, NSNumber *, zlevel);
PYPropertyEqualTemplate(PYPolar, NSNumber *, z);
PYPropertyEqualTemplate(PYPolar, NSMutableArray *, center);
PYPropertyEqualTemplate(PYPolar, id, radius);
PYPropertyEqualTemplate(PYPolar, NSNumber *, startAngle);
PYPropertyEqualTemplate(PYPolar, NSNumber *, splitNumber);
PYPropertyEqualTemplate(PYPolar, id, name);
PYPropertyEqualTemplate(PYPolar, NSMutableArray *, boundaryGap);
PYPropertyEqualTemplate(PYPolar, BOOL, scale);
PYPropertyEqualTemplate(PYPolar, PYLineStyle *, axisLine);
PYPropertyEqualTemplate(PYPolar, PYAxisLabel *, axisLabel);
PYPropertyEqualTemplate(PYPolar, PYLineStyle *, splitLine);
PYPropertyEqualTemplate(PYPolar, PYAreaStyle *, splitArea);
PYPropertyEqualTemplate(PYPolar, NSMutableArray *, indicator);

@end
