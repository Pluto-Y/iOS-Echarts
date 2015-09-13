//
//  PYLineStyle.h
//  iOS-Echarts
//
//  Created by Pluto Y on 15/9/7.
//  Copyright (c) 2015年 pluto-y. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef enum{
    PYLineStyleTypeSolid,   //线条样式
    PYLineStyleTypeDotted,  //线条样式
    PYLineStyleTypeDashed,  //线条样式
    PYLineStyleTypeCurve,   //树图
    PYLineStyleTypeBroken   //树图
}PYLineStyleType;

@interface PYLineStyle : NSObject

@property (retain, nonatomic) PYColor *color;
@property (retain, nonatomic, readonly) NSString *type;
@property (retain, nonatomic) NSNumber *width;
@property (retain, nonatomic) PYColor *shadowColor;
@property (retain, nonatomic) NSNumber *shadowBlur;
@property (retain, nonatomic) NSNumber *shadowOffsetX;
@property (retain, nonatomic) NSNumber *shadowOffsetY;

/**
 *  设置线条类型
 *
 *  @param pyLineStyleType 线条类型
 */
-(void)setLineStyleType:(PYLineStyleType)pyLineStyleType;

@end
