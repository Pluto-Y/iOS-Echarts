//
//  PYTooltip.m
//  iOS-Echarts
//
//  Created by ChipSea on 15/9/14.
//  Copyright (c) 2015年 pluto-y. All rights reserved.
//

#import "PYTooltip.h"

@interface PYTooltip() {
    PYTooltipTrigger trigger;
}

@end

@implementation PYTooltip

- (instancetype)init
{
    self = [super init];
    if (self) {
        _show = YES;
        _zlevel = @(1);
        _z = @(8);
        _showContent = YES;
        trigger = PYTooltipTriggerItem;
        _islandFormmater = @"{a} < br/>{b} : {c}";
        _showDelay = @(20);
        _hideDelay = @(100);
        _transitionDuration = @(0.4);
        _enterable = NO;
        _backgroundColor = PYRGBA(0, 0, 0, .7);
        _borderColor = PYRGBA(3, 3, 3, 1);
        _borderRadius = @(4);
        _borderWidth = @(0);
        _padding = @(5);
        _axisPointer = [[PYAxisPointer alloc] init];
        [_axisPointer setPYAxisPointerType:PYAxisPointerTypeLine];
        _axisPointer.lineStyle = [[PYLineStyle alloc] init];
        _axisPointer.lineStyle.color = PYRGBA(4, 8, 11, 1);
        _axisPointer.lineStyle.width = @(2);
        [_axisPointer.lineStyle setLineStyleType:PYLineStyleTypeSolid];
        _axisPointer.crossStyle = [[PYLineStyle alloc] init];
        _axisPointer.crossStyle.color = PYRGBA(30, 144, 255, 1);
        _axisPointer.crossStyle.width = @(1);
        [_axisPointer.crossStyle setLineStyleType:PYLineStyleTypeDashed];
        _axisPointer.shadowStyle = [[PYAreaStyle alloc] init];
        _axisPointer.shadowStyle.color = PYRGBA(150, 150, 150, .3);
    }
    return self;
}

/**
 *  设置触发类型
 *
 *  @param pyTooltipTrigger 触发类型
 */
-(void)setPYTooltipTrigger:(PYTooltipTrigger) pyTooltipTrigger {
    trigger = pyTooltipTrigger;
}

-(NSString *)getTrigger {
    switch (trigger) {
        case PYTooltipTriggerItem:
            return @"item";
        case PYTooltipTriggerAxis:
            return @"axis";
    }
}

@end
