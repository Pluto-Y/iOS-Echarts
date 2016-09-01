//
//  PYLineDemoOptions.h
//  iOS-Echarts
//
//  Created by Pluto Y on 9/1/16.
//  Copyright © 2016 pluto-y. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "iOS-Echarts.h"

@interface PYLineDemoOptions : NSObject

+ (PYOption *)standardLineOption;
+ (PYOption *)stackedLineOption;
+ (PYOption *)basicLineOption;
+ (PYOption *)basicAreaOption;
+ (PYOption *)stackedAreaOption;
+ (PYOption *)irregularLineOption;
+ (PYOption *)irregularLine2Option;
+ (PYOption *)lineOption;
+ (PYOption *)logarithmicOption;

@end
