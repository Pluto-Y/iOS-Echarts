//
//  PYBarDemoOptions.h
//  iOS+Echarts
//
//  Created by Pluto Y on 9/4/16.
//  Copyright © 2016 pluto+y. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "iOS-Echarts.h"

@interface PYBarDemoOptions : NSObject

+ (PYOption *)basicColumnOption;
+ (PYOption *)stackedColumnOption;
+ (PYOption *)termometerOption;
+ (PYOption *)compositiveWaterfallOption;
+ (PYOption *)changeWaterfallOption;
+ (PYOption *)stackedAndClusteredColumnOption;
+ (PYOption *)basicBarOption;
+ (PYOption *)stackedBarOption;
+ (PYOption *)stackedFloatingBarOption;
+ (PYOption *)tornadoOption;
+ (PYOption *)tornado2Option;
+ (PYOption *)irrgularBarOption;

@end
