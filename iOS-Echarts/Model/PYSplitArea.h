//
//  PYSplitArea.h
//  iOS-Echarts
//
//  Created by Pluto Y on 16/4/12.
//  Copyright © 2016年 pluto-y. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PYAreaStyle.h"

@interface PYSplitArea : NSObject

@property (assign, nonatomic) BOOL show;
@property (assign, nonatomic) BOOL onGap;
@property (strong, nonatomic) PYAreaStyle *areaStyle;

@end
