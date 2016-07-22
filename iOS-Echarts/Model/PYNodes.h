//
//  PYNodes.h
//  iOS-Echarts
//
//  Created by Pluto Y on 7/22/16.
//  Copyright © 2016 pluto-y. All rights reserved.
//

#import <Foundation/Foundation.h>

@class PYItemStyle;

@interface PYNodes : NSObject

@property (strong, nonatomic) NSString *name;
@property (strong, nonatomic) NSString *label;
@property (strong, nonatomic) NSNumber *value;
@property (assign, nonatomic) BOOL ignore;
@property (strong, nonatomic) NSString *symbol;
@property (strong, nonatomic) id symboleSize;
@property (strong, nonatomic) NSNumber *category;
@property (strong, nonatomic) PYItemStyle *itemStyle;

@end
