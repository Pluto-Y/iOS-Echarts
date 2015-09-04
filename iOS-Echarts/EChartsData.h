//
//  TestData.h
//  btWeigh
//
//  Created by ChipSea on 15-4-3.
//  Copyright (c) 2015年 mac. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "SpecialPoint.h"

@interface EChartsData : NSObject

@property (retain, nonatomic) NSMutableArray *lineTitle;
@property (retain, nonatomic) NSMutableArray *xAxisTitle;
@property (retain, nonatomic) NSMutableArray *realData;
@property (retain, nonatomic) NSMutableArray *standardData1;
@property (retain, nonatomic) NSMutableArray *standardData2;
@property (retain, nonatomic) NSString *maxData;

/// 根据传入的三个数组获得最大数值的字符串形式
-(NSString *)obtainMaxData;

@end
