//
//  PYLineStyle.h
//  iOS-Echarts
//
//  Created by Pluto Y on 15/9/7.
//  Copyright (c) 2015年 pluto-y. All rights reserved.
//

#import <Foundation/Foundation.h>

@class PYColor;

@interface PYLineStyle : NSObject

@property (nonatomic, strong) id color;
@property (nonatomic, copy) NSString *type;
@property (nonatomic, strong) NSNumber *width;
@property (nonatomic, strong) PYColor *shadowColor;
@property (nonatomic, strong) NSNumber *shadowBlur;
@property (nonatomic, strong) NSNumber *shadowOffsetX;
@property (nonatomic, strong) NSNumber *shadowOffsetY;

@end
