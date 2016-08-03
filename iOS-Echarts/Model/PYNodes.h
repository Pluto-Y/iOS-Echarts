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

@property (nonatomic, copy) NSString *name;
@property (nonatomic, copy) NSString *label;
@property (nonatomic, strong) NSNumber *value;
@property (nonatomic, assign) BOOL ignore;
@property (nonatomic, copy) NSString *symbol;
@property (nonatomic, strong) id symboleSize;
@property (nonatomic, strong) NSNumber *category;
@property (nonatomic, strong) PYItemStyle *itemStyle;

@end
