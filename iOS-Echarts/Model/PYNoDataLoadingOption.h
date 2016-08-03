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

@property (nonatomic, copy) NSString *text;
@property (nonatomic, strong) id x;
@property (nonatomic, strong) id y;
@property (nonatomic, strong) PYTextStyle *textStyle;
@property (nonatomic, strong) id effect;
@property (nonatomic, copy) NSDictionary *effectOption;
@property (nonatomic, strong) NSNumber *progress;

@end
