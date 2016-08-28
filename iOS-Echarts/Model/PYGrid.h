//
//  PYGrid.h
//  iOS-Echarts
//
//  Created by Pluto-Y on 15/9/23.
//  Copyright © 2015年 pluto-y. All rights reserved.
//

#import <Foundation/Foundation.h>

@class PYColor;

/**
 *
 *  You can goto this website for references:
 *  http://echarts.baidu.com/echarts2/doc/doc.html#Grid
 *
 */
@interface PYGrid : NSObject

@property (nonatomic, strong) NSNumber *zlevel;
@property (nonatomic, strong) NSNumber *z;
@property (nonatomic, strong) id x;
@property (nonatomic, strong) id y;
@property (nonatomic, strong) id x2;
@property (nonatomic, strong) id y2;
@property (nonatomic, strong) NSNumber *width;
@property (nonatomic, strong) NSNumber *height;
@property (nonatomic, strong) PYColor *backgroundColor;
@property (nonatomic, strong) NSNumber *borderWidth;
@property (nonatomic, strong) PYColor *borderColor;

PYInitializerTemplate(PYGrid, grid);

PYPropertyEqualTemplate(PYGrid, NSNumber *, zlevel);
PYPropertyEqualTemplate(PYGrid, NSNumber *, z);
PYPropertyEqualTemplate(PYGrid, id, x);
PYPropertyEqualTemplate(PYGrid, id, y);
PYPropertyEqualTemplate(PYGrid, id, x2);
PYPropertyEqualTemplate(PYGrid, id, y2);
PYPropertyEqualTemplate(PYGrid, NSNumber *, width);
PYPropertyEqualTemplate(PYGrid, NSNumber *, height);
PYPropertyEqualTemplate(PYGrid, PYColor *, backgroundColor);
PYPropertyEqualTemplate(PYGrid, NSNumber *, borderWidth);
PYPropertyEqualTemplate(PYGrid, PYColor *, borderColor);

@end
