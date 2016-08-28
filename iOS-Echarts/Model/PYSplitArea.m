//
//  PYSplitArea.m
//  iOS-Echarts
//
//  Created by Pluto Y on 16/4/12.
//  Copyright © 2016年 pluto-y. All rights reserved.
//

#import "PYSplitArea.h"
#import "PYColor.h"
#import "PYAreaStyle.h"

@implementation PYSplitArea

- (instancetype)init
{
    self = [super init];
    if (self) {
        _show = NO;
        _areaStyle = [PYAreaStyle new];
        _areaStyle.color = @[PYRGBA(250, 250, 250, 0.3), PYRGBA(200, 200, 200, 0.3)];
    }
    return self;
}

PYInitializerImpTemplate(PYSplitArea);

PYPropertyEqualImpTemplate(PYSplitArea, BOOL, show);
PYPropertyEqualImpTemplate(PYSplitArea, BOOL, onGap);
PYPropertyEqualImpTemplate(PYSplitArea, PYAreaStyle *, areaStyle);

@end
