//
//  PYChordStyle.h
//  iOS-Echarts
//
//  Created by Pluto Y on 8/7/16.
//  Copyright © 2016 pluto-y. All rights reserved.
//

#import <Foundation/Foundation.h>

@class color;

@interface PYChordStyle : NSObject

@property (nonatomic, strong) NSNumber *width;
@property (nonatomic, copy) NSString *color;
@property (nonatomic, copy) NSString *borderWidth;
@property (nonatomic, copy) NSString *borderColor;

@end
