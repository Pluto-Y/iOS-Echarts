//
//  PYTreeSeries.h
//  iOS-Echarts
//
//  Created by Pluto Y on 4/22/16.
//  Copyright © 2016 Pluto-y. All rights reserved.
//

#import "PYSeries.h"
@class PYItemStyle;

@interface PYTreeSeriesData : NSObject

@property (strong, nonatomic) NSString *name;
@property (strong, nonatomic) NSNumber *value;
@property (strong, nonatomic) NSString *symbol;
@property (strong, nonatomic) id symbolSize;
@property (strong, nonatomic) NSArray *children;
@property (strong, nonatomic) PYItemStyle *itemStyle;

@end

@interface PYTreeSeries : PYSeries

@property (strong, nonatomic) NSDictionary *rootLocation;
@property (strong, nonatomic) NSNumber *layerPadding;
@property (strong, nonatomic) NSNumber *nodePadding;
@property (strong, nonatomic) NSString *orient;
@property (strong, nonatomic) NSString *direction;
@property (strong, nonatomic) id roam;
@property (strong, nonatomic) NSString *symbol;
@property (strong, nonatomic) id symbolSize;

@end
