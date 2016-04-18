//
//  PYNoDataLoadingOption.h
//  iOS-Echarts
//
//  Created by Pluto Y on 4/18/16.
//  Copyright © 2016 pluto-y. All rights reserved.
//

#import <Foundation/Foundation.h>

@class  PYTextStyle;

@interface PYNoDataLoadingOption : NSObject

@property (strong, nonatomic) NSString *text;
@property (strong, nonatomic) id x;
@property (strong, nonatomic) id y;
@property (strong, nonatomic) PYTextStyle *textStyle;
@property (strong, nonatomic) id effect;
@property (strong, nonatomic) NSDictionary *effectOption;
@property (strong, nonatomic) NSNumber *progress;

@end
