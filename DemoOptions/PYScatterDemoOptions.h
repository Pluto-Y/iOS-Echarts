//
//  PYScatterDemoOptions.h
//  iOS-Echarts
//
//  Created by Pluto Y on 9/13/16.
//  Copyright © 2016 pluto-y. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "iOS-Echarts.h"

@interface PYScatterDemoOptions : NSObject

+ (PYOption *)basicScatterOption;
+ (PYOption *)basicBubbleOption;
+ (PYOption *)largeScaleScatterOption;
+ (PYOption *)categoryScatterOption;
+ (PYOption *)timeDataOption;
+ (PYOption *)timeLineOption;
+ (PYOption *)scaleRoamingOption;
+ (PYOption *)scatterOption;

@end
