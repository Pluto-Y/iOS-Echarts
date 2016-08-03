//
//  PYTreeMapSeries.h
//  iOS-Echarts
//
//  Created by Pluto Y on 4/24/16.
//  Copyright © 2016 Pluto-y. All rights reserved.
//

#import "PYSeries.h"

@interface PYTreeMapSeries : PYSeries

@property (nonatomic, copy) NSArray *center;
@property (nonatomic, copy) NSArray *size;
@property (nonatomic, copy) NSString *root;

@end
