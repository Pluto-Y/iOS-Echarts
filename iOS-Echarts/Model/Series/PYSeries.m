//
//  PYSeries.m
//  iOS-Echarts
//
//  Created by Pluto Y on 15/9/8.
//  Copyright (c) 2015年 pluto-y. All rights reserved.
//

#import "PYSeries.h"

#define SERIES_TYPE_SCOPE [NSArray arrayWithObjects:@"bar", @"chord", @"force", @"k", @"line", @"map", @"pie", @"radar", @"scatter", nil]

@interface PYSeries()

@end

@implementation PYSeries

- (instancetype)init
{
    self = [super init];
    if (self) {
        _zlevel = 0;
        _z = @(2);
        _clickable = YES;
        _data = @[];
    }
    return self;
}

-(void)setType:(NSString *)type {
    if (![SERIES_TYPE_SCOPE containsObject:type]) {
        NSLog(@"ERROR: Series does not support type --- %@", type);
        type = nil;
    }
    _type = type;
}

@end
