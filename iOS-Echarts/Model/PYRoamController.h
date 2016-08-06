//
//  PYRoamController.h
//  iOS-Echarts
//
//  Created by Pluto-Y on 15/12/27.
//  Copyright © 2015年 pluto-y. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PYColor.h"

/**
 *
 *  You can goto this website for references:
 *  http://echarts.baidu.com/echarts2/doc/doc.html#RoamController
 *
 */
@interface PYRoamController : NSObject

@property (nonatomic, assign) BOOL show;
@property (nonatomic, strong) NSNumber *zlevel;
@property (nonatomic, strong) NSNumber *z;
@property (nonatomic, strong) id x;
@property (nonatomic, strong) id y;
@property (nonatomic, strong) NSNumber *width;
@property (nonatomic, strong) NSNumber *height;
@property (nonatomic, strong) PYColor *backgroundColor;
@property (nonatomic, strong) PYColor *borderColor;
@property (nonatomic, strong) NSNumber *borderWidth;
@property (nonatomic, strong) id padding;
@property (nonatomic, strong) PYColor *fillerColor;
@property (nonatomic, strong) PYColor *handleColor;
@property (nonatomic, strong) NSNumber *step;
@property (nonatomic, copy) NSDictionary *mapTypeControl;

@end
