//
//  PYLabel.h
//  iOS-Echarts
//
//  Created by Pluto Y on 15/9/8.
//  Copyright (c) 2015年 pluto-y. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PYTextStyle.h"

@interface PYLabel : NSObject

@property (nonatomic, assign) BOOL show;
@property (nonatomic, copy) NSString *position;
@property (nonatomic, assign) BOOL rotate;
@property (nonatomic, strong) NSNumber *distance;
@property (nonatomic, strong) id formatter;
@property (nonatomic, strong) PYTextStyle *textStyle;
@property (nonatomic, strong) NSNumber *x;
@property (nonatomic, strong) NSNumber *y;

@end
