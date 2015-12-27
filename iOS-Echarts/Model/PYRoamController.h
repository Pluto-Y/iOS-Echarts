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
 *  漫游缩放组件,搭配地图使用
 *  详情可见：http://echarts.baidu.com/doc/doc.html#RoamController
 */
@interface PYRoamController : NSObject

@property (assign, nonatomic) BOOL show;
@property (retain, nonatomic) NSNumber *zlevel;
@property (retain, nonatomic) NSNumber *z;
@property (retain, nonatomic) id x;
@property (retain, nonatomic) id y;
@property (retain, nonatomic) NSNumber *width;
@property (retain, nonatomic) NSNumber *height;
@property (retain, nonatomic) PYColor *backgroundColor;
@property (retain, nonatomic) PYColor *borderColor;
@property (retain, nonatomic) NSNumber *borderWidth;
@property (retain, nonatomic) id padding;
@property (retain, nonatomic) PYColor *fillerColor;
@property (retain, nonatomic) PYColor *handleColor;
@property (retain, nonatomic) NSNumber *step;
@property (retain, nonatomic) NSDictionary *mapTypeControl;

@end
