//
//  PYLinks.h
//  iOS-Echarts
//
//  Created by Pluto Y on 7/22/16.
//  Copyright © 2016 pluto-y. All rights reserved.
//

#import <Foundation/Foundation.h>

@class PYItemStyle;

@interface PYLinks : NSObject

@property (nonatomic, strong) id source;
@property (nonatomic, strong) id target;
@property (nonatomic, strong) NSNumber *weight;
@property (nonatomic, strong) PYItemStyle *itemStyle;

@end
