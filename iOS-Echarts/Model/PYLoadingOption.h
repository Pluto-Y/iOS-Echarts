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

@property (nonatomic, copy) NSString *text;
@property (nonatomic, strong) id x;
@property (nonatomic, strong) id y;
@property (nonatomic, strong) PYTextStyle *textStyle;
@property (nonatomic, strong) id effect;
@property (nonatomic, copy) NSDictionary *effectOption;
@property (nonatomic, strong) NSNumber *progress;

@end
