//
//  PYNodes.m
//  iOS-Echarts
//
//  Created by Pluto Y on 7/22/16.
//  Copyright © 2016 pluto-y. All rights reserved.
//

#import "PYNodes.h"

@implementation PYNodes

- (instancetype)init
{
    self = [super init];
    if (self) {
        _ignore = NO;
        _symbol = @"circle";
        _category = @(0);
    }
    return self;
}

@end
