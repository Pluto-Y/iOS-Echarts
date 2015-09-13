//
//  PYSeries.h
//  iOS-Echarts
//
//  Created by Pluto Y on 15/9/8.
//  Copyright (c) 2015年 pluto-y. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PYItemStyle.h"

typedef enum {
    PYSeriesTypeLine,
    PYSeriesTypeBar,
    PYSeriesTypeScatter,
    PYSeriesTypeK,
    PYSeriesTypePie,
    PYSeriesTypeRadar,
    PYSeriesTypeChord,
    PYSeriesTypeForce,
    PYSeriesTypeMap
} PYSeriesType;

typedef NSArray *(^DataFunction)(NSArray *data);

@interface PYSeries : NSObject

@property (retain, nonatomic) NSNumber *zlevel;
@property (retain, nonatomic) NSNumber *z;
@property (retain, nonatomic, readonly, getter=getType) NSString *type;
@property (retain, nonatomic) NSString *name;
@property (assign, nonatomic) BOOL clickable;
@property (retain, nonatomic) PYItemStyle *itemStyle;
@property (retain, nonatomic) NSArray *data;
@property (copy, nonatomic) DataFunction dataFunction;
@property (retain, nonatomic) NSArray *markPoint;
@property (retain, nonatomic) NSArray *markLine;

-(void)reloadData;

/**
 *  设置数据内容的类型
 *
 *  @param pySeriesType 设置数据内容的类型
 */
-(void)setSeriesType:(PYSeriesType)pySeriesType;


@end
