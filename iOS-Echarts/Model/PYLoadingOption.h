//
//  PYLoadingOption.h
//  iOS-Echarts
//
//  Created by Pluto Y on 16/4/15.
//  Copyright © 2016年 pluto-y. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PYTextStyle.h"

@interface PYLoadingOption : NSObject

@property (strong, nonatomic) NSString *text;
@property (strong, nonatomic) id x;
@property (strong, nonatomic) id y;
@property (strong, nonatomic) PYTextStyle *textStyle;
@property (strong, nonatomic) id effect;
@property (strong, nonatomic) NSDictionary *effectOption;
@property (strong, nonatomic) NSNumber *progress;

@end
