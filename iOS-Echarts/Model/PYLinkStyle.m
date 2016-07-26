//
//  PYLinkStyle.m
//  iOS-Echarts
//
//  Created by Pluto Y on 7/26/16.
//  Copyright © 2016 pluto-y. All rights reserved.
//

#import "PYLinkStyle.h"
#import "PYColor.h"

NSString *const PYLinkStyleTypeLine = @"line";
NSString *const PYLinkStyleTypeCurve = @"curve";

@implementation PYLinkStyle

- (instancetype)init
{
    self = [super init];
    if (self) {
        _type = PYLinkStyleTypeLine;
        _color = PYRGBA(81, 150, 171, 1.0);
        _width = @1;
    }
    return self;
}

@end
