//
//  PYNodeStyle.h
//  iOS-Echarts
//
//  Created by Pluto Y on 7/26/16.
//  Copyright © 2016 pluto-y. All rights reserved.
//

#import <Foundation/Foundation.h>

@class PYColor;

@interface PYNodeStyle : NSObject

@property (strong, nonatomic) PYColor *color;
@property (strong, nonatomic) PYColor *borderColor;
@property (strong, nonatomic) NSNumber *borderWidth;

@end
