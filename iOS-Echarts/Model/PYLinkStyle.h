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

@property (strong, nonatomic) NSString *type;
@property (strong, nonatomic) PYColor *color;
@property (strong, nonatomic) NSNumber *width;

@end
