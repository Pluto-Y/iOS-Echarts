//
//  PYItemStyle.h
//  iOS-Echarts
//
//  Created by Pluto Y on 15/9/8.
//  Copyright (c) 2015年 pluto-y. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PYItemStyleProp.h"

@interface PYItemStyle : NSObject

@property (nonatomic, strong) PYItemStyleProp *normal;
@property (nonatomic, strong) PYItemStyleProp *emphasis;

@end
