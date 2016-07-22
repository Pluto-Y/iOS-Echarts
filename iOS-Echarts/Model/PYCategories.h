//
//  PYCategries.h
//  iOS-Echarts
//
//  Created by Pluto Y on 7/22/16.
//  Copyright © 2016 pluto-y. All rights reserved.
//

#import <Foundation/Foundation.h>

@class PYItemStyle;

@interface PYCategories : NSObject

@property (strong, nonatomic) NSString *name;
@property (strong, nonatomic) NSString *symbol;
@property (strong, nonatomic) id symbolSize;
@property (strong, nonatomic) PYItemStyle *itemStyle;

@end
