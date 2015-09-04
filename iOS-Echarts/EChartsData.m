//
//  TestData.m
//  btWeigh
//
//  Created by ChipSea on 15-4-3.
//  Copyright (c) 2015年 mac. All rights reserved.
//

#import "EChartsData.h"

@implementation EChartsData


-(id)init
{
    self = [super init];
    if (self) {
        _lineTitle = [[NSMutableArray alloc] init];
        _xAxisTitle = [[NSMutableArray alloc] init];
        _realData = [[NSMutableArray alloc] init];
        _standardData1 = [[NSMutableArray alloc] init];
        _standardData2 = [[NSMutableArray alloc] init];
        self.maxData = @"0.0";
//        [_lineTitle addObject:@"视频广告"];
//        [_xAxisTitle addObject:@"周一"];
//        [_xAxisTitle addObject:@"周二"];
//        [_xAxisTitle addObject:@"周三"];
//        [_xAxisTitle addObject:@"周四"];
//        [_xAxisTitle addObject:@"周五"];
//        [_xAxisTitle addObject:@"周六"];
//        [_xAxisTitle addObject:@"周日"];
//        NSNumber *number = [[NSNumber alloc] initWithInt:220];
//        [_realData addObject:number];
//        number = [[NSNumber alloc] initWithInt:245];
//        [_realData addObject:number];
//        number = [[NSNumber alloc] initWithInt:330];
//        [_realData addObject:number];
//        number = [[NSNumber alloc] initWithInt:370];
//        [_realData addObject:number];
//        number = [[NSNumber alloc] initWithInt:420];
//        [_realData addObject:number];
//        number = [[NSNumber alloc] initWithInt:490];
//        [_realData addObject:number];
//        number = [[NSNumber alloc] initWithInt:650];
//        [_realData addObject:number];
//        number = [[NSNumber alloc] initWithInt:210];
//        [_standardData1 addObject:number];
//        number = [[NSNumber alloc] initWithInt:250];
//        [_standardData1 addObject:number];
//        number = [[NSNumber alloc] initWithInt:310];
//        [_standardData1 addObject:number];
//        number = [[NSNumber alloc] initWithInt:370];
//        [_standardData1 addObject:number];
//        number = [[NSNumber alloc] initWithInt:390];
//        [_standardData1 addObject:number];
//        number = [[NSNumber alloc] initWithInt:410];
//        [_standardData1 addObject:number];
//        number = [[NSNumber alloc] initWithInt:450];
//        [_standardData1 addObject:number];
//        number = [[NSNumber alloc] initWithInt:620];
//        [_standardData2 addObject:number];
//        number = [[NSNumber alloc] initWithInt:732];
//        [_standardData2 addObject:number];
//        number = [[NSNumber alloc] initWithInt:701];
//        [_standardData2 addObject:number];
//        number = [[NSNumber alloc] initWithInt:734];
//        [_standardData2 addObject:number];
//        number = [[NSNumber alloc] initWithInt:1090];
//        [_standardData2 addObject:number];
//        number = [[NSNumber alloc] initWithInt:1130];
//        [_standardData2 addObject:number];
//        number = [[NSNumber alloc] initWithInt:3000];
//        [_standardData2 addObject:number];

    }
    return self;
}

/// 根据传入的三个数组获得最大数值的字符串形式
-(NSString *)obtainMaxData {
//    float maxData = 0;
//    int i =0 ;
//    for (i = 0; i < self.realData.count ; i++) {
//        NSObject *obj = [_realData objectAtIndex:i];
//        NSString *str;
//        if ([obj isKindOfClass:[SpecialPoint class]]) {
//            str = ((SpecialPoint *)obj).value;
//        } else {
//            str = (NSString *)obj;
//        }
//        if([CommonUtil isPureFloat:str] && maxData < [str floatValue]) {
//            maxData = [str floatValue];
//        }
//    }
//    for (NSString *str in self.standardData1) {
//        if([CommonUtil isPureFloat:str] && maxData < [str floatValue]) {
//            maxData = [str floatValue];
//        }
//    }
//    for (NSString *str in self.standardData2) {
//        if([CommonUtil isPureFloat:str] && maxData < [str floatValue]) {
//            maxData = [str floatValue];
//        }
//    }
//    maxData *= 1.1;
//    maxData = (((int)maxData / 10) + 1) * 10.0;
//    return [NSString stringWithFormat:@"%.2f", maxData];
    return @"";
}


@end
