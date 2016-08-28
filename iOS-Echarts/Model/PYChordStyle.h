//
//  PYChordStyle.h
//  iOS-Echarts
//
//  Created by Pluto Y on 8/7/16.
//  Copyright © 2016 pluto-y. All rights reserved.
//

#import <Foundation/Foundation.h>

/**
 *
 *  You can goto this website for references:
 *  http://echarts.baidu.com/echarts2/doc/doc.html#ChordStyle
 *
 */
@interface PYChordStyle : NSObject

@property (nonatomic, strong) NSNumber *width;
@property (nonatomic, copy) NSString *color;
@property (nonatomic, copy) NSString *borderWidth;
@property (nonatomic, copy) NSString *borderColor;

PYInitializerTemplate(PYChordStyle, chordStyle);

PYPropertyEqualTemplate(PYChordStyle, NSNumber *, width);
PYPropertyEqualTemplate(PYChordStyle, NSString *, color);
PYPropertyEqualTemplate(PYChordStyle, NSString *, borderWidth);
PYPropertyEqualTemplate(PYChordStyle, NSString *, borderColor);

@end
