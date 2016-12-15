//
//  PYZoomEchartsView.h
//  iOS-Echarts
//
//  Created by Pluto Y on 16/4/5.
//  Copyright © 2016年 pluto-y. All rights reserved.
//

#import "PYEchartsView.h"

@interface PYZoomEchartsView : PYEchartsView

/**
 The min percent of the (end - start) of the dataZoom
 It depends the echarts will show the mininus percent of the whole view.
 */
@property (nonatomic, assign) float minPercent;

@end
