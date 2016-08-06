//
//  PYTreeSeries.h
//  iOS-Echarts
//
//  Created by Pluto Y on 4/22/16.
//  Copyright © 2016 Pluto-y. All rights reserved.
//

#import "PYSeries.h"
#import "PYUtilities.h"

@class PYItemStyle;

@interface PYTreeSeriesData : NSObject

@property (nonatomic, copy) NSString *name;
@property (nonatomic, strong) NSNumber *value;
@property (nonatomic, copy) NSString *symbol;
@property (nonatomic, strong) id symbolSize;
@property (nonatomic, copy) NSArray *children;
@property (nonatomic, strong) PYItemStyle *itemStyle;

@end

/**
 *
 *  You can goto this website for references:
 *  http://echarts.baidu.com/echarts2/doc/doc.html#SeriesTree
 *
 */
@interface PYTreeSeries : PYSeries

@property (nonatomic, copy) NSDictionary *rootLocation;
@property (nonatomic, strong) NSNumber *layerPadding;
@property (nonatomic, strong) NSNumber *nodePadding;
@property (nonatomic, copy) NSString *orient;
@property (nonatomic, copy) NSString *direction;
@property (nonatomic, strong) id roam;
@property (nonatomic, copy) PYSymbol symbol;
@property (nonatomic, strong) id symbolSize;

@end
