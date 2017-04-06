//
//  PYChordStyle.h
//  iOS-Echarts
//
//  Created by Pluto Y on 8/7/16.
//  Copyright © 2016 pluto-y. All rights reserved.
//

#import <Foundation/Foundation.h>

@class PYColor;

/**
 *
 *  You can goto this website for references:
 *  http://echarts.baidu.com/echarts2/doc/doc.html#ChordStyle
 *
 */
@interface PYChordStyle : NSObject

@property (nonatomic, strong) NSNumber *width;
@property (nonatomic, strong) PYColor *color;
@property (nonatomic, copy) NSString *borderWidth;
@property (nonatomic, copy) PYColor *borderColor;

PYInitializerTemplate(PYChordStyle, chordStyle);

PYPropertyEqualTemplate(PYChordStyle, NSNumber *, width);
PYPropertyEqualTemplate(PYChordStyle, PYColor *, color);
PYPropertyEqualTemplate(PYChordStyle, NSString *, borderWidth);
PYPropertyEqualTemplate(PYChordStyle, PYColor *, borderColor);

@end
