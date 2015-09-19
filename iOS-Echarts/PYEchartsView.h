//
//  PYEchartsView.h
//  iOS-Echarts
//
//  Created by Pluto Y on 15/9/4.
//  Copyright (c) 2015年 Pluto Y. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PYEchartsView : UIWebView<UIWebViewDelegate>

@property (assign, nonatomic) UIEdgeInsets padding;

/**
 *  加载视图
 */
-(void)loadEcharts;

/**
 *  设置Echart的Option(最主要的跟Echart交互的参数)
 *
 *  @param option EChart的option
 */
-(void)setOption:(PYOption *)pyOption;

@end
