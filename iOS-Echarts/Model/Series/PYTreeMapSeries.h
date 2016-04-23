//
//  PYTreeMapSeries.h
//  iOS-Echarts
//
//  Created by Pluto Y on 4/24/16.
//  Copyright © 2016 Pluto-y. All rights reserved.
//

#import "PYSeries.h"

@interface PYTreeMapSeries : PYSeries

@property (strong, nonatomic) NSArray *center;
@property (strong, nonatomic) NSArray *size;
@property (strong, nonatomic) NSString *root;

@end
