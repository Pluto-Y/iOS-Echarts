//
//  PYAxisPointer.m
//  iOS-Echarts
//
//  Created by ChipSea on 15/9/15.
//  Copyright (c) 2015年 pluto-y. All rights reserved.
//

#import "PYAxisPointer.h"

@interface PYAxisPointer() {
    PYAxisPointerType type;
}

@end


@implementation PYAxisPointer

- (instancetype)init
{
    self = [super init];
    if (self) {
        type = PYAxisPointerTypeNone;
    }
    return self;
}

/**
 *  设置坐标轴指示器
 *
 *  @param pyAxisPointerType 坐标轴指示器
 */
-(void)setPYAxisPointerType:(PYAxisPointerType) pyAxisPointerType {
    type = pyAxisPointerType;
}

-(NSString *)getType {
    switch (type) {
        case PYAxisPointerTypeLine:
            return @"line";
        case PYAxisPointerTypeNone:
            return @"none";
        case PYAxisPointerTypeCross:
            return @"cross";
        case PYAxisPointerTypeShadow:
            return @"shadow";
    }
}

@end
