//
//  LineDemoControllerViewController.h
//  iOS-Echarts
//
//  Created by Pluto-Y on 15/9/17.
//  Copyright (c) 2015年 pluto-y. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "PYEchartsView.h"
#import "PYZoomEchartsView.h"

@interface LineDemoController : UIViewController

@property (nonatomic, weak) IBOutlet PYZoomEchartsView *kEchartView;

@end
