//
//  PYLinkStyle.h
//  iOS-Echarts
//
//  Created by Pluto Y on 7/26/16.
//  Copyright © 2016 pluto-y. All rights reserved.
//

#import <Foundation/Foundation.h>

@class PYColor;

extern NSString *const PYLinkStyleTypeLine;
extern NSString *const PYLinkStyleTypeCurve;

@interface PYLinkStyle : NSObject

@property (nonatomic, copy) NSString *type;
@property (nonatomic, strong) PYColor *color;
@property (nonatomic, strong) NSNumber *width;

@end
