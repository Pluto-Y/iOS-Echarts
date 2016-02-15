//
//  PYRadarSeries.h
//  iOS-Echarts
//
//  Created by Pluto Y on 15/12/21.
//  Copyright © 2015年 pluto-y. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface PYRadarSeries : NSObject

@property (retain, nonatomic) NSNumber *polarIndex;
@property (retain, nonatomic) NSString *symbol;
@property (retain, nonatomic) id symbolSize;
@property (retain, nonatomic) NSNumber *symbolRotate;
@property (assign, nonatomic) BOOL legendHoverLink;

@end
