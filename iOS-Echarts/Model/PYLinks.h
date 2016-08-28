//
//  PYLinks.h
//  iOS-Echarts
//
//  Created by Pluto Y on 7/22/16.
//  Copyright © 2016 pluto-y. All rights reserved.
//

#import <Foundation/Foundation.h>

@class PYItemStyle;

/**
 *
 *  You can goto this website for references:
 *  http://echarts.baidu.com/echarts2/doc/doc.html#GraphLinks
 *
 */
@interface PYLinks : NSObject

@property (nonatomic, strong) id source;
@property (nonatomic, strong) id target;
@property (nonatomic, strong) NSNumber *weight;
@property (nonatomic, strong) PYItemStyle *itemStyle;

PYInitializerTemplate(PYLinks, links);

PYPropertyEqualTemplate(PYLinks, id, source);
PYPropertyEqualTemplate(PYLinks, id, target);
PYPropertyEqualTemplate(PYLinks, NSNumber *, weight);
PYPropertyEqualTemplate(PYLinks, PYItemStyle *, itemStyle);

@end
