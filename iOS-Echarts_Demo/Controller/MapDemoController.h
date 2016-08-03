//
//  MapDemoController.h
//  iOS-Echarts
//
//  Created by Pluto-Y on 15/12/27.
//  Copyright © 2015年 pluto-y. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "PYEchartsView.h"

/**
 *  地图的Demo集合，主要用来封装官网中的Demo
 *  用来解释在iOS代码中如何展示该如何使用
 */
@interface MapDemoController : UIViewController<UITableViewDelegate, UITableViewDataSource>

@property (nonatomic, weak) IBOutlet PYEchartsView *yEchartView;
@property (nonatomic, weak) IBOutlet UITableView *yDemoMenusTb;

@end
