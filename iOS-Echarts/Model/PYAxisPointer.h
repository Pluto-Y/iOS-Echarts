//
//  PYAxisPointer.h
//  iOS-Echarts
//
//  Created by ChipSea on 15/9/15.
//  Copyright (c) 2015年 pluto-y. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef enum {
    PYAxisPointerTypeLine,
    PYAxisPointerTypeCross,
    PYAxisPointerTypeShadow,
    PYAxisPointerTypeNone
} PYAxisPointerType;

@interface PYAxisPointer : NSObject

@property (retain, nonatomic, readonly, getter=getType) NSString *type;
@property (retain, nonatomic) PYLineStyle *lineStyle;
@property (retain, nonatomic) PYLineStyle *crossStyle;
@property (retain, nonatomic) PYAreaStyle *shadowStyle;

/**
 *  设置坐标轴指示器
 *
 *  @param pyAxisPointerType 坐标轴指示器
 */
-(void)setPYAxisPointerType:(PYAxisPointerType) pyAxisPointerType;

@end
