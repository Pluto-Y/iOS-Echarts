//
//  PYFunnelSeries.h
//  iOS-Echarts
//
//  Created by Pluto Y on 4/24/16.
//  Copyright © 2016 Pluto-y. All rights reserved.
//

#import "PYSeries.h"

@interface PYFunnelSeries : PYSeries

@property (strong, nonatomic) NSNumber *x;
@property (strong, nonatomic) NSNumber *y;
@property (strong, nonatomic) NSNumber *x2;
@property (strong, nonatomic) NSNumber *y2;
@property (strong, nonatomic) id width;
@property (strong, nonatomic) id height;
@property (strong, nonatomic) NSString *funnelAlign;
@property (strong, nonatomic) NSNumber *min;
@property (strong, nonatomic) NSNumber *max;
@property (strong, nonatomic) NSString *minSize;
@property (strong, nonatomic) NSString *maxSize;
@property (strong, nonatomic) NSString *sort;
@property (strong, nonatomic) NSNumber *gap;
@property (assign, nonatomic) BOOL legendHoverLink;

@end
