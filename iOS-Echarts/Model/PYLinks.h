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

@property (strong, nonatomic) id source;
@property (strong, nonatomic) id target;
@property (strong, nonatomic) NSNumber *weight;
@property (strong, nonatomic) PYItemStyle *itemStyle;

@end
